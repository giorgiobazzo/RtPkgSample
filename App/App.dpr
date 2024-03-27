program App;

uses
  Vcl.Forms,
  MyUnit, //From TrPartUnits.bpl, if remove, breakpoint works in win32 and win64
  AppForm in 'AppForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize; //Breakpoint here: on win32 is ok, but 64 the breakpoint dont stop!
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
