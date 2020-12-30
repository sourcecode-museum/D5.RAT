object DM: TDM
  OldCreateOrder = False
  Left = 200
  Top = 114
  Height = 369
  Width = 538
  object dtsChamadas: TDataSource
    DataSet = tblChamadas
    Left = 104
    Top = 8
  end
  object tblChamadas: TTable
    DatabaseName = 'Rat'
    Filtered = True
    TableName = 'Chamadas.DB'
    Left = 28
    Top = 8
  end
  object tblAtend: TTable
    DatabaseName = 'Rat'
    IndexName = 'IDXChamada'
    MasterFields = 'ID'
    MasterSource = dtsChamadas
    TableName = 'Atendimentos.db'
    Left = 28
    Top = 72
    object tblAtendID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblAtendCHA_ID: TIntegerField
      FieldName = 'CHA_ID'
    end
    object tblAtendTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
    end
    object tblAtendATDDataAtual: TDateField
      FieldName = 'ATDDataAtual'
      EditMask = '!99/99/0000;1;_'
    end
    object tblAtendATDHoraAtual: TTimeField
      FieldName = 'ATDHoraAtual'
      EditMask = '!90:00;1;_'
    end
    object tblAtendATDDataPrev: TDateField
      FieldName = 'ATDDataPrev'
      EditMask = '!99/99/0000;1;_'
    end
    object tblAtendATDHoraPrev: TTimeField
      FieldName = 'ATDHoraPrev'
      EditMask = '!90:00;1;_'
    end
    object tblAtendATDAvalidado: TBooleanField
      FieldName = 'ATDAvalidado'
    end
    object tblAtendATDDescChamada: TStringField
      FieldName = 'ATDDescChamada'
      Size = 150
    end
    object tblAtendATDDescTecnico: TStringField
      FieldName = 'ATDDescTecnico'
      Size = 150
    end
    object tblAtendATDAvalTec: TStringField
      FieldName = 'ATDAvalTec'
      Size = 6
    end
    object tblAtendATDAvalTecDesc: TStringField
      FieldName = 'ATDAvalTecDesc'
      Size = 150
    end
    object tblAtendATDAvalEmp: TStringField
      FieldName = 'ATDAvalEmp'
      Size = 6
    end
    object tblAtendATDAvalEmpDesc: TStringField
      FieldName = 'ATDAvalEmpDesc'
      Size = 150
    end
  end
  object dtsAtend: TDataSource
    DataSet = tblAtend
    Left = 104
    Top = 72
  end
  object tblClientes: TTable
    DatabaseName = 'Rat'
    IndexFieldNames = 'ID'
    MasterFields = 'CLI_ID'
    MasterSource = dtsChamadas
    TableName = 'Clientes.db'
    Left = 172
    Top = 8
    object tblClientesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblClientesCLIDTCadastro: TDateField
      FieldName = 'CLIDTCadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object tblClientesCLINome: TStringField
      FieldName = 'CLINome'
      Size = 50
    end
    object tblClientesCLIContato: TStringField
      FieldName = 'CLIContato'
    end
    object tblClientesCLIEnd: TStringField
      FieldName = 'CLIEnd'
      Size = 50
    end
    object tblClientesCLIBairro: TStringField
      FieldName = 'CLIBairro'
      Size = 30
    end
    object tblClientesCLICidade: TStringField
      FieldName = 'CLICidade'
      Size = 30
    end
    object tblClientesCLIUF: TStringField
      FieldName = 'CLIUF'
      Size = 2
    end
    object tblClientesCLICEP: TStringField
      FieldName = 'CLICEP'
      EditMask = '00000\-9999;1;_'
      Size = 9
    end
    object tblClientesCLIFone: TStringField
      FieldName = 'CLIFone'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 14
    end
  end
  object dtsClientes: TDataSource
    DataSet = tblClientes
    Left = 248
    Top = 8
  end
  object tblTecnicos: TTable
    DatabaseName = 'Rat'
    IndexFieldNames = 'ID'
    MasterFields = 'TEC_ID'
    MasterSource = dtsAtend
    TableName = 'Tecnicos.DB'
    Left = 172
    Top = 72
  end
  object dtsTecnicos: TDataSource
    DataSet = tblTecnicos
    Left = 248
    Top = 72
  end
end
