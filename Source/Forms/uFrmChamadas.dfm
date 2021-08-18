object frmChamadas: TfrmChamadas
  Left = 536
  Top = 151
  Width = 434
  Height = 263
  Caption = 'frmChamadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCampos: TPanel
    Left = 0
    Top = 25
    Width = 426
    Height = 211
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object lblNome: TLabel
      Left = 54
      Top = 86
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object lblEnd: TLabel
      Left = 21
      Top = 181
      Width = 57
      Height = 13
      Caption = 'Descrição...'
    end
    object Label2: TLabel
      Left = 53
      Top = 110
      Width = 25
      Height = 13
      Caption = 'Área:'
    end
    object Shape1: TShape
      Left = 2
      Top = 2
      Width = 422
      Height = 23
      Align = alTop
      Brush.Color = 15400959
      Pen.Color = clMaroon
      Pen.Width = 2
    end
    object lblOperacao: TLabel
      Left = 5
      Top = 3
      Width = 416
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Operaçao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 52
      Top = 62
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label3: TLabel
      Left = 52
      Top = 38
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 36
      Top = 156
      Width = 42
      Height = 13
      Caption = 'Técnico:'
    end
    object Label5: TLabel
      Left = 43
      Top = 133
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object dbeDesc: TDBEdit
      Left = 82
      Top = 177
      Width = 323
      Height = 21
      DataField = 'CHMDesc'
      DataSource = dsCha
      TabOrder = 10
    end
    object DBDateEdit1: TDBDateEdit
      Left = 82
      Top = 34
      Width = 85
      Height = 21
      DataField = 'CHMData'
      DataSource = dsCha
      DefaultToday = True
      ButtonWidth = 20
      NumGlyphs = 2
      TabOrder = 0
    end
    object dbeHora: TDBEdit
      Left = 82
      Top = 58
      Width = 85
      Height = 21
      DataField = 'CHMHora'
      DataSource = dsCha
      TabOrder = 1
    end
    object dbeTecNome: TDBEdit
      Left = 167
      Top = 153
      Width = 238
      Height = 21
      Hint = 'Cidade selecionada.|Cidade selecionada onde reside o cliente.'
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'TECNome'
      DataSource = dsTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
    end
    object dbeCliNome: TDBEdit
      Left = 167
      Top = 129
      Width = 238
      Height = 21
      Hint = 'Cidade selecionada.|Cidade selecionada onde reside o cliente.'
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'CLINome'
      DataSource = dsCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object dbeCli_ID: TRxDBCalcEdit
      Left = 82
      Top = 129
      Width = 85
      Height = 21
      Hint = 
        'ENTER - Consulta, F2 - Cadastra.|Entre c/ o código da cidade. EN' +
        'TER - Consulta cidades cadastradas, F2 - Cadastra.'
      DataField = 'CLI_ID'
      DataSource = dsCha
      ClickKey = 0
      DecimalPlaces = 0
      DisplayFormat = '0'
      FormatOnEditing = True
      GlyphKind = gkCustom
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7700700000008777880070FFFFF88777000070F877788780080070F788888800
        8F0070F818778008770070F067778087770070F0E66888887700707676878788
        770070868688078877007780088888087700777808FF80877700777788008877
        77007777777777777700}
      MaxLength = 5
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      ZeroEmpty = False
      OnButtonClick = dbeCli_IDButtonClick
    end
    object cmbTipo: TComboBox
      Left = 82
      Top = 82
      Width = 85
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnClick = cmbTipoClick
      Items.Strings = (
        'Garantia'
        'Bonificado'
        'Eventual')
    end
    object cmbArea: TComboBox
      Left = 82
      Top = 106
      Width = 85
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnClick = cmbAreaClick
      Items.Strings = (
        'Sistema'
        'Equipamento'
        'NetSeg'
        'Rede')
    end
    object dbeTec_ID: TRxDBCalcEdit
      Left = 82
      Top = 153
      Width = 85
      Height = 21
      Hint = 
        'ENTER - Consulta, F2 - Cadastra.|Entre c/ o código da cidade. EN' +
        'TER - Consulta cidades cadastradas, F2 - Cadastra.'
      DataField = 'TEC_ID'
      DataSource = dsCha
      ClickKey = 0
      DecimalPlaces = 0
      DisplayFormat = '0'
      FormatOnEditing = True
      GlyphKind = gkCustom
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7700700000008777880070FFFFF88777000070F877788780080070F788888800
        8F0070F818778008770070F067778087770070F0E66888887700707676878788
        770070868688078877007780088888087700777808FF80877700777788008877
        77007777777777777700}
      MaxLength = 5
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      ZeroEmpty = False
      OnButtonClick = dbeTec_IDButtonClick
    end
    object dbeTipo: TDBEdit
      Left = 168
      Top = 82
      Width = 23
      Height = 21
      Hint = 'Cidade selecionada.|Cidade selecionada onde reside o cliente.'
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'CHMTipo'
      DataSource = dsCha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object dbeArea: TDBEdit
      Left = 168
      Top = 106
      Width = 23
      Height = 21
      Hint = 'Cidade selecionada.|Cidade selecionada onde reside o cliente.'
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'CHMArea'
      DataSource = dsCha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 25
    Align = alTop
    TabOrder = 1
    object btnConfirmar: TBitBtn
      Left = 8
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Con&firmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
      Kind = bkOK
    end
    object btnCancelar: TBitBtn
      Left = 88
      Top = 0
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Kind = bkCancel
    end
  end
  object tblCli: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexFieldNames = 'ID'
    MasterFields = 'CLI_ID'
    MasterSource = dsCha
    TableName = 'Clientes.DB'
    Left = 336
    Top = 89
    object tblCliCLINome: TStringField
      FieldName = 'CLINome'
      Size = 50
    end
    object tblCliID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object tblCha: TTable
    AfterScroll = tblChaAfterScroll
    DatabaseName = 'C:\Rat\Dados'
    TableName = 'Chamadas.DB'
    Left = 336
    Top = 56
    object tblChaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblChaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object tblChaTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
    end
    object tblChaCHMData: TDateField
      Alignment = taCenter
      FieldName = 'CHMData'
      EditMask = '!99/99/0000;1;_'
    end
    object tblChaCHMHora: TTimeField
      Alignment = taCenter
      FieldName = 'CHMHora'
      EditMask = '!90:00:00;1;_'
    end
    object tblChaCHMTipo: TStringField
      Alignment = taCenter
      FieldName = 'CHMTipo'
      Size = 1
    end
    object tblChaCHMArea: TStringField
      Alignment = taCenter
      FieldName = 'CHMArea'
      Size = 1
    end
    object tblChaCHMDesc: TStringField
      FieldName = 'CHMDesc'
      Size = 150
    end
    object tblChaCHMFinalizado: TBooleanField
      FieldName = 'CHMFinalizado'
    end
    object tblChaCHMAvaliado: TBooleanField
      FieldName = 'CHMAvaliado'
    end
    object tblChaCHMConcluido: TBooleanField
      FieldName = 'CHMConcluido'
    end
    object tblChaCHMValor: TCurrencyField
      FieldName = 'CHMValor'
    end
  end
  object tblTec: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexFieldNames = 'ID'
    MasterFields = 'TEC_ID'
    MasterSource = dsCha
    TableName = 'Tecnicos.DB'
    Left = 336
    Top = 120
    object tblTecTECNome: TStringField
      FieldName = 'TECNome'
      Required = True
      Size = 50
    end
    object tblTecID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object dsCha: TDataSource
    DataSet = tblCha
    Left = 368
    Top = 56
  end
  object dsCli: TDataSource
    DataSet = tblCli
    Left = 368
    Top = 88
  end
  object dsTec: TDataSource
    DataSet = tblTec
    Left = 368
    Top = 120
  end
end
