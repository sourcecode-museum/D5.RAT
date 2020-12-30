object frmMain: TfrmMain
  Left = 402
  Top = 94
  BorderStyle = bsSingle
  Caption = 'RAT - Relatório de Atendimento Técnico...'
  ClientHeight = 515
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pgcAbas: TPageControl
    Left = 0
    Top = 0
    Width = 790
    Height = 57
    ActivePage = AbaPendentes
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = pgcAbasChange
    object AbaPendentes: TTabSheet
      Caption = '&1 Pendentes'
      object pnlChamadas: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 24
        Align = alTop
        BevelInner = bvLowered
        BorderWidth = 1
        TabOrder = 0
        object spbAddChamada: TSpeedButton
          Left = 3
          Top = 3
          Width = 75
          Height = 17
          Caption = 'F5 - Incluir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbAddChamadaClick
        end
        object spbEdtChamada: TSpeedButton
          Left = 78
          Top = 3
          Width = 75
          Height = 17
          Caption = 'F6 - Alterar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbEdtChamadaClick
        end
        object spbPenFinalizar: TSpeedButton
          Left = 236
          Top = 3
          Width = 75
          Height = 17
          Caption = 'F8 - Finalizar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbPenFinalizarClick
        end
        object spbDelChamada: TSpeedButton
          Left = 153
          Top = 3
          Width = 75
          Height = 17
          Caption = 'DEL - Deletar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbDelChamadaClick
        end
        object spbPrinterChamada: TSpeedButton
          Left = 311
          Top = 3
          Width = 75
          Height = 17
          Hint = 'Imprimir Rat'
          Caption = 'F11 - Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = spbPrinterChamadaClick
        end
      end
    end
    object abaRetorno: TTabSheet
      Caption = '&2 Retorno'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 24
        Align = alTop
        BevelInner = bvLowered
        BorderWidth = 1
        TabOrder = 0
        object spbRetAvaliado: TSpeedButton
          Left = 78
          Top = 3
          Width = 75
          Height = 17
          Caption = 'F8 - Avaliado'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbRetAvaliadoClick
        end
        object spdRetPendente: TSpeedButton
          Left = 3
          Top = 3
          Width = 75
          Height = 17
          Hint = 'Retorno para Pendente'
          Caption = 'F7 - Pendente'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = spdRetPendenteClick
        end
      end
    end
    object abaFinanceiro: TTabSheet
      Caption = '&3 Financeiro'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 24
        Align = alTop
        BevelInner = bvLowered
        BorderWidth = 1
        TabOrder = 0
        object spbFinConcluido: TSpeedButton
          Left = 3
          Top = 3
          Width = 79
          Height = 17
          Caption = 'F8 - Concluído'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = spbFinConcluidoClick
        end
      end
    end
    object abaConcluido: TTabSheet
      Caption = '&4 Concluído'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 24
        Align = alTop
        BevelInner = bvLowered
        BorderWidth = 1
        TabOrder = 0
        object spbConDelete: TSpeedButton
          Left = 3
          Top = 3
          Width = 75
          Height = 17
          Caption = 'DEL - Deletar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = spbDelChamadaClick
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 498
    Width = 790
    Height = 17
    Align = alBottom
    Caption = 'Panel5'
    TabOrder = 2
    object StatusBar1: TStatusBar
      Left = 151
      Top = 1
      Width = 638
      Height = 15
      Align = alClient
      Panels = <>
      SimplePanel = False
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 150
      Height = 15
      Align = alLeft
      Min = 0
      Max = 100
      TabOrder = 1
    end
  end
  object Panel22: TPanel
    Left = 0
    Top = 179
    Width = 790
    Height = 319
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object Panel24: TPanel
      Left = 3
      Top = 3
      Width = 19
      Height = 245
      Align = alLeft
      BevelOuter = bvNone
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label35: TLabel
        Left = 0
        Top = 0
        Width = 19
        Height = 245
        Align = alClient
        Alignment = taCenter
        Caption = #13#10#13#10'C'#13#10'H'#13#10'A'#13#10'M'#13#10'A'#13#10'D'#13#10'A'#13#10'S'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object Panel26: TPanel
      Left = 496
      Top = 3
      Width = 291
      Height = 245
      Align = alRight
      BevelInner = bvLowered
      BorderWidth = 1
      TabOrder = 2
      object GridAtend: TDBGrid
        Left = 3
        Top = 3
        Width = 285
        Height = 133
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtsAtend
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnEnter = GridAtendEnter
        OnExit = GridAtendExit
        OnKeyDown = GridChamadaKeyDown
        Columns = <
          item
            Color = 8421631
            Expanded = False
            FieldName = 'TECNome'
            Title.Caption = 'Técnico'
            Width = 98
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 16514795
            Expanded = False
            FieldName = 'ATDDataAtual'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 16514795
            Expanded = False
            FieldName = 'ATDHoraAtual'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Ini.'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 16514795
            Expanded = False
            FieldName = 'ATDHoraPrev'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Fin.'
            Width = 45
            Visible = True
          end>
      end
      object grpDescATDTecnico: TGroupBox
        Left = 3
        Top = 189
        Width = 285
        Height = 53
        Align = alBottom
        Caption = 'Laudo Técnico...'
        TabOrder = 1
        object dbmDescTecnico: TDBMemo
          Left = 2
          Top = 16
          Width = 281
          Height = 33
          Align = alTop
          DataField = 'ATDDescTecnico'
          DataSource = dtsAtend
          MaxLength = 150
          TabOrder = 0
        end
      end
      object grpDescATDProblema: TGroupBox
        Left = 3
        Top = 136
        Width = 285
        Height = 53
        Align = alBottom
        Caption = 'Descrição do Problema...'
        TabOrder = 2
        object dbmDescProblema: TDBMemo
          Left = 2
          Top = 16
          Width = 281
          Height = 33
          Align = alTop
          Color = 16514795
          DataField = 'ATDDescChamada'
          DataSource = dtsAtend
          MaxLength = 150
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel3: TPanel
      Left = 22
      Top = 3
      Width = 455
      Height = 245
      Align = alClient
      BorderWidth = 2
      Caption = 'Panel3'
      TabOrder = 0
      object GridChamada: TDBGrid
        Left = 3
        Top = 3
        Width = 449
        Height = 239
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtsChamadas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnEnter = GridChamadaEnter
        OnKeyDown = GridChamadaKeyDown
        Columns = <
          item
            Color = 8421631
            Expanded = False
            FieldName = 'CLINome'
            Title.Caption = 'Nome do Cliente'
            Width = 163
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15400959
            Expanded = False
            FieldName = 'CHMTipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15400959
            Expanded = False
            FieldName = 'CHMArea'
            Title.Alignment = taCenter
            Title.Caption = 'Área'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15400959
            Expanded = False
            FieldName = 'CHMData'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 15400959
            Expanded = False
            FieldName = 'CHMHora'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Width = 55
            Visible = True
          end
          item
            Color = 15400959
            Expanded = False
            FieldName = 'CHMDesc'
            Title.Caption = 'Descrição da Chamada'
            Width = 144
            Visible = True
          end>
      end
    end
    object Panel27: TPanel
      Left = 477
      Top = 3
      Width = 19
      Height = 245
      Align = alRight
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label44: TLabel
        Left = 0
        Top = 0
        Width = 19
        Height = 245
        Align = alClient
        Alignment = taCenter
        Caption = #13#10#13#10'A'#13#10'T'#13#10'E'#13#10'N'#13#10'D'#13#10'I'#13#10'M'#13#10'E'#13#10'N'#13#10'T'#13#10'O'#13#10'S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object grpDadosCliente: TGroupBox
      Left = 3
      Top = 248
      Width = 784
      Height = 68
      Align = alBottom
      Caption = 'Dados do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label37: TLabel
        Left = 13
        Top = 15
        Width = 46
        Height = 14
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 13
        Top = 31
        Width = 55
        Height = 14
        Caption = 'Endereço:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 308
        Top = 31
        Width = 36
        Height = 14
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 452
        Top = 47
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 13
        Top = 47
        Width = 41
        Height = 14
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 244
        Top = 47
        Width = 16
        Height = 14
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 308
        Top = 47
        Width = 24
        Height = 14
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText20: TDBText
        Left = 72
        Top = 15
        Width = 230
        Height = 17
        DataField = 'CLIContato'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText21: TDBText
        Left = 72
        Top = 31
        Width = 230
        Height = 17
        DataField = 'CLIEnd'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText22: TDBText
        Left = 356
        Top = 31
        Width = 193
        Height = 17
        DataField = 'CLIBairro'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText23: TDBText
        Left = 72
        Top = 47
        Width = 169
        Height = 17
        DataField = 'CLICidade'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText24: TDBText
        Left = 268
        Top = 47
        Width = 23
        Height = 17
        DataField = 'CLIUF'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText25: TDBText
        Left = 356
        Top = 47
        Width = 89
        Height = 17
        DataField = 'CLICEP'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText26: TDBText
        Left = 484
        Top = 47
        Width = 89
        Height = 17
        DataField = 'CLIFone'
        DataSource = dtsClientes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object grpAvalAtend: TGroupBox
    Left = 0
    Top = 57
    Width = 790
    Height = 73
    Align = alTop
    Caption = 'Avaliação do Atendimento...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label17: TLabel
      Left = 18
      Top = 20
      Width = 96
      Height = 14
      Caption = 'Avaliação Empresa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 22
      Top = 44
      Width = 92
      Height = 14
      Caption = 'Avaliação Técnico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 204
      Top = 20
      Width = 52
      Height = 14
      Caption = 'Descrição:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 204
      Top = 43
      Width = 52
      Height = 14
      Caption = 'Descrição:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeDescChamada: TDBEdit
      Left = 260
      Top = 16
      Width = 277
      Height = 22
      DataField = 'ATDAvalEmpDesc'
      DataSource = dtsAtend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 116
      Top = 16
      Width = 81
      Height = 22
      DataField = 'ATDAvalEmp'
      DataSource = dtsAtend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      Items.Strings = (
        'Bom'
        'Ótimo'
        'Ruim')
      ParentFont = False
      Sorted = True
      TabOrder = 1
    end
    object DBComboBox2: TDBComboBox
      Left = 116
      Top = 40
      Width = 81
      Height = 22
      DataField = 'ATDAvalTec'
      DataSource = dtsAtend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      Items.Strings = (
        'Bom'
        'Ótimo'
        'Ruim')
      ParentFont = False
      Sorted = True
      TabOrder = 2
    end
    object dbeDescTec: TDBEdit
      Left = 260
      Top = 40
      Width = 277
      Height = 22
      DataField = 'ATDAvalTecDesc'
      DataSource = dtsAtend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 544
      Top = 48
      Width = 145
      Height = 17
      Caption = 'Marcar Atendimento?'
      DataField = 'ATDAvalidado'
      DataSource = dtsAtend
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object grpFinanceiro: TGroupBox
    Left = 0
    Top = 130
    Width = 790
    Height = 49
    Align = alTop
    Caption = 'Valor do Financeiro...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 49
      Top = 22
      Width = 63
      Height = 14
      Caption = 'Valor da Rat:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbeValor: TDBEdit
      Left = 116
      Top = 20
      Width = 79
      Height = 22
      DataField = 'CHMValor'
      DataSource = dtsChamadas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 336
    object menuCadastros: TMenuItem
      Caption = '&Cadastros'
      object mnuClientes: TMenuItem
        Caption = '&Clientes'
        ShortCut = 113
        OnClick = mnuClientesClick
      end
      object mnuTecnicos: TMenuItem
        Caption = '&Técnicos'
        ShortCut = 115
        OnClick = mnuTecnicosClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuSair: TMenuItem
        Caption = '&Sair'
        OnClick = mnuSairClick
      end
    end
    object menuLocalizar: TMenuItem
      Caption = '&Localizar'
      object Localizar1: TMenuItem
        Caption = '&Chamada'
        ShortCut = 114
      end
      object LocalizarAtendimento1: TMenuItem
        Caption = '&Atendimento'
        ShortCut = 16498
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Clientes2: TMenuItem
        Caption = 'Clientes'
        ShortCut = 8306
      end
      object Tcnicos2: TMenuItem
        Caption = 'Técnicos'
        ShortCut = 24690
      end
    end
    object menuRelatorios: TMenuItem
      Caption = '&Relatórios'
      object mnuRelRat: TMenuItem
        Caption = '&Rat'
        Visible = False
      end
      object mnuRelPendencias: TMenuItem
        Caption = '&Pendências'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Clientes1: TMenuItem
        Caption = '&Clientes'
      end
      object Tcnicos1: TMenuItem
        Caption = '&Técnicos'
      end
    end
  end
  object dtsChamadas: TDataSource
    DataSet = tblChamadas
    Left = 64
    Top = 224
  end
  object tblChamadas: TTable
    DatabaseName = 'C:\Rat\Dados'
    Filtered = True
    TableName = 'Chamadas.DB'
    Left = 36
    Top = 224
    object tblChamadasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblChamadasCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object tblChamadasTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
    end
    object tblChamadasCHMData: TDateField
      FieldName = 'CHMData'
      EditMask = '!99/99/0000;1;_'
    end
    object tblChamadasCHMHora: TTimeField
      FieldName = 'CHMHora'
      EditMask = '!90:00:00;1;_'
    end
    object tblChamadasCHMTipo: TStringField
      FieldName = 'CHMTipo'
      Size = 1
    end
    object tblChamadasCHMArea: TStringField
      FieldName = 'CHMArea'
      Size = 1
    end
    object tblChamadasCHMDesc: TStringField
      FieldName = 'CHMDesc'
      Size = 150
    end
    object tblChamadasCHMFinalizado: TBooleanField
      FieldName = 'CHMFinalizado'
    end
    object tblChamadasCHMAvaliado: TBooleanField
      FieldName = 'CHMAvaliado'
    end
    object tblChamadasCHMConcluido: TBooleanField
      FieldName = 'CHMConcluido'
    end
    object tblChamadasCHMValor: TCurrencyField
      FieldName = 'CHMValor'
    end
    object tblChamadasCLINome: TStringField
      FieldKind = fkLookup
      FieldName = 'CLINome'
      LookupDataSet = tblClientesGrid
      LookupKeyFields = 'ID'
      LookupResultField = 'CLINome'
      KeyFields = 'CLI_ID'
      Size = 50
      Lookup = True
    end
  end
  object tblAtend: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexName = 'IDXChamada'
    MasterFields = 'ID'
    MasterSource = dtsChamadas
    TableName = 'Atendimentos.db'
    Left = 332
    Top = 232
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
    object tblAtendATDAvalTec: TStringField
      FieldName = 'ATDAvalTec'
      Size = 6
    end
    object tblAtendATDAvalEmp: TStringField
      FieldName = 'ATDAvalEmp'
      Size = 6
    end
    object tblAtendTECNome: TStringField
      FieldKind = fkLookup
      FieldName = 'TECNome'
      LookupDataSet = tblTecnicos
      LookupKeyFields = 'ID'
      LookupResultField = 'TECNome'
      KeyFields = 'TEC_ID'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object tblAtendATDDescChamada: TMemoField
      FieldName = 'ATDDescChamada'
      BlobType = ftMemo
      Size = 150
    end
    object tblAtendATDDescTecnico: TMemoField
      FieldName = 'ATDDescTecnico'
      BlobType = ftMemo
      Size = 150
    end
    object tblAtendATDAvalTecDesc: TStringField
      FieldName = 'ATDAvalTecDesc'
      Size = 150
    end
    object tblAtendATDAvalEmpDesc: TStringField
      FieldName = 'ATDAvalEmpDesc'
      Size = 150
    end
  end
  object dtsAtend: TDataSource
    DataSet = tblAtend
    Left = 360
    Top = 232
  end
  object tblClientes: TTable
    DatabaseName = 'C:\Rat\Dados'
    IndexFieldNames = 'ID'
    MasterFields = 'CLI_ID'
    MasterSource = dtsChamadas
    TableName = 'Clientes.db'
    Left = 164
    Top = 320
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
    Left = 192
    Top = 320
  end
  object tblTecnicos: TTable
    DatabaseName = 'C:\Rat\Dados'
    TableName = 'Tecnicos.DB'
    Left = 540
    Top = 280
  end
  object dtsTecnicos: TDataSource
    DataSet = tblTecnicos
    Left = 568
    Top = 280
  end
  object tblClientesGrid: TTable
    DatabaseName = 'C:\Rat\Dados'
    TableName = 'Clientes.DB'
    Left = 158
    Top = 230
  end
  object dtsClientesGrid: TDataSource
    DataSet = tblClientesGrid
    Left = 190
    Top = 230
  end
end
