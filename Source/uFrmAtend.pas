unit uFrmAtend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, StdCtrls, Buttons, CurrEdit, RXDBCtrl, ToolEdit,
  Mask, DBCtrls, ExtCtrls;

type
  TfrmAtend = class(TForm)
    pnlCampos: TPanel;
    lblEnd: TLabel;
    Shape1: TShape;
    lblOperacao: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeDesc: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    dbeHora: TDBEdit;
    dbeTecNome: TDBEdit;
    dbeTec_ID: TRxDBCalcEdit;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    tblAtend: TTable;
    tblTec: TTable;
    tblTecTECNome: TStringField;
    tblTecID: TAutoIncField;
    dsAtend: TDataSource;
    dsTec: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    tblAtendID: TAutoIncField;
    tblAtendCHA_ID: TIntegerField;
    tblAtendTEC_ID: TIntegerField;
    tblAtendATDDataAtual: TDateField;
    tblAtendATDHoraAtual: TTimeField;
    tblAtendATDDataPrev: TDateField;
    tblAtendATDHoraPrev: TTimeField;
    tblAtendATDDescChamada: TStringField;
    procedure dbeTec_IDButtonClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OpenTables;

  public
    { Public declarations }
    function Incluir(pCha_ID : Longint) : Longint;
    function Alterar(pID : Longint) : Boolean;
    function Deletar(pID : Longint) : Boolean;
  end;

var
  frmAtend: TfrmAtend;

  mbConfirmado  : Boolean;
  mID           : Longint;
  miOperacao    : Integer;
implementation
  uses  uFrmTecnicos;
{$R *.DFM}

procedure TfrmAtend.dbeTec_IDButtonClick(Sender: TObject);
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

function TfrmAtend.Incluir(pCha_ID : Longint): Longint;
begin
  Self.OpenTables;

  miOperacao  := 1;
  lblOperacao.Caption := 'Operação de Inclusão';
  tblAtend.Insert;
  tblAtend.FieldByName('CHA_ID').asInteger := pCha_ID;
  ShowModal;

  Result := mID;
end;

function TfrmAtend.Alterar(pID : Longint): Boolean;
begin
  Self.OpenTables;

  miOperacao  :=  2;
  lblOperacao.Caption := 'Operação de Alteração';
  with tblAtend do begin
    IndexFieldNames := 'ID';
    FindKey([pID]);
    Edit;
  end;

  ShowModal;

  Result := mbConfirmado;
end;

function TfrmAtend.Deletar(pID : Longint): Boolean;
begin
  Self.OpenTables;

  miOperacao  :=  3;
  lblOperacao.Caption := 'Operação de Exclusão';
  pnlCampos.Enabled := False;

  with tblAtend do begin
    IndexFieldNames := 'ID';
    FindKey([pID]);
    Edit;
  end;

  ShowModal;

  Result := mbConfirmado;
end;
procedure TfrmAtend.btnCancelarClick(Sender: TObject);
begin
  mbConfirmado := False;
  tblAtend.Cancel;

  Close;
end;

procedure TfrmAtend.btnConfirmarClick(Sender: TObject);
begin
 try
    case miOperacao of
      1 : begin   //Incluir
            tblAtend.Post;
            mID := tblAtend.FieldValues['ID'];
          end;

      2 : begin   //Alterar
            tblAtend.Post;
          end;

      3 : begin   //Excluir
            tblAtend.Delete;
          end;
    end;

  except
    Abort;
  end;

  mbConfirmado := True;
  Close;
end;

procedure TfrmAtend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblAtend.close;
  tblTec.Close;
end;

procedure TfrmAtend.OpenTables;
begin
  tblAtend.Open;
  tblTec.Open;
end;

end.
