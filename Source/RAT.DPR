program RAT;

uses
  Forms,
  uFrmMain in 'Forms/uFrmMain.pas' {frmMain},
  uFrmChamadas in 'Forms/uFrmChamadas.pas' {frmChamadas},
  uFrmAtend in 'Forms/uFrmAtend.pas' {frmAtend},
  uFrmClientes in 'Forms/uFrmClientes.pas' {frmClientes},
  uFrmTecnicos in 'Forms/uFrmTecnicos.pas' {frmTecnicos},
  uGlobal in 'Units/uGlobal.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'RAT - Relatório de Atendimento Técnico';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
