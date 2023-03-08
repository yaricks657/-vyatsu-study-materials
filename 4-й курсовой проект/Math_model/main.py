import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import Charts as ch
from sklearn.metrics import r2_score
from sklearn.feature_selection import RFE
from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error
from sklearn.ensemble import ExtraTreesRegressor
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import cross_val_score
from scipy import stats
from sklearn.ensemble import RandomForestRegressor
from xgboost import XGBRegressor


# ch.players_effectiveness('Shaquille O' + "'" + 'Neal', "D", "AD", "E")
# ch.average_decade_stats(2010, 2000, '2PA')
# ch.average_pts_stats(1946, 76, 'PTS')
# ch.matrix_correlogram('LeBron James')
# ch.player_position_efficient(1977, "AST")


# Приводим таблицу в порядок

df = pd.read_excel('pred.xlsx')
df.pop('Rk')

df['Fouls'] = df['PF']
df.pop('PF')
dum1 = pd.get_dummies(df['Pos'])
df = pd.concat([df, dum1], axis=1)
df.pop('Pos')

player_team = df.Tm.unique()
tm_dict = dict(zip(player_team, range(len(player_team))))
df = df.replace({'Tm': tm_dict})

df.pop('Tm')
df = df.set_index('Player')

cols_at_end = ['TRB', 'AST', 'STL', 'BLK', 'PTS']
df = df[[c for c in df if c not in cols_at_end] + [c for c in cols_at_end if c in df]]

cols = []
co = df.columns
for col in co:
    cols = cols + [col]
dum = ['TRB', 'AST', 'STL', 'BLK']
for du in dum:
    cols.remove(du)

    # Стандартизация данных для модели
sc2 = StandardScaler()
for col in cols:
    df[[col]] = sc2.fit_transform(df[[col]])
    # df['PTS'] = sc2.fit_transform(df['PTS'])
sc3 = StandardScaler()
df[['BLK']] = sc3.fit_transform(df[['BLK']])
sc4 = StandardScaler()
df[['STL']] = sc4.fit_transform(df[['STL']])
sc5 = StandardScaler()
df[['AST']] = sc5.fit_transform(df[['AST']])
sc6 = StandardScaler()
df[['TRB']] = sc6.fit_transform(df[['TRB']])

df = df.fillna(0)

# table2021 = norm_table('2020-2021.xlsx')
# table2022 = norm_table('2021-2022.xlsx')

# Конечное представление табличек
df3 = df[0:445]
df4 = df[445:]

#print(df3, df4)

# Тестовые наборы данных
train = df3  # [0:(round(len(df3)*.8))]
test = df4  # [0:(round(len(df3)*.8))]
trains = np.array_split(train, [31], axis=1)
train_x = trains[0]
train_y = trains[0]
tests = np.array_split(test, [31], axis=1)
test_x = tests[0]
test_y = tests[0]

d = df3
# Попарная корреляция столбцов
corr = d.corr()

mask = np.zeros_like(corr, dtype=np.bool)
mask[np.triu_indices_from(mask)] = True

f, ax = plt.subplots(figsize=(11, 9))

cmap = sns.diverging_palette(100, 275, as_cmap=True)
sns.heatmap(corr, mask=mask, cmap=cmap, vmax=.3, center=0, square=True, linewidths=.01, cbar_kws={"shrink": .5})
plt.show()

# Сокращение строк
model = LinearRegression()
rfe = RFE(model, n_features_to_select=25)
reg = rfe.fit(train_x.values, test_x.PTS.values)
#print(reg.support_)
#print(reg.ranking_)
#print()

# reg = ExtraTreesRegressor(min_samples_split=4, n_estimators=1000,bootstrap=True).fit(train_x.values, train_y.PTS.values)
# reg.feature_importances_


def adj_r2_score(r2, n, k):
    return 1 - ((1 - r2) * ((n - 1) / (n - k - 1)))


reg = LinearRegression().fit(train_x.values, test_x.PTS.values)
# reg.score(train_x.values, train_y.PTS.values)
train_y2 = train_y.copy(deep=True)
test_y2 = test_y.copy(deep=True)

