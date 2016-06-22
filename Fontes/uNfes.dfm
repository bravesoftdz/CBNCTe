object frmNfes: TfrmNfes
  Left = 23
  Top = 76
  BorderStyle = bsSingle
  Caption = 'NF-es dispon'#237'veis : : . .'
  ClientHeight = 518
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 15
    Top = 434
    Width = 281
    Height = 13
    Caption = '[Barra de espa'#231'o]  Seleciona as NF-es desejadas'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GridNFes: TDBMarcianoGrid
    Left = 16
    Top = 56
    Width = 953
    Height = 377
    Color = 16250871
    DataSource = dsNFes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GridNFesDrawColumnCell
    OnKeyDown = GridNFesKeyDown
    ColorZebra1 = 15655127
    ColorZebra2 = 16575460
    Ordena = True
    BuscaIncremental = True
    BuscaCalculado = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFDEST'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUNDEST'
        Title.Caption = '  Cidade'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTNF'
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL DA NOTA'
        Width = 157
        Visible = True
      end>
  end
  object btbuscar: TBitBtn
    Left = 296
    Top = 22
    Width = 145
    Height = 25
    Caption = '< F2 > Buscar'
    TabOrder = 1
    OnClick = btbuscarClick
    Glyph.Data = {
      B6030000424DB603000000000000360000002800000012000000100000000100
      18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFEFEFEDDDDDDB2B2B2CACACAFBFBFB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8D0D0D0B9
      B9B9C0C0C0E8E8E80000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF9F9F9E5E5E5CCCCCCB9B9B9C2C2C2D1D1D1E6E6E6
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F2F2F2F9F9F9FFFFFF
      FFFFFFDEDEDEC6C6C6B9B9B9C5C5C5D2D2D2E0E0E0FBFBFB0000FFFFFFFFFFFF
      FFFFFFF6F6F6D7D7D7B7B7B7ABAAAAA9A9A8B0B0B0C4C5C5E5E5E5ECECECC5C5
      C5C9C9C9D3D3D3E1E1E1FCFCFCFFFFFF0000FFFFFFFFFFFFE4E4E4B6B6B69D9D
      9CB1B2B2C6C8CCCCD1D5C2C3C5ACACACA8A8A8CCCCCCEFEFEFDDDDDDE3E3E3FC
      FCFCFFFFFFFFFFFF0000FFFFFFE5E5E5AEAEAEA4A4A4DBDBDAF7F8F8FFFCF6FF
      F8F0FDFDFBF2F2F2CACACAADADADCACACAF3F3F3FDFDFDFFFFFFFFFFFFFFFFFF
      0000F1F1F1BBBBBBA5A5A4E8E8E9FFFFFFFFFBF6E8BC77DA9A38F3E0C6FFFFFF
      FDFEFFD3D4D3B5B5B5DCDCDCFEFEFEFFFFFFFFFFFFFFFFFF0000C7C7C7A7A7A7
      C7C7C8FFFFFDFAF2DEF7EBCDEDC56AE6B03BEFD6A6FAF0E2FEF9EEF8F9FAC5C5
      C7C3C3C3F7F7F7FFFFFFFFFFFFFFFFFF0000B5B5B5A4A4A4E2E4E8FCF3E3DFA5
      39EBB840F3D369FADA77F1C756E5AB26F1D292FFFFFFD2D4D8C0BFBEF3F3F3FF
      FFFFFFFFFFFFFFFF0000B9B9B9A6A6A6DCDEE0FEF8F0E1BA7EE9BF76E8BD60EE
      C556F4D87DF0D684F7EABFFFFFFFD0D2D4C4C2C3F6F5F5FFFFFFFFFFFFFFFFFF
      0000E2E2E2ACACACBBBBBBFFFFFFFEFFFFF6F1F1D19342CA7000F0DCBAFEFFFF
      FFFFFFEFF0F0C5C5C5D3D3D4FBFBFBFFFFFFFFFFFFFFFFFF0000FFFFFFCCCCCC
      A9A9A9D1D2D2FFFFFFFFFFFFEAC69FE1A971FCEFE2FFFFFFF2F2F3CACACAC4C4
      C4F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF8F8F8C2C2C2ACACACCACA
      CAE6E6E7F8FAFEF9FFFFF0F2F5E0DFDEC9C9C8C2C3C2E7E7E7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF7F7F7D8D8D8BEBEBEBCBBBCC6C7C9C8
      CCCEC6C7C9C6C6C6D6D6D6F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DDDDDDC7C7C6C5C5C4D7D6D6F0F0F0
      FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
  end
  inline frmPer1: TfrmPer
    Left = 16
    Top = 8
    Width = 264
    Height = 38
    AutoSize = True
    TabOrder = 0
  end
  object lbConexao: TStaticText
    Left = 0
    Top = 474
    Width = 985
    Height = 4
    Align = alBottom
    Color = 14540253
    ParentColor = False
    TabOrder = 3
    Transparent = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 478
    Width = 985
    Height = 40
    Align = alBottom
    TabOrder = 4
    object btnConfirmar: TBitBtn
      Left = 352
      Top = 8
      Width = 145
      Height = 25
      Caption = '<ENTER> Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
      Glyph.Data = {
        FE040000424DFE04000000000000360000002800000016000000120000000100
        180000000000C8040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEAEBAFBCAF72
        8F7446694A5C745E959D95DFD9DEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0A9BBAA619765
        509D5653B15E56B86354A95B49904E4E7A51989F97EDE7ECFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E7E4719A7346A0
        4C37BC4435CA493FD15740D35A3ACE503CCB4F46BC523C8441617261DDD5DCFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEFED6B996E36
        A83F16B82405B01800AF1400B11711BA2D12B82A04AF190FB61F33C4402A8430
        6B996EEDEFEDFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFDFCFD95B597
        3EA6460BB21800A50D00A2063ABB469EDEA636BD4403A70D0BAA1A04A71102AA
        0F2CC0383EA64695B597FDFCFDFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFD3DC
        D34F9D551BB42700A50D00A1052CB233D8F1DAFFFFFFBEE8C210A61500A2070A
        A71603A40F0AB1171BB4274F9D55D3DCD3FFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFF7CA57E35A73F0AAE15009D0029B331D3EFD6FFFFFFFFFFFFFFFFFF82D388
        009F0103A50E01A40E00A2060AAE1535A73F7CA57EFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF4C8C4F2BAF36009D0023AF2BDDF5DFFFFFFFD8ECD997CC9BFBFD
        FCFBFEFC5AC4631EAE2826B03103A20C009D002BAF364C8C4FFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF2A7A302DB63738B9438FD496D3E5D4D5E8D768C3701C
        A527B0DAB3FFFFFFE7F7E965C86D6FCA7867C76F38B9432DB6372A7A30FFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF2D7D336CCA74A2DEA89EDBA57AC58066BB6E
        54C25E42BD4C51B758E3F1E3FFFFFFDAF2DC7ED1869CDAA2A2DEA86CCA742D7D
        33FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF5B965F6EC175A3E2AA98D99E8ED8
        957ED18578CF7F6ECB7652C15B86CB8BF6F9F6FFFFFFC8EBCB93D799A3E2AA6E
        C1755B965FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9DBC9E51A75798E19F9B
        D9A097D99D95D99B8CD59285D38C80D28773C97BC0E1C3FFFFFFF5FBF6AAE4B0
        98E19F51A7579DBC9EFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF1F2F15F9D63
        6EC876A4E3AB99D99E96D99C97D99D95D99B94D89A94D99A92D498B6D9B9BFE1
        C29AE8A16EC8765F9D63F1F2F1FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC4D3C44E9B537DD586A5E3AB9BDAA197D89D98D99D98D99D98DA9E97D99D8A
        CF9088D88F58B55F4E9B53C4D3C4FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA5C0A74F9D546EC87799E29FA1E0A69ADBA09ADA9F9CDDA2
        A0E4A78BDE945CB2635B945EA5C0A7FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3D3C45F9E6351A85768BF7084D18B8ED9
        9577C97E59B2614E9E5491B593ECEEECFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF1EE9EBC9F5A975F2D
        7E3222772740874473A275D0DCD0FDFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
    end
    object btnCancelar: TBitBtn
      Left = 504
      Top = 8
      Width = 145
      Height = 25
      Caption = '<ESC> Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        76020000424D76020000000000003600000028000000100000000C0000000100
        18000000000040020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF67AADE5398D8CFD9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5295D9024787084889FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3E92D9074C92115FA81766B0B5DAF0FFFFFFCAE6EFCAE6EFCBE9F0CBE9
        F0CCDFEFCAEFE2FFFFFFFFFFFFD4E4F52D7DD8074FA01162B41565B61360B61E
        77C91F74CC2075CD1F79CC1F79CC1F74CC2070CB1973C6499CDCFFFFFF277BDA
        0A57AD1363BE1469C11368C01368C00E61B50C5FB30C5FB30C5FB30C5FB30C5F
        B30C5FB30A58AF1569C0428DE1085AB7126CC9126CC91368C81368C81368C813
        68C8146DC91368C81368C81368C8146DC91469C91467C51A75D32070DD0C64C7
        156ED2136CD01471D1146DD1146DD1146DD1146DD1146DD1146DD1146DD1146D
        D11367D0146CCF1E78DDA8CAF10F63CC0D5CC81364D20F61D01263D11263D10E
        5FCD0E5FCD0E5FCD0E5FCD0E5FCD0E5FCD0D5ECC0C5CC9166CD7FFFFFF9DB9F2
        0C55CD0753C6105ED30F5DD20F5DD20B57CA0A56C70A56C70A56C70A56C70A56
        C70A56C90753C41B6FE2FFFFFFFFFFFFB8CBF5115AD4044CC30D58D40E58D383
        ACF098B7F194B5F194B5F194B7F194B5F194B3F193B4F0BED1F5FFFFFFFFFFFF
        FFFFFFC5D7F81451DB0049C20544C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4DDF9235FE61952E4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dsNFes: TDataSource
    DataSet = cdsNFes
    Left = 792
  end
  object cdsNFes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFes'
    Left = 832
    object cdsNFesANTT: TStringField
      FieldName = 'ANTT'
    end
    object cdsNFesCNPJEMI: TStringField
      FieldName = 'CNPJEMI'
      Size = 14
    end
    object cdsNFesIEEMI: TStringField
      FieldName = 'IEEMI'
      Size = 14
    end
    object cdsNFesRAZEMI: TStringField
      FieldName = 'RAZEMI'
      Size = 60
    end
    object cdsNFesFANTEMI: TStringField
      FieldName = 'FANTEMI'
      Size = 60
    end
    object cdsNFesCEPEMI: TStringField
      FieldName = 'CEPEMI'
      Size = 8
    end
    object cdsNFesLOGREMI: TStringField
      FieldName = 'LOGREMI'
      Size = 60
    end
    object cdsNFesNUMEROEMI: TStringField
      FieldName = 'NUMEROEMI'
    end
    object cdsNFesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsNFesMUNEMI: TStringField
      FieldName = 'MUNEMI'
      Size = 60
    end
    object cdsNFesUFEMI: TStringField
      FieldName = 'UFEMI'
      Size = 2
    end
    object cdsNFesCNPJDEST: TStringField
      FieldName = 'CNPJDEST'
      Size = 14
    end
    object cdsNFesIEDEST: TStringField
      FieldName = 'IEDEST'
      Size = 14
    end
    object cdsNFesNOMEDEST: TStringField
      FieldName = 'NOMEDEST'
      Size = 100
    end
    object cdsNFesFONEDEST: TStringField
      FieldName = 'FONEDEST'
    end
    object cdsNFesCEPDEST: TStringField
      FieldName = 'CEPDEST'
      Size = 8
    end
    object cdsNFesLOGRDEST: TStringField
      FieldName = 'LOGRDEST'
      Size = 60
    end
    object cdsNFesNUMERODEST: TStringField
      FieldName = 'NUMERODEST'
    end
    object cdsNFesBAIRRODEST: TStringField
      FieldName = 'BAIRRODEST'
      Size = 60
    end
    object cdsNFesCODMUNDEST: TStringField
      FieldName = 'CODMUNDEST'
      Size = 7
    end
    object cdsNFesMUNDEST: TStringField
      FieldName = 'MUNDEST'
      Size = 60
    end
    object cdsNFesUFDEST: TStringField
      FieldName = 'UFDEST'
      Size = 2
    end
    object cdsNFesEMAILDEST: TStringField
      FieldName = 'EMAILDEST'
      Size = 60
    end
    object cdsNFesCODMUNDEST1: TStringField
      FieldName = 'CODMUNDEST1'
      Size = 7
    end
    object cdsNFesMUNDEST1: TStringField
      FieldName = 'MUNDEST1'
      Size = 60
    end
    object cdsNFesUFDEST1: TStringField
      FieldName = 'UFDEST1'
      Size = 2
    end
    object cdsNFesPERREDCFRETEICMS: TBCDField
      FieldName = 'PERREDCFRETEICMS'
      Precision = 18
      Size = 2
    end
    object cdsNFesPICMSFRETEM: TBCDField
      FieldName = 'PICMSFRETEM'
      Precision = 18
      Size = 2
    end
    object cdsNFesVLRICMSFRETEM: TBCDField
      FieldName = 'VLRICMSFRETEM'
      Precision = 18
      Size = 2
    end
    object cdsNFesTOTNF: TBCDField
      FieldName = 'TOTNF'
      Precision = 18
      Size = 2
    end
    object cdsNFesPESOLIQ: TBCDField
      FieldName = 'PESOLIQ'
      Precision = 18
    end
    object cdsNFesPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNFesID: TStringField
      FieldName = 'ID'
      Size = 50
    end
    object cdsNFesDTEMI: TDateField
      FieldName = 'DTEMI'
    end
    object cdsNFesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsNFesDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsNFesSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsNFesNRNOTA: TIntegerField
      FieldName = 'NRNOTA'
    end
    object cdsNFesSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object cdsNFesIMPORTACAO: TStringField
      FieldName = 'IMPORTACAO'
      Size = 1
    end
  end
  object dspNFes: TDataSetProvider
    DataSet = qryNFes
    Left = 872
  end
  object qryNFes: TMDOQuery
    Database = dm.DBRemoto
    Transaction = dm.TransactionR
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'select ANTT, CNPJEMI, IEEMI, RAZEMI, FANTEMI, CEPEMI, LOGREMI, N' +
        'UMEROEMI, BAIRRO, MUNEMI, UFEMI,   '
      
        '       CNPJDEST, IEDEST, NOMEDEST, FONEDEST, CEPDEST, LOGRDEST, ' +
        'NUMERODEST, BAIRRODEST, CODMUNDEST,'
      
        '       MUNDEST, UFDEST, EMAILDEST, CODMUNDEST, MUNDEST, UFDEST, ' +
        'PERREDCFRETEICMS, PICMSFRETEM,     '
      
        '       VLRICMSFRETEM, TOTNF, PESOLIQ, PLACA, ID, DTEMI, DATA, ST' +
        'ATUS, NRNOTA, SERIE, IMPORTACAO, CODIGO                         ' +
        '            '
      
        '   from nfe                                                     ' +
        '                                   '
      
        ' where nfe.ctecriado <> '#39'S'#39' and nfe.ufdest <> '#39'PR'#39' and nfe.tpnf ' +
        '= 1 and nfe.status = 100       '
      
        '   and nfe.data between :dti and :dtf                           ' +
        '                                   ')
    Left = 912
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
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 957
    Top = 2
  end
end
