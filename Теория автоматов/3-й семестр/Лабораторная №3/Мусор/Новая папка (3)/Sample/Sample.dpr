program Sample;

uses
  Forms,
  Main in 'Main.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Sample';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
