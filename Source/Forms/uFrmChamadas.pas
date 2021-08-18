unit uFrmChamadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, RXDBCtrl, ToolEdit, CurrEdit,
  Db, DBTables, uGlobal;

type
  TfrmChamadas = class(TForm)
    pnlCampos: TPanel;
    lblNome: TLabel;
    lblEnd: TLabel;
    Label2: TLabel;
    dbeDesc: TDBEdit;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    dbeHora: TDBEdit;
    dbeTecNome: TDBEdit;
    dbeCliNome: TDBEdit;
    dbeCli_ID: TRxDBCalcEdit;
    cmbTipo: TComboBox;
    cmbArea: TComboBox;
    dbeTec_ID: TRxDBCalcEdit;
    dbeTipo: TDBEdit;
    dbeArea: TDBEdit;
    tblCli: TTable;
    tblCha: TTable;
    tblTec: TTable;
    dsCha: TDataSource;
    dsCli: TDataSource;
    dsTec: TDataSource;
    tblTecTECNome: TStringField;
    tblCliCLINome: TStringField;
    tblTecID: TAutoIncField;
    tblCliID: TAutoIncField;
    tblChaID: TAutoIncField;
    tblChaCLI_ID: TIntegerField;
    tblChaTEC_ID: TIntegerField;
    tblChaCHMData: TDateField;
    tblChaCHMHora: TTimeField;
    tblChaCHMTipo: TStringField;
    tblChaCHMArea: TStringField;
    tblChaCHMDesc: TStringField;
    tblChaCHMFinalizado: TBooleanField;
    tblChaCHMAvaliado: TBooleanField;
    tblChaCHMConcluido: TBooleanField;
    tblChaCHMValor: TCurrencyField;
    Shape1: TShape;
    lblOperacao: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure dbeCli_IDButtonClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dbeTec_IDButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbTipoClick(Sender: TObject);
    procedure tblChaAfterScroll(DataSet: TDataSet);
    procedure cmbAreaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenTables;
  public
    { Public declarations }
    function Incluir() : Longint;
    function Alterar(pID : Longint) : Boolean;
    function Deletar(pID : Longint) : Boolean;
  end;

var
  frmChamadas: TfrmChamadas;

  mbConfirmado  : Boolean;
  mID           : Longint;
  miOperacao    : Integer;

implementation
  uses uFrmClientes, uFrmTecnicos;
{$R *.DFM}

procedure TfrmChamadas.dbeCli_IDButtonClick(Sender: TObject);
var
  iID : Longint;
begin
  Application.CreateForm(TfrmClientes,frmClientes);
  iID := frmClientes.Abrir;
  frmClientes.Free;

  dbeCli_ID.Value := iID;

  dbeTec_ID.SetFocus;

  Abort;  //Para não invocar a Calculadora
end;

procedure TfrmChamadas.dbeTec_IDButtonClick(Sender: TObject);
var
  iID : Longint;
begin
  Application.CreateForm(TfrmTecnicos,frmTecnicos);
  iID := frmTecnicos.Abrir;
  frmTecnicos.Free;
  dbeTec_ID.Value := iID;
  dbeDesc.SetFocus;

  Abort;  //Para não invocar a Calculadora
end;

function TfrmChamadas.Incluir(): Longint;
begin
  Self.OpenTables;

  miOperacao  := 1;
  lblOperacao.Caption := 'Operação de Inclusão';
  tblCha.Insert;
  ShowModal;

  Result := mID;
end;

function TfrmChamadas.Alterar(pID : Longint): Boolean;
begin
  Self.OpenTables;

  miOperacao  :=  2;
  lblOperacao.Caption := 'Operação de Alteração';
  with tblCha do begin
    IndexFieldNames := 'ID';
    FindKey([pID]);
    Edit;
  end;

  ShowModal;

  Result := mbConfirmado;
end;

function TfrmChamadas.Deletar(pID : Longint): Boolean;
begin
  Self.OpenTables;

  miOperacao  :=  3;
  lblOperacao.Caption := 'Operação de Exclusão';
  pnlCampos.Enabled := False;

  with tblCha do begin
    IndexFieldNames := 'ID';
    FindKey([pID]);
    Edit;
  end;

  ShowModal;

  Result := mbConfirmado;
end;

procedure TfrmChamadas.btnCancelarClick(Sender: TObject);
begin

  mbConfirmado := False;
  tblCha.Cancel;

  Close;
end;

procedure TfrmChamadas.btnConfirmarClick(Sender: TObject);
begin
  try
    case miOperacao of
      1 : begin   //Incluir
            tblCha.Post;
            mID := tblCha.FieldValues['ID'];
          end;

      2 : begin   //Alterar
            tblCha.Post;
          end;

      3 : begin   //Excluir
            tblCha.Delete;
          end;
    end;

  except
    Abort;
  end;

  mbConfirmado := True;
  Close;
end;

procedure TfrmChamadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblCha.close;
  tblCli.Close;
  tblTec.Close;
end;

procedure TfrmChamadas.OpenTables;
begin
  tblCha.Open;
  tblCli.Open;
  tblTec.Open;
end;

procedure TfrmChamadas.cmbTipoClick(Sender: TObject);
var
  sIni : string;
begin
  sIni := Copy(cmbTipo.Text,1,1);
  dbeTipo.Text := sIni;
end;

procedure TfrmChamadas.tblChaAfterScroll(DataSet: TDataSet);
var
  sValue : string;
begin

  try
    sValue := dsCha.DataSet['CHMTipo'];
  except
    sValue := '';
  end;

  if sValue = 'E' then
    cmbTipo.Text := 'Eventual'
  else if sValue = 'G' then
    cmbTipo.Text := 'Garantia'
  else if sValue = 'B' then
    cmbTipo.Text := 'Bonificado'
  else
    cmbTipo.Text := '';

  try
    sValue := dsCha.DataSet['CHMArea'];
  except
    sValue := '';
  end;

  if sValue = 'E' then
    cmbArea.Text := 'Equipamento'
  else if sValue = 'S' then
    cmbArea.Text := 'Sistema'
  else if sValue = 'R' then
    cmbArea.Text := 'Rede'
  else if sValue = 'N' then
    cmbArea.Text := 'NetSeg'
  else
    cmbArea.Text := '';
end;

procedure TfrmChamadas.cmbAreaClick(Sender: TObject);
var
  sIni : string;
begin
  sIni := Copy(cmbArea.Text,1,1);
  dbeArea.Text := sIni;
end;

procedure TfrmChamadas.FormCreate(Sender: TObject);
begin
  tblCli.DatabaseName := uGlobal.gsPathDataBase;
  tblCha.DatabaseName := uGlobal.gsPathDataBase;
  tblTec.DatabaseName := uGlobal.gsPathDataBase;
end;

end.
