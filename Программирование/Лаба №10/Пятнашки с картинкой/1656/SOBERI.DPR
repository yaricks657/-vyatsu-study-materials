program soberi;

uses
  Forms,
  soberi_ in 'soberi_.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '?????? ????????';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