train_y2['prediction'] = reg.predict(train_x.values)
test_y2['prediction'] = reg.predict(test_x.values)
train_y2['PTS'] = train_y2['PTS']
test_y2['PTS'] = test_y2['PTS']
train_y2['PTS'].plot(figsize=(15, 7), title='Linear Regression Training', fontsize=14, label='True Value')
train_y2['prediction'].plot(figsize=(15, 7), title='Linear Regression Training', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj train r^2 = ' + str(
 #   adj_r2_score((r2_score(train_y2.PTS, train_y2.prediction)), train_x.shape[0], train_x.shape[1])))
#print('train mse = ' + str(mean_squared_error(train_y2.PTS, train_y2.prediction)))
test_y2['PTS'].plot(figsize=(15, 7), title='Linear Regression Testing', fontsize=14, label='True Value')
test_y2['prediction'].plot(figsize=(15, 7), title='Linear Regression Testing', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj test r^2 = ' + str(
 #   adj_r2_score((r2_score(test_y2.PTS, test_y2.prediction)), train_x.shape[0], train_x.shape[1])))
#print('test mse = ' + str(mean_squared_error(test_y2.PTS, test_y2.prediction)))

test_y2 = test_y2[test_y2['prediction'] > 0]
test_y2.loc[test_y2[['prediction', 'PTS']].max(axis=1) / test_y2[['prediction', 'PTS']].min(
    axis=1) >= 2, 'Pred'] = 'Very Inaccurate'
test_y2.loc[
    test_y2[['prediction', 'PTS']].max(axis=1) / test_y2[['prediction', 'PTS']].min(axis=1) < 2, 'Pred'] = 'Inaccurate'
test_y2.loc[
    test_y2[['prediction', 'PTS']].max(axis=1) / test_y2[['prediction', 'PTS']].min(axis=1) < 1.5, 'Pred'] = 'Accurate'
test_y2.loc[test_y2[['prediction', 'PTS']].max(axis=1) / test_y2[['prediction', 'PTS']].min(
    axis=1) < 1.2, 'Pred'] = 'Very Accurate'
fig, ax1 = plt.subplots(figsize=(15, 7))
ax = sns.scatterplot(x="PTS", y="prediction", hue="Pred", data=test_y2)
ax.set_title("Linear Regression Prediction Analysis", fontsize=24)
ax.set_xlabel("True Value", fontsize=20)
ax.set_ylabel("Prediction", fontsize=20)
ax.tick_params(labelsize=16)
plt.show()
print("This model is able to relatively accurately predict " + str(
    round(100 * len(test_y2[test_y2['Pred'] == 'Accurate']) / len(test_y2), 2)) + "% PTS of NBA Players.")
print("This model is able to very accurately predict " + str(
    round(100 * len(test_y2[test_y2['Pred'] == 'Very Accurate']) / len(test_y2), 2)) + "% PTS of NBA players.")


reg = ExtraTreesRegressor(min_samples_split=22, n_estimators=1000,max_depth=4, bootstrap=True)
reg.fit(train_x.values, test_x.PTS.values)

train_y2 = train_y.copy(deep=True)
test_y2 = test_y.copy(deep=True)
train_y2['prediction'] = reg.predict(train_x.values)
test_y2['prediction'] = reg.predict(test_x.values)
train_y2['PTS'] = train_y2['PTS']
test_y2['PTS'] = test_y2['PTS']
train_y2['PTS'].plot(figsize=(15,7), title= 'Extra Trees Training', fontsize=14, label='True Value')
train_y2['prediction'].plot(figsize=(15,7), title= 'Extra Trees Training', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj train r^2 = ' + str(adj_r2_score((r2_score(train_y2.PTS, train_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('train mse = ' + str(mean_squared_error(train_y2.PTS, train_y2.prediction)))
test_y2['PTS'].plot(figsize=(15,7), title= 'Extra Trees Testing', fontsize=14, label='True Value')
test_y2['prediction'].plot(figsize=(15,7), title= 'Extra Trees Testing', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj test r^2 = ' + str(adj_r2_score((r2_score(test_y2.PTS, test_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('test mse = ' + str(mean_squared_error(test_y2.PTS, test_y2.prediction)))

test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) >= 2, 'Pred'] = 'Very Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 2, 'Pred'] = 'Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.5, 'Pred'] = 'Accurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.2, 'Pred'] = 'Very Accurate'
fig, ax1 = plt.subplots(figsize=(15, 7))
ax = sns.scatterplot(x="PTS", y="prediction", hue="Pred", data=test_y2)
ax.set_title("Extra Trees Prediction Analysis", fontsize=24)
ax.set_xlabel("True Value",fontsize=20)
ax.set_ylabel("Prediction",fontsize=20)
ax.tick_params(labelsize=16)
plt.show()
print ("This model is able to relatively accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Accurate'])/len(test_y2),2)) + "% of NBA Players.")
print ("This model is able to very accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Very Accurate'])/len(test_y2),2)) + "% of NBA Players.")

reg = RandomForestRegressor(n_estimators=1000, max_depth=5, min_samples_split=14)
reg.fit(train_x.values, test_x.PTS.values)

train_y2 = train_y.copy(deep=True)
test_y2 = test_y.copy(deep=True)
train_y2['prediction'] = reg.predict(train_x.values)
test_y2['prediction'] = reg.predict(test_x.values)
train_y2['PTS'] = train_y2['PTS']
test_y2['PTS'] = test_y2['PTS']
train_y2['PTS'].plot(figsize=(15,7), title= 'Random Forrest Training', fontsize=14, label='True Value')
train_y2['prediction'].plot(figsize=(15,7), title= 'Random Forrest Training', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj train r^2 = ' + str(adj_r2_score((r2_score(train_y2.NBAPTS, train_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('train mse = ' + str(mean_squared_error(train_y2.NBAPTS, train_y2.prediction)))
test_y2['PTS'].plot(figsize=(15,7), title= 'Random Forrest Testing', fontsize=14, label='True Value')
test_y2['prediction'].plot(figsize=(15,7), title= 'Random Forrest Testing', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj test r^2 = ' + str(adj_r2_score((r2_score(test_y2.NBAPTS, test_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('test mse = ' + str(mean_squared_error(test_y2.NBAPTS, test_y2.prediction)))

test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) >= 2, 'Pred'] = 'Very Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 2, 'Pred'] = 'Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.5, 'Pred'] = 'Accurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.2, 'Pred'] = 'Very Accurate'
fig, ax1 = plt.subplots(figsize=(15, 7))
ax = sns.scatterplot(x="PTS", y="prediction", hue="Pred", data=test_y2)
ax.set_title("Random Forrest Prediction Analysis", fontsize=24)
ax.set_xlabel("True Value",fontsize=20)
ax.set_ylabel("Prediction",fontsize=20)
ax.tick_params(labelsize=16)
plt.show()
print ("This model is able to relatively accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Accurate'])/len(test_y2),2)) + "% of NBA Players.")
print ("This model is able to very accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Very Accurate'])/len(test_y2),2)) + "% of NBA Players.")

reg = XGBRegressor(n_estimators=1000, max_depth=16, reg_lambda=.48, gamma=.3, booster='gblinear')
reg.fit(train_x.values, test_x.PTS.values)

train_y2 = train_y.copy(deep=True)
test_y2 = test_y.copy(deep=True)
train_y2['prediction'] = reg.predict(train_x.values)
test_y2['prediction'] = reg.predict(test_x.values)
train_y2['PTS'] = train_y2['PTS']
test_y2['PTS'] = test_y2['PTS']
train_y2['PTS'].plot(figsize=(15,7), title= 'XGBoost Training', fontsize=14, label='True Value')
train_y2['prediction'].plot(figsize=(15,7), title= 'XGBoost Training', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj train r^2 = ' + str(adj_r2_score((r2_score(train_y2.NBAPTS, train_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('train mse = ' + str(mean_squared_error(train_y2.NBAPTS, train_y2.prediction)))
test_y2['PTS'].plot(figsize=(15,7), title= 'XGBoost Testing', fontsize=14, label='True Value')
test_y2['prediction'].plot(figsize=(15,7), title= 'XGBoost Testing', fontsize=14, label='Prediction')
plt.legend(loc='lower left')
plt.show()
#print('adj test r^2 = ' + str(adj_r2_score((r2_score(test_y2.NBAPTS, test_y2.prediction)),train_x.shape[0], train_x.shape[1])))
#print('test mse = ' + str(mean_squared_error(test_y2.NBAPTS, test_y2.prediction)))

test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) >= 2, 'Pred'] = 'Very Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 2, 'Pred'] = 'Inaccurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.5, 'Pred'] = 'Accurate'
test_y2.loc[test_y2[['prediction','PTS']].max(axis=1)/test_y2[['prediction','PTS']].min(axis=1) < 1.2, 'Pred'] = 'Very Accurate'
fig, ax1 = plt.subplots(figsize=(15, 7))
ax = sns.scatterplot(x="PTS", y="prediction", hue="Pred", data=test_y2)
ax.set_title("XGBoost Prediction Analysis", fontsize=24)
ax.set_xlabel("True Value",fontsize=20)
ax.set_ylabel("Prediction",fontsize=20)
ax.tick_params(labelsize=16)
plt.show()
print ("This model is able to relatively accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Accurate'])/len(test_y2),2)) + "% of NBA Players.")
print ("This model is able to very accurately predict " + str(round(100*len(test_y2[test_y2['Pred'] == 'Very Accurate'])/len(test_y2),2)) + "% of NBA Players.")

# df3.to_html('table.html')
