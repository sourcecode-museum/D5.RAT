unit uFrmClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TfrmClientes = class(TForm)
    Panel2: TPanel;
    lblNome: TLabel;
    lblEnd: TLabel;
    lblBairro: TLabel;
    lblFoneRes: TLabel;
    lblFoneCel: TLabel;
    lblCidade: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbeFone: TDBEdit;
    dbeNome: TDBEdit;
    dbeEnd: TDBEdit;
    dbeBairro: TDBEdit;
    dbeCid: TDBEdit;
    dbeUF: TDBEdit;
    dbeCep: TDBEdit;
    dbeContato: TDBEdit;
    Panel1: TPanel;
    DBGrid: TDBGrid;
    tblClientes: TTable;
    dsClientes: TDataSource;
    Panel3: TPanel;
    edtBuscaNome: TEdit;
    Label3: TLabel;
    dbtID: TDBText;
    Panel4: TPanel;
    bt_Novo: TSpeedButton;
    bt_Gravar: TSpeedButton;
    bt_Cancelar: TSpeedButton;
    bt_Excluir: TSpeedButton;
    Panel5: TPanel;
    dbNavigator: TDBNavigator;
    tblClientesID: TAutoIncField;
    tblClientesCLIDTCadastro: TDateField;
    tblClientesCLINome: TStringField;
    tblClientesCLIContato: TStringField;
    tblClientesCLIEnd: TStringField;
    tblClientesCLIBairro: TStringField;
    tblClientesCLICidade: TStringField;
    tblClientesCLIUF: TStringField;
    tblClientesCLICEP: TStringField;
    tblClientesCLIFone: TStringField;
    dbtDTCad: TDBText;
    Label4: TLabel;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblClientesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure edtBuscaNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure bt_ExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsClientesStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Abrir () : LongInt;
  end;

var
  frmClientes: TfrmClientes;
  mID : Longint;

implementation

{$R *.DFM}

procedure TfrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblClientes.Close;
end;

procedure TfrmClientes.tblClientesAfterScroll(DataSet: TDataSet);
begin
  if dsClientes.State in [dsBrowse] then mID := tblClientes.FieldValues['ID'];
  edtBuscaNome.Text  :=  dbeNome.Text;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  tblClientes.Open;
end;

procedure TfrmClientes.edtBuscaNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tblClientes.FindNearest([edtBuscaNome.Text]);
end;

function TfrmClientes.Abrir(): Longint;
begin
  tblClientes.Open;
  ShowModal;
  Result := mID;
end;

procedure TfrmClientes.bt_NovoClick(Sender: TObject);
begin
  tblClientes.Insert;
  tblClientes.FieldValues['CLIDTCadastro'] := Date;
end;

procedure TfrmClientes.bt_GravarClick(Sender: TObject);
begin
  tblClientes.Post;
  mID := tblClientes.FieldValues['ID'];
end;

procedure TfrmClientes.bt_CancelarClick(Sender: TObject);
begin
  tblClientes.Cancel;
end;

procedure TfrmClientes.bt_ExcluirClick(Sender: TObject);
begin
  MessageBeep(0);

  if MessageDlg( 'Confirma a EXCLUSÃO do registro.',
                mtConfirmation, [mbYes, mbNo], 0 ) <> mrYes then Abort;


  tblClientes.Delete;
 // tblClientes.CommitUpdates;    // Grava definitivamente
end;

procedure TfrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;

  // Teclas para Inclui/ Gravar/ Cancelar/ Excluir

  if bt_Novo.Enabled and ( Key = VK_F5 ) then
    bt_NovoClick( nil )
  else if bt_Gravar.Enabled and ( Key = VK_F6 ) then
    bt_GravarClick( nil )
  else if bt_Cancelar.Enabled and ( Key = VK_F7 ) then
    bt_CancelarClick( nil )
  else if bt_Excluir.Enabled and ( Key = VK_F8 ) then
    bt_ExcluirClick( nil );
end;

procedure TfrmClientes.dsClientesStateChange(Sender: TObject);
var
  bStateBrowse : Boolean;
begin
  bStateBrowse := False;
  if dsClientes.State in [dsBrowse] then bStateBrowse := True;

  edtBuscaNome.Enabled:= bStateBrowse;
  DBGrid.Enabled      := bStateBrowse;
  dbNavigator.Enabled := bStateBrowse;
  bt_Excluir.Enabled  := bStateBrowse;
  bt_Novo.Enabled     := bStateBrowse;

  bt_Cancelar.Enabled := not bStateBrowse;
  bt_Gravar.Enabled   := not bStateBrowse;
end;

end.
