unit uFrmTecnicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, DBTables;

type
  TfrmTecnicos = class(TForm)
    Panel2: TPanel;
    lblNome: TLabel;
    Label2: TLabel;
    dbeNome: TDBEdit;
    dbeApelido: TDBEdit;
    dsTec: TDataSource;
    tblTec: TTable;
    Panel1: TPanel;
    DBGrid: TDBGrid;
    Panel4: TPanel;
    bt_Novo: TSpeedButton;
    bt_Gravar: TSpeedButton;
    bt_Cancelar: TSpeedButton;
    bt_Excluir: TSpeedButton;
    Panel5: TPanel;
    dbNavigator: TDBNavigator;
    Panel3: TPanel;
    edtBuscaNome: TEdit;
    Shape1: TShape;
    dbtDTCad: TDBText;
    Label4: TLabel;
    dbtID: TDBText;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtBuscaNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblTecAfterScroll(DataSet: TDataSet);
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_ExcluirClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsTecStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Abrir () : LongInt;
  end;

var
  frmTecnicos: TfrmTecnicos;
  mID : Longint;
implementation

{$R *.DFM}

procedure TfrmTecnicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tblTec.Close;
end;

function TfrmTecnicos.Abrir(): Longint;
begin
  tblTec.Open;
  ShowModal;
  Result := mID;
end;

procedure TfrmTecnicos.FormShow(Sender: TObject);
begin
  tblTec.Open;
end;

procedure TfrmTecnicos.edtBuscaNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tblTec.FindNearest([edtBuscaNome.Text]);
end;

procedure TfrmTecnicos.tblTecAfterScroll(DataSet: TDataSet);
begin
  if dsTec.State in [dsBrowse] then mID := tblTec.FieldValues['ID'];

  edtBuscaNome.Text  :=  dbeNome.Text;
end;

procedure TfrmTecnicos.bt_NovoClick(Sender: TObject);
begin
  tblTec.Insert;
  tblTec.FieldValues['TECDTCad'] := Date;
end;

procedure TfrmTecnicos.bt_ExcluirClick(Sender: TObject);
begin
  MessageBeep(0);

  if MessageDlg( 'Confirma a EXCLUSÃO do registro.',
                mtConfirmation, [mbYes, mbNo], 0 ) <> mrYes then Abort;


  tblTec.Delete;
 // tblTec.CommitUpdates;    // Grava definitivamente

end;

procedure TfrmTecnicos.bt_GravarClick(Sender: TObject);
begin
  tblTec.Post;
  mID := tblTec.FieldValues['ID'];
end;

procedure TfrmTecnicos.bt_CancelarClick(Sender: TObject);
begin
  tblTec.Cancel;
end;

procedure TfrmTecnicos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmTecnicos.dsTecStateChange(Sender: TObject);
var
  bStateBrowse : Boolean;
begin
  bStateBrowse := False;
  if dsTec.State in [dsBrowse] then bStateBrowse := True;

  edtBuscaNome.Enabled:= bStateBrowse;
  DBGrid.Enabled      := bStateBrowse;
  dbNavigator.Enabled := bStateBrowse;
  bt_Excluir.Enabled  := bStateBrowse;
  bt_Novo.Enabled     := bStateBrowse;

  bt_Cancelar.Enabled := not bStateBrowse;
  bt_Gravar.Enabled   := not bStateBrowse;

end;

end.
