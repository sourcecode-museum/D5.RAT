object frmAtend: TfrmAtend
  Left = 392
  Top = 225
  Width = 436
  Height = 188
  Caption = 'frmAtend'
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
    Width = 428
    Height = 136
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object lblEnd: TLabel
      Left = 11
      Top = 109
      Width = 79
      Height = 13
      Caption = 'Desc. Chamada:'
    end
    object Shape1: TShape
      Left = 2
      Top = 2
      Width = 424
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
      Left = 37
      Top = 62
      Width = 53
      Height = 13
      Caption = 'Hora Atual:'
    end
    object Label3: TLabel
      Left = 37
      Top = 38
      Width = 53
      Height = 13
      Caption = 'Data Atual:'
    end
    object Label4: TLabel
      Left = 48
      Top = 84
      Width = 42
      Height = 13
      Caption = 'Técnico:'
    end
    object Label6: TLabel
      Left = 183
      Top = 38
      Width = 67
      Height = 13
      Caption = 'Data Prevista:'
    end
    object Label7: TLabel
      Left = 183
      Top = 62
      Width = 67
      Height = 13
      Caption = 'Hora Prevista:'
    end
    object dbeDesc: TDBEdit
      Left = 93
      Top = 105
      Width = 323
      Height = 21
      DataField = 'ATDDescChamada'
      DataSource = dsAtend
      TabOrder = 4
    end
    object DBDateEdit1: TDBDateEdit
      Left = 93
      Top = 34
      Width = 85
      Height = 21
      DataField = 'ATDDataAtual'
      DataSource = dsAtend
      DefaultToday = True
      ButtonWidth = 20
      NumGlyphs = 2
      CalendarStyle = csDialog
      TabOrder = 0
    end
    object dbeHora: TDBEdit
      Left = 93
      Top = 58
      Width = 85
      Height = 21
      DataField = 'ATDHoraAtual'
      DataSource = dsAtend
      TabOrder = 1
    end
    object dbeTecNome: TDBEdit
      Left = 178
      Top = 81
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
      TabOrder = 3
    end
    object dbeTec_ID: TRxDBCalcEdit
      Left = 93
      Top = 81
      Width = 85
      Height = 21
      Hint = 
        'ENTER - Consulta, F2 - Cadastra.|Entre c/ o código da cidade. EN' +
        'TER - Consulta cidades cadastradas, F2 - Cadastra.'
      DataField = 'TEC_ID'
      DataSource = dsAtend
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
      TabOrder = 2
      ZeroEmpty = False
      OnButtonClick = dbeTec_IDButtonClick
    end
    object DBEdit1: TDBEdit
      Left = 253
      Top = 58
      Width = 85
      Height = 21
      DataField = 'ATDHoraPrev'
      DataSource = dsAtend
      TabOrder = 5
    end
    object DBDateEdit2: TDBDateEdit
      Left = 253
      Top = 34
      Width = 85
      Height = 21
      DataField = 'ATDDataPrev'
      DataSource = dsAtend
      DefaultToday = True
      ButtonWidth = 20
      NumGlyphs = 2
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 428
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
  object tblAtend: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexFieldNames = 'ID'
    TableName = 'Atendimentos.DB'
    Left = 344
    Top = 57
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
      Alignment = taCenter
      FieldName = 'ATDDataAtual'
      EditMask = '!99/99/0000;1;_'
    end
    object tblAtendATDHoraAtual: TTimeField
      Alignment = taCenter
      FieldName = 'ATDHoraAtual'
      EditMask = '!90:00:00;1;_'
    end
    object tblAtendATDDataPrev: TDateField
      Alignment = taCenter
      FieldName = 'ATDDataPrev'
      EditMask = '!99/99/0000;1;_'
    end
    object tblAtendATDHoraPrev: TTimeField
      Alignment = taCenter
      FieldName = 'ATDHoraPrev'
      EditMask = '!90:00:00;1;_'
    end
    object tblAtendATDDescChamada: TStringField
      FieldName = 'ATDDescChamada'
      Size = 150
    end
  end
  object tblTec: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexFieldNames = 'ID'
    MasterFields = 'TEC_ID'
    MasterSource = dsAtend
    TableName = 'Tecnicos.DB'
    Left = 344
    Top = 96
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
  object dsAtend: TDataSource
    DataSet = tblAtend
    Left = 376
    Top = 56
  end
  object dsTec: TDataSource
    DataSet = tblTec
    Left = 376
    Top = 96
  end
end
