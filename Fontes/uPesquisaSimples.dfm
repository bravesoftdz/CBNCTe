object frm_PesquisaSimples: Tfrm_PesquisaSimples
  Left = 196
  Top = 185
  Width = 710
  Height = 406
  Caption = 'Pesquisa Simples : : . .'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = c
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 368
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Listagem'
      DesignSize = (
        686
        340)
      object Label1: TLabel
        Left = 9
        Top = 321
        Width = 72
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '<Esc> Cancela'
      end
      object btCadNovo: TSpeedButton
        Left = 417
        Top = 313
        Width = 121
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Cadastrar Novo'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          825B1EA383529E7D489E7D499E7D499E7D499E7D499E7D499E7D499E7D499E7C
          4B9975448D6733FFFFFFFFFFFFFFFFFFA08052FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997745FFFFFFFFFFFFFFFFFF
          A68556FFFFFFF5F4ECF3F1E8F3F1E9F3F1E9F2F0E7EFE8DEEEE9E0EFEBE2F6F3
          EDF0EBE2997238FFFFFFFFFFFFFFFFFFAD9164FFFFFFF6F4EFF5F2EFF5F2EFF5
          F2EFF5F2EFF6F5EDF3F4E8F3F0EAFCFCF9EFE9E099733AFFFFFFFFFFFFFFFFFF
          B39669FFFFFFF6F4EFF5F2EDF5F2EDF5F2EDF5F3EEF5F2EEF7F3EFF5F2EDFDFD
          FAEFE8E099733AFFFFFFFFFFFFFFFFFFB19667FFFFFFF6F4EFF5F2EDF5F2EDF5
          F2EDF7F6EFF6F1EEFCF6F4FAF3F2FEFBFDEFE9DF997339FFFFFFFFFFFFFFFFFF
          B19666FFFFFFF6F4EFF5F2EDF4F1ECF4F0ECF9F3F2FBFAF0FBF9F5FBF4F3FCF7
          F3EFEAE399733BFFFFFFFFFFFFFFFFFFB0956DFFFFFFF7F4EDF4F1ECF6F2EDF9
          F2F2FAFAF4FBFDF6FCFAF9F4EFE7F5F1ECF0EAE29A743CFFFFFFFFFFFFFFFFFF
          B19E7CFFFFFFFCFEF8F9F9F0FBFAF9FAF9FCFBFCFBFAFAFCF3F1E9EAE5DDECE7
          E0E6D8CB9A763CFFFFFFFFFFFFFFFFFFBDA787FFFFFFFDFEFCFAFBF8FAFAFCFA
          FBFEFCFBF9F5F2EAF0EEE7E9E2DAE6DDD4D6CBB49B773EFFFFFFFFFFFFFFFFFF
          C5B190FFFFFFFCFDFDFAF9F9FAFBFDFBFDFAF9F7F0F3EEE4DDD4C5D4BEABD0BC
          A1BEA7849B783FFFFFFFFFFFFFFFFFFFC7B596FFFFFFF8FDFDFAFBFBFBFDFAF6
          F7EBF3F1E9E3D9CAC9B493EBE3DCE1D9C6B79D739D773FFFFFFFFFFFFFFFFFFF
          C8B599FFFFFFFBFDFFFDFDFDF6F7F2EDE7E0EFE4DDD1BEA6CDB99AFFFFFFCFBB
          A1B3966AFAF8F5FFFFFFFFFFFFFFFFFFC9B89BFFFFFFFCFFFFFCF8F3F4EBE5E5
          DFD7E3D6C6CDB696BCAA89D6C8B4AA8A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          CBBDA2FFFFFFFFFFFFFAF7F6F0E8DFDFD7C7D8C6B1C1AA859F824CB2966AFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B393CFBDA4CDBCA1C9B79BC8B69AC5
          AF8DC3AB85AA9161AA8C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Visible = False
        OnClick = btCadNovoClick
      end
      object Label2: TLabel
        Left = 105
        Top = 321
        Width = 116
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '<Duplo Click> Seleciona'
      end
      object BitSelecionar: TBitBtn
        Left = 547
        Top = 313
        Width = 136
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = '<Enter> Selecionar'
        ModalResult = 1
        TabOrder = 1
        OnClick = BitSelecionarClick
        Glyph.Data = {
          52020000424D5202000000000000520100002800000010000000100000000100
          08000000000000010000120B0000120B0000470000004700000000000000FFFF
          FF00FF00FF00A467690092635D00986B6500A7756800B17E6B0098746800FEFB
          FA008B3512008C3815008C381600BB846E00E1754500CB917300C58C7000D7B0
          9C00D1AF9E00D4987600CBA59100CAA59000CCA79300CCA99500CEAA9700CF8E
          6800D4A78C00CAA38B00A5999100A69A9200FBF8F600FEBD8200A1918300A497
          8B00A5998E00AA9F9500A3968900FAE7D400F8F4F000A4938100A1938400FAE7
          D300FFE2BF00FFE2C000FFE3C100F8E6D000A1958700F8E6D100FAE9D500FEEB
          D100FAF7F300FFEED500F7EAD800F2E2C700E1D3BA00F0E2C900EAE2D400F8EF
          DE00FCF3DE00FBF6E900FFFCF400F7EDD000FBFAF700FFFEFA00FFFCEF00FCFA
          F000FFFFFE00D7D8CA00FEFFFF00E0E9EA00FEFEFE0002020403030303030303
          0303030302020202043A33333333313131313D030202020204341F1F1F1F1F1F
          1F1F35030202020204393025292F2D2D2D2D37030202020204381F1F1F1F1F1F
          1F1F36030202020208231D1C2221242E2820270502020C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0206450E0E0E0E0E0E0E0E4303020A0B0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C02020711121218171614151B1A03020202020D012C2B2A2A2A2A
          2A2A40030202020210011F1F1F1F1F1F1F1F3B03020202020F01444446093E1E
          322641030202020213011F1F1F1F1F1F1F1F3C03020202021301010101010101
          423F0103020202021319191919191919191919030202}
      end
      object DBMarcianoGrid1: TDBMarcianoGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 309
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 16250871
        Ctl3D = False
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBMarcianoGrid1DrawColumnCell
        OnDblClick = DBMarcianoGrid1DblClick
        OnKeyPress = DBMarcianoGrid1KeyPress
        ColorZebra1 = 15655127
        ColorZebra2 = 16575460
        Ordena = True
        BuscaIncremental = True
        Configuravel = False
        LoadAndSaveAutomatically = False
        BuscaCalculado = False
      end
    end
  end
  object QryPesquisa: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 148
    Top = 80
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 260
    Top = 80
  end
  object DataSetProvider: TDataSetProvider
    DataSet = QryPesquisa
    Left = 204
    Top = 80
  end
  object DataSource: TDataSource
    DataSet = cdsPesquisa
    Left = 316
    Top = 80
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 260
    Top = 144
  end
end
