unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Menus, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids, Db, StdCtrls,
  Mask, DBTables;

type
  TfrmMain = class(TForm)
    pgcAbas: TPageControl;
    MainMenu1: TMainMenu;
    menuCadastros: TMenuItem;
    mnuClientes: TMenuItem;
    mnuTecnicos: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    AbaPendentes: TTabSheet;
    menuRelatorios: TMenuItem;
    mnuRelRat: TMenuItem;
    mnuRelPendencias: TMenuItem;
    pnlChamadas: TPanel;
    abaRetorno: TTabSheet;
    abaFinanceiro: TTabSheet;
    abaConcluido: TTabSheet;
    Panel5: TPanel;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    Panel22: TPanel;
    Panel24: TPanel;
    Label35: TLabel;
    grpAvalAtend: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    dbeDescChamada: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    dbeDescTec: TDBEdit;
    dtsChamadas: TDataSource;
    tblChamadas: TTable;
    tblAtend: TTable;
    tblAtendID: TAutoIncField;
    tblAtendCHA_ID: TIntegerField;
    tblAtendTEC_ID: TIntegerField;
    tblAtendATDDataAtual: TDateField;
    tblAtendATDHoraAtual: TTimeField;
    tblAtendATDDataPrev: TDateField;
    tblAtendATDHoraPrev: TTimeField;
    tblAtendATDAvalidado: TBooleanField;
    tblAtendATDAvalTec: TStringField;
    tblAtendATDAvalEmp: TStringField;
    dtsAtend: TDataSource;
    tblClientes: TTable;
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
    dtsClientes: TDataSource;
    tblTecnicos: TTable;
    dtsTecnicos: TDataSource;
    Panel2: TPanel;
    spbRetAvaliado: TSpeedButton;
    spdRetPendente: TSpeedButton;
    spbAddChamada: TSpeedButton;
    spbEdtChamada: TSpeedButton;
    spbPenFinalizar: TSpeedButton;
    Panel1: TPanel;
    spbFinConcluido: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    Panel26: TPanel;
    GridAtend: TDBGrid;
    Panel7: TPanel;
    menuLocalizar: TMenuItem;
    Localizar1: TMenuItem;
    spbDelChamada: TSpeedButton;
    spbConDelete: TSpeedButton;
    LocalizarAtendimento1: TMenuItem;
    N2: TMenuItem;
    Clientes1: TMenuItem;
    Tcnicos1: TMenuItem;
    N3: TMenuItem;
    Clientes2: TMenuItem;
    Tcnicos2: TMenuItem;
    grpFinanceiro: TGroupBox;
    Label1: TLabel;
    dbeValor: TDBEdit;
    tblChamadasID: TAutoIncField;
    tblChamadasCLI_ID: TIntegerField;
    tblChamadasTEC_ID: TIntegerField;
    tblChamadasCHMData: TDateField;
    tblChamadasCHMHora: TTimeField;
    tblChamadasCHMTipo: TStringField;
    tblChamadasCHMArea: TStringField;
    tblChamadasCHMDesc: TStringField;
    tblChamadasCHMFinalizado: TBooleanField;
    tblChamadasCHMAvaliado: TBooleanField;
    tblChamadasCHMConcluido: TBooleanField;
    tblChamadasCHMValor: TCurrencyField;
    spbPrinterChamada: TSpeedButton;
    tblChamadasCLINome: TStringField;
    Panel3: TPanel;
    GridChamada: TDBGrid;
    Panel27: TPanel;
    Label44: TLabel;
    grpDescATDTecnico: TGroupBox;
    grpDescATDProblema: TGroupBox;
    dbmDescTecnico: TDBMemo;
    dbmDescProblema: TDBMemo;
    tblAtendTECNome: TStringField;
    tblClientesGrid: TTable;
    dtsClientesGrid: TDataSource;
    grpDadosCliente: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    tblAtendATDDescChamada: TMemoField;
    tblAtendATDDescTecnico: TMemoField;
    tblAtendATDAvalTecDesc: TStringField;
    tblAtendATDAvalEmpDesc: TStringField;
    procedure GridChamadaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spbPenFinalizarClick(Sender: TObject);
    procedure spbAddChamadaClick(Sender: TObject);
    procedure spbEdtChamadaClick(Sender: TObject);
    procedure spbDelChamadaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgcAbasChange(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridAtendEnter(Sender: TObject);
    procedure GridAtendExit(Sender: TObject);
    procedure spdRetPendenteClick(Sender: TObject);
    procedure spbRetAvaliadoClick(Sender: TObject);
    procedure spbFinConcluidoClick(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure mnuTecnicosClick(Sender: TObject);
    procedure spbPrinterChamadaClick(Sender: TObject);
    procedure GridChamadaEnter(Sender: TObject);
  private
    { Private declarations }
    Function FiltroRegistros(IndexAba : Integer) : Integer;
    procedure AbrirChamadas(pOperacao : Integer; pIndexAba : integer = 0);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  msSenha     : string;
  miGridFocu  : integer;

Const
  mcSenha = '';

implementation
  uses uFrmClientes, uFrmChamadas, uFrmTecnicos, uFrmAtend;
{$R *.DFM}

procedure TfrmMain.GridChamadaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case pgcAbas.ActivePageIndex of
    0 : begin         //Pendentes
          case Key of
            VK_F5     : spbAddChamadaClick(nil);
            VK_F6     : spbEdtChamadaClick(nil);
            VK_DELETE : spbDelChamadaClick(nil);
            VK_F11    : spbPrinterChamadaClick(nil);
            VK_F8    : if spbPenFinalizar.Enabled then spbPenFinalizarClick(nil);
          end;
        end;

    1 : begin         //Retorno
          case Key of
            VK_F7 : spdRetPendenteClick(nil);
            VK_F8: spbRetAvaliadoClick(nil);
          end;
        end;

    2 : begin         //Financeiro
          case key of
            VK_F8: spbFinConcluidoClick(nil);
          end;
        end;

    3 : begin //Concluidos
          case key of
            VK_DELETE : spbDelChamadaClick(nil);
          end;
        end;
  end;
end;

procedure TfrmMain.spbPenFinalizarClick(Sender: TObject);
begin
  if MessageDlg('Desejá Finalizar esta Chamada?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    with tblChamadas do begin
      Edit;
      FieldByName('CHMFinalizado').asBoolean :=  True;
      Update;
      FiltroRegistros(0); // Finalizado = False;
    end;
end;

procedure TfrmMain.spbAddChamadaClick(Sender: TObject);
begin
  Self.AbrirChamadas(1); //Incluir
end;

procedure TfrmMain.spbEdtChamadaClick(Sender: TObject);
begin
  Self.AbrirChamadas(2);  //Alterar
end;

procedure TfrmMain.spbDelChamadaClick(Sender: TObject);
begin
  Self.AbrirChamadas(3,3); //Deletar
end;

procedure TfrmMain.AbrirChamadas(pOperacao : Integer; pIndexAba : integer = 0);
var
  iCha_ID : Longint;
begin
{  1 = Incluir
  2 = Alterar
  3 = Excluir}

  iCha_ID :=  tblChamadas.FieldValues['ID'];

  if miGridFocu = 0 then begin
    Application.CreateForm(TfrmChamadas,frmChamadas);
    with frmChamadas do begin
      case pOperacao of
        1 : if Incluir > 0 then Self.FiltroRegistros(pIndexAba);
        2 : if Alterar(iCha_ID) then Self.FiltroRegistros(pIndexAba);
        3 : if Deletar(iCha_ID) then Self.FiltroRegistros(pIndexAba);
      end;

      Free;
    end;
    end
  else begin
    Application.CreateForm(TfrmAtend,frmAtend);
    with frmAtend do begin
      case pOperacao of
        1 : if Incluir(iCha_ID) > 0 then Self.FiltroRegistros(pIndexAba);
        2 : if Alterar(dtsAtend.DataSet['ID']) then Self.FiltroRegistros(pIndexAba);
        3 : if Deletar(dtsAtend.DataSet['ID']) then Self.FiltroRegistros(pIndexAba);
      end;

      Free;
    end;
  end;

  tblChamadas.FindKey([iCha_ID]);

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  tblChamadas.Open;
  tblAtend.Open;
  tblClientes.Open;
  tblTecnicos.Open;

  tblChamadas.Filter := 'CHMFinalizado = False';
  tblChamadas.Filtered := True;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblAtend.Close;
  tblChamadas.Close;
  tblClientes.Close;
  tblTecnicos.Close;
end;

procedure TfrmMain.pgcAbasChange(Sender: TObject);
var iIndex : Integer;
begin
  grpAvalAtend.Visible := False;
  grpFinanceiro.Visible:= False;

  iIndex := pgcAbas.ActivePageIndex;
  case iIndex of
    0 : begin
          msSenha := '';
          Self.FiltroRegistros(iIndex);
        end;

    1 : begin
          msSenha := '';
          grpAvalAtend.Visible := True;
          Self.FiltroRegistros(iIndex);
        end;

    2 : begin
          if msSenha <> mcSenha then
            msSenha := InputBox('Financeiro',
                                'Digite a Senha para acessar o Financeiro',
                                '');
          if msSenha = mcSenha then begin
            grpFinanceiro.Visible:= True;
            Self.FiltroRegistros(iIndex);
            end
          else begin
            pgcAbas.ActivePageIndex := 0;
            if msSenha <> '' then ShowMessage('Senha Inválida...!');
          end;
        end;

    3 : begin
          if msSenha <> mcSenha then
            msSenha := InputBox('Concluídos',
                                'Digite a Senha para acessar o Aba de Concluídos...',
                                '');

          if msSenha = mcSenha then begin
            grpAvalAtend.Visible := True;
            grpFinanceiro.Visible:= True;
            Self.FiltroRegistros(iIndex);
            end
          else begin
            pgcAbas.ActivePageIndex := 0;
            if msSenha <> '' then ShowMessage('Senha Inválida...!');
          end;
        end;
  end;
end;

procedure TfrmMain.mnuClientesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes,frmClientes);
  frmClientes.ShowModal;
  frmClientes.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
    appPath : string;
begin
    pgcAbas.ActivePageIndex := 0;

    appPath := ExtractFilePath(Application.Exename);
    appPath := appPath + 'Dados';
    tblChamadas.DatabaseName := appPath;
    tblAtend.DatabaseName := appPath;
    tblClientes.DatabaseName := appPath;
    tblClientesGrid.DatabaseName := appPath;
    tblTecnicos.DatabaseName := appPath;

end;

procedure TfrmMain.GridAtendEnter(Sender: TObject);
begin
  miGridFocu := 1;
  if pgcAbas.ActivePageIndex <> 0 then Abort;

  //Botoes da Aba Pendentes
  spbPenFinalizar.Enabled   := False;
  spbPrinterChamada.Enabled := False;

  if tblAtend.RecordCount = 0 then begin
    spbEdtChamada.Enabled := False;
    spbDelChamada.Enabled := False;
    end
  else begin
    spbEdtChamada.Enabled := True;
    spbDelChamada.Enabled := True;
  end;
  // Aba Pendentes


end;

procedure TfrmMain.GridAtendExit(Sender: TObject);
begin
  miGridFocu := 0;
  spbPenFinalizar.Enabled   := True;
  spbPrinterChamada.Enabled := True;
end;

procedure TfrmMain.spdRetPendenteClick(Sender: TObject);
begin
  if MessageDlg('Desejá Retornar esta chamada para Pendentes?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    with tblChamadas do begin
      Edit;
      FieldByName('CHMFinalizado').asBoolean :=  False;
      Update;
      Self.FiltroRegistros(1) //Filtro da Aba Retorno
    end;
end;

procedure TfrmMain.spbRetAvaliadoClick(Sender: TObject);
begin
  with tblChamadas do begin
    Edit;
    FieldByName('CHMAvaliado').asBoolean := True;
    UpDate;
    Self.FiltroRegistros(1);  //Filtro da Aba Retorno
  end;
end;

Function TfrmMain.FiltroRegistros(IndexAba : Integer) : Integer;
begin
  with tblChamadas do begin
    case IndexAba of
      0 : begin     //Pendentes
            Filter := 'CHMFinalizado = False';
            if RecordCount > 0 then begin
              spbDelChamada.Enabled   := True;
              spbEdtChamada.Enabled   := True;
              spbPenFinalizar.Enabled := True;
              end
            else begin
              spbDelChamada.Enabled   := False;
              spbEdtChamada.Enabled   := False;
              spbPenFinalizar.Enabled := False;
            end;
          end;

      1 : begin     //Retorno
            Filter := 'CHMFinalizado = True and CHMAvaliado = False';
            if RecordCount > 0 then begin
              spbRetAvaliado.Enabled    := True;
              spdRetPendente.Enabled    := True;
              grpAvalAtend.Enabled      := True;
              end
            else begin
              spbRetAvaliado.Enabled    := False;
              spdRetPendente.Enabled    := False;
              grpAvalAtend.Enabled      := False;
            end;
          end;

      2 : begin     //Financeiro
            Filter := 'CHMFinalizado = True and CHMAvaliado = True and CHMConcluido = False';
            if RecordCount > 0 then
              spbFinConcluido.Enabled   := True
            else
              spbFinConcluido.Enabled   := False;
          end;

      3 : begin
            Filter := 'CHMConcluido = True';    //Concluido
            if RecordCount > 0 then
              spbConDelete.Enabled := True
            else
              spbConDelete.Enabled := False;

            grpAvalAtend.Enabled  := False;
            grpFinanceiro.Enabled  := False;
          end;
    end;
    Result := RecordCount;
  end;
end;

procedure TfrmMain.spbFinConcluidoClick(Sender: TObject);
begin
   with tblChamadas do begin
    Edit;
    FieldByName('CHMConcluido').asBoolean := True;
    UpDate;
    Self.FiltroRegistros(2);  //Filtro da Aba Financeiro
  end;
end;

procedure TfrmMain.mnuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.mnuTecnicosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmTecnicos,frmTecnicos);
  frmTecnicos.Showmodal;
  frmTecnicos.Free;
end;

procedure TfrmMain.spbPrinterChamadaClick(Sender: TObject);
begin
  ShowMessage('Printer Rat');
end;

procedure TfrmMain.GridChamadaEnter(Sender: TObject);
begin

  if pgcAbas.ActivePageIndex <> 0 then Abort;
  
  if tblChamadas.RecordCount = 0 then begin
    spbEdtChamada.Enabled := False;
    spbDelChamada.Enabled := False;
    end
  else begin
    spbEdtChamada.Enabled := True;
    spbDelChamada.Enabled := True;
  end;

end;

end.

