program fift;

uses
  Forms,
  fif in 'fif.pas' {Form1},
  about in 'about.pas' {Form2},
  Help in 'Help.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
