object frmGeradorXML: TfrmGeradorXML
  Left = 403
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador de XML : : . .'
  ClientHeight = 374
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 2
    Width = 595
    Height = 268
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 246
      Width = 279
      Height = 15
      Caption = 'BARRA DE ESPA'#199'O seleciona o(s) CT-e(s) desejado(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6710886
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSelTodos: TLabel
      Left = 482
      Top = 246
      Width = 102
      Height = 15
      Alignment = taRightJustify
      Caption = '[ F4 ] Marcar Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbSelTodosClick
      OnMouseMove = lbSelTodosMouseMove
      OnMouseLeave = lbSelTodosMouseLeave
    end
    inline frmPer1: TfrmPer
      Left = 9
      Top = 12
      Width = 264
      Height = 38
      AutoSize = True
      TabOrder = 0
      inherited StaticText2: TStaticText [2]
        Width = 61
        Height = 18
        Font.Height = -12
        Font.Name = 'Calibri'
        ParentFont = False
      end
      inherited StaticText1: TStaticText [3]
        Width = 68
        Height = 18
        Font.Height = -12
        Font.Name = 'Calibri'
        ParentFont = False
      end
      inherited EdDataIni: TFocusMaskEdit [4]
      end
      inherited EdDataFim: TFocusMaskEdit [5]
        OnExit = frmPer1EdDataFimExit
      end
    end
    object GridCTes: TDBMarcianoGrid
      Left = 8
      Top = 55
      Width = 578
      Height = 189
      Color = 16250871
      DataSource = dsCtes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      onDrawColumnCell = GridCTesDrawColumnCell
      OnKeyDown = GridCTesKeyDown
      ColorZebra1 = 15655127
      ColorZebra2 = 16575460
      Ordena = False
      BuscaIncremental = True
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NRCTE'
          Title.Caption = 'N'#186' CT-e'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZDES'
          Title.Caption = 'Raz'#227'o S. Destinat'#225'rio'
          Width = 293
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VTPREST'
          Title.Caption = 'Total Presta'#231#227'o'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 275
    Width = 595
    Height = 93
    Caption = 'Destino para o(s) XML(s) '
    TabOrder = 1
    object btGerar: TSpeedButton
      Left = 417
      Top = 56
      Width = 162
      Height = 25
      Caption = '[ F3 ] Gerar XML(s)         '
      Glyph.Data = {
        5E040000424D5E040000000000003600000028000000190000000E0000000100
        18000000000028040000C40E0000C40E00000000000000000000E3E3E3E3E3E3
        E3E3E3E3E3E3E5E5E5DDDED8C1C3B2D7D8D1E4E4E4E3E3E3E3E3E3E5E5E4E5E5
        E2E5E5E3E5E5E5E3E3E3E3E3E3DBDDD5C5C7B6DDDED7E3E3E3E3E3E3E3E3E3E3
        E3E3E3E3E300E3E3E3E3E3E3E3E3E3E5E5E5E5E5D29A989F7C749FB4B2D2E7E7
        EAE2E1E1D6D6D6BABAC5AAAAC0AFAFBFC3C3CADCDCDCE6E6E4BCBBD38781AA96
        969BE2E3D9E5E5E5E3E3E3E3E3E3E3E3E300E3E3E3E3E3E3E5E5E5F5F7CE8E8E
        9D362BCF5244F79F9DE6E3E4E4C8C8C77171A42F2FA83030C43030B838389999
        99B0F3F3DCACABEA4F43F72B22CB96989EF6F7D5E7E7E7E3E3E3E3E3E300E3E3
        E3E3E3E3F8F8D39D9F97251DD62A22FF898BEADEE0E6E3E3E3A3A3D13D3DD74F
        4FF77A7AFF6C6CFF3636E86969CDE1E1DADBDCE67C7CE7251DFF2920C3B7B797
        EEEEDAE3E3E3E3E3E300E3E3E3F3F5DAA6A89A241ECD2D26FF9899DEE0E0DFE3
        E3E3D1D1EA6C6CF67777FFBABAFDC5C5FAC2C2FAA1A1FF5959FDA2A2F5E9E9E9
        D9DADB8382DE2F23FF3E38C2B2B59DE4E4DDE3E3E300EEEED8B4B5A73933C81A
        12FF9695E2E6E6DEE3E3E3EDEDEC9494F14E4EEF9898F4ADADF5A2A2F6A5A5F5
        ACACF66D6DF35D5DEDCACAEAE3E3E3D9D9DB716FE7160CFF524EB6C0C0A7E4E4
        E100B0B0B95751D0312BF49190DDE4E4DFE3E3E3E3E3E3E3E3EA6F6FE73F3FED
        7777F27777F27676F27676F17A7AF26262F33939E3A3A3DEE3E3E3E3E3E3D2D2
        DD6C68E52D24F67470C3CACBC4007371D33C37FB312CD3B8B9A2EBEBD7E3E3E3
        E3E3E3DBDBE56060DE1D1DE93B3BEF4040ED4343ED4343ED4242EE2D2DF01414
        DBA3A3E1EBEBEAE3E3E3EAEBCB9595A3211AED4E47F0BBBAD600D6D6E88380E6
        2A22F84843B7C4C79DEAEAD9E3E3E3E0E0E66868D82222E73E3EEF4040EC4242
        ED4040ED4040EE3232F11B1BD1A0A0D8E7E7E7E7E7D6B4B595413BC7322CF79A
        98E1E4E4E300E3E3E3E2E2E17876EB1E15FE4C48A9C8C99AEAEADDE4E4E87676
        D04949E67272F66868EE6565F06363EF6C6CF26363F45050D1B8B8DCE7E7DCC0
        C2984541B92219FF8684DEE3E3DEE3E3E300E3E3E3E6E6E5D9DAE0625FEA1B0F
        F85652A8CECFA4E5E5DBB8B7E26666D98484FC9797FB8989F28B8BF59898FF62
        62E98E8EE0F6F6F0D1D49E504DAF140AFF7471E0E1E2DAE3E3E3E3E3E300E3E3
        E3E3E3E3E5E5E2C9CADA504BEA150AF55B57AAE1E2B9ECECECA2A2DB6565D985
        85F6A6A6FF9898FD7272E96B6BD2DBDBECF2F1CD635FA91006F55450E8D2D2D9
        E7E7E3E3E3E3E3E3E300E3E3E3E3E3E3E3E3E3E5E5E2BEBEDA504CEE352EF39A
        98D2E3E4DDE1E1E3C5C5DD8F8FDD6A6ADB7C7CDCA3A3DED5D5DFE3E3E3A8A8D5
        3E38EE504BEEC4C5D9E5E5E3E3E3E3E3E3E3E3E3E300E3E3E3E3E3E3E3E3E3E3
        E3E3E5E5E2BEBFDB6E74D19799DDE0E0E6E3E3E3E3E3E3DEDEE2D5D5E0D9D9E1
        E3E3E3E3E3E3E3E3E3A7A9DA7276D0BDBEDAE5E5E2E3E3E3E3E3E3E3E3E3E3E3
        E300}
      OnClick = btGerarClick
    end
    object btSelecionar: TSpeedButton
      Left = 417
      Top = 24
      Width = 162
      Height = 25
      Caption = ' [ F2 ] Selecionar Destino'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF667BB73370C2206DC91E69C61B67C61A65C61864C616
        63C61460C4125EC6105CC4105BC4105BC4105EC81059C15E77B6284AA180DFFF
        41BCFF43B8FF3FB4FF3BB1FF36AEFF32A9FF2EA6FF29A1FF259EFF219AFF2097
        FF209AFF229FFF063AA02447A379D3FF40B1FE41AEFC3FABFC39A7FA37A3F933
        A0F92F9CF92C99F92896F82393F81E8EF81D8DF91F92FF053CA2254CA87ED7FF
        45B7FE48B3FC44B0FC40ACFC3CA9FB39A6FA35A2FA319FFA2D9BFA2998F92594
        F92292FB2095FF063FA6254CA884DBFF4CBBFE4DB8FD4AB5FD45B1FC41AEFC3E
        AAFC3AA7FA36A4FA32A0FA2D9DFA2B99FA2998FA2499FF0642AC2554B380DDFF
        4EBFFE50BDFD4FBAFD4CB6FC46B3FC43AFFC3FABFC3DA7FB37A4FA33A1FA2D9C
        FA2396FB259BFF0642AC2554B3AAECFF61C9FE53C2FD4EBDFD4AB9FD46B5FD42
        B1FC3EAEFC3AAAFC36A6FB31A3FA36A2FB4DADFD6FC0FF1450B7295ABCBEF4FF
        95DEFF93D9FE82D3FE71C9FD69C6FD67C4FD62C0FD5FBCFD6ABFFD72C2FD7EC6
        FD7CC5FE80CBFF1452BB285DC2BDF5FF93DFFF94DCFE93DAFE91DAFE90D8FF8D
        D6FF8BD4FF87D1FF83CDFF7EC8FF76C5FF76C4FF7BCBFF1456C2285DC2C0F8FF
        97E1FF95DFFE93DFFFB4EFFFB2EDFFB0EBFFAFE9FFACE6FFA9E4FFA7E2FFA5E0
        FFA7E1FFA9E5FF1B5FCA285DC2BFFBFF99E5FF98E2FF9DE9FF4881D92B60CD2D
        6CD22D6BD12D6BD12C6AD12B6AD02D6BD02D6CD12E6DD385A9E22E6ED5D4FFFF
        A8F1FFA6EFFFB1F9FF1462D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF1866D8B6E5FAB3E8FBB2E5FCA8DEF81667D9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACC8F21F6CDE
        2B72DE2B70DE206CDEA2C1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btSelecionarClick
    end
    object edtCaminho: TEdit
      Left = 13
      Top = 28
      Width = 393
      Height = 21
      TabOrder = 0
    end
  end
  object qryCtes: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'select cte_xml.codigo ,cte_xml.nrcte, cte_xml.xml, cte.data, cte' +
        '.razdes, cte.vtprest, cte.carga  from cte_xml'
      'left join cte on cte.numcte = cte_xml.nrcte'
      'where (cte.status = '#39'100'#39') and (cte.data between :dti and :dtf)')
    Left = 523
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dti'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtf'
        ParamType = ptUnknown
      end>
  end
  object dsCtes: TDataSource
    DataSet = cdsCtes
    Left = 408
    Top = 89
  end
  object cdsCtes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCtes'
    Left = 451
    Top = 89
    object cdsCtesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCtesNRCTE: TIntegerField
      FieldName = 'NRCTE'
    end
    object cdsCtesDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCtesRAZDES: TStringField
      FieldName = 'RAZDES'
      Size = 50
    end
    object cdsCtesVTPREST: TBCDField
      FieldName = 'VTPREST'
      Precision = 18
      Size = 2
    end
    object cdsCtesCARGA: TStringField
      FieldName = 'CARGA'
      Size = 1
    end
    object cdsCtesXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dspCtes: TDataSetProvider
    DataSet = qryCtes
    Left = 488
    Top = 89
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 523
    Top = 137
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 565
    Top = 10
  end
end
