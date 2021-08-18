unit uDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    dtsChamadas: TDataSource;
    tblChamadas: TTable;
    tblAtend: TTable;
    dtsAtend: TDataSource;
    tblClientes: TTable;
    dtsClientes: TDataSource;
    tblTecnicos: TTable;
    dtsTecnicos: TDataSource;
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
    tblAtendID: TAutoIncField;
    tblAtendCHA_ID: TIntegerField;
    tblAtendTEC_ID: TIntegerField;
    tblAtendATDDataAtual: TDateField;
    tblAtendATDHoraAtual: TTimeField;
    tblAtendATDDataPrev: TDateField;
    tblAtendATDHoraPrev: TTimeField;
    tblAtendATDAvalidado: TBooleanField;
    tblAtendATDDescChamada: TStringField;
    tblAtendATDDescTecnico: TStringField;
    tblAtendATDAvalTec: TStringField;
    tblAtendATDAvalTecDesc: TStringField;
    tblAtendATDAvalEmp: TStringField;
    tblAtendATDAvalEmpDesc: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

end.
