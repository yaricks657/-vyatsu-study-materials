import base64
import rsa
import sqlite3
import flask

PUBKEY_PATH = 'public.pem'

with open(PUBKEY_PATH, 'rb') as keyfile:
    pubkey = rsa.PublicKey.load_pkcs1(keyfile.read())

app = flask.Flask(__name__)
DATABASE = 'database.db'


# Функция для создания соединения с БД
def get_db():
    db = getattr(flask.g, '_database', None)
    if db is None:
        db = flask.g._database = sqlite3.connect(DATABASE)
    return db


# Функция для закрытия соединения с базой данных
@app.teardown_appcontext
def close_connection(exception):
    db = getattr(flask.g, '_database', None)
    if db is not None:
        db.close()


# Метод GET для получения данных из БД
@app.route('/check', methods=['GET'])
# @transact
def check():
    id_ = flask.request.args.get('id', None)
    if id_ is None:
        return 'FALSE'

    # Получаем соединение с БД
    db = get_db()
    cursor = db.cursor()

    # Выполняем запрос к БД
    cursor.execute('SELECT id FROM ids WHERE id=?', (id_,))
    row = cursor.fetchone()
    if row is None:
        return 'FALSE'
    return 'TRUE'


# Метод пост для отправки данных в БД
@app.route('/register', methods=['POST'])
# @transact
def register():
    if not flask.request.is_json:
        return 'FAILED'

    # Получаем данные из тела запроса
    data = flask.request.get_json()
    id_ = data.get('id')
    signature = base64.b64decode(data.get('signature'))
    if id_ is None or signature is None:
        return 'FAILED'

    # Получаем соединение с БД
    db = get_db()
    cursor = db.cursor()

    # Выполняем запрос к БД
    try:
        rsa.verify(id_.encode('utf-8'), signature, pubkey)

        cursor.execute('INSERT OR IGNORE INTO ids VALUES (?)', (id_,))
        db.commit()
        return 'OK'
    except sqlite3.IntegrityError:
        return 'Value already exists in the database.', 400


# Создание таблицы с id-процессоров
def create_table():
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute('CREATE TABLE IF NOT EXISTS ids (id INTEGER PRIMARY KEY)')
    conn.commit()
    conn.close()


# Запуск сервера
if __name__ == '__main__':
    create_table()
    app.run(host='0.0.0.0', port=5000)
