program RAT;

uses
  Forms,
  uFrmMain in 'uFrmMain.pas' {frmMain},
  uFrmChamadas in 'uFrmChamadas.pas' {frmChamadas},
  uFrmAtend in 'uFrmAtend.pas' {frmAtend},
  uFrmClientes in 'uFrmClientes.pas' {frmClientes},
  uFrmTecnicos in 'uFrmTecnicos.pas' {frmTecnicos};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'RAT - Relatório de Atendimento Técnico';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
