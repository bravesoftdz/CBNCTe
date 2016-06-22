object frmCadVeiculo: TfrmCadVeiculo
  Left = 219
  Top = 145
  Width = 711
  Height = 419
  Caption = 'Cadastro de Ve'#237'culos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 695
    Height = 381
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      OnExit = TabSheet1Exit
      object gridCliente: TDBMarcianoGrid
        Left = 7
        Top = 7
        Width = 639
        Height = 282
        Color = 16250871
        Ctl3D = False
        DataSource = ds
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        ColorZebra1 = 15655127
        ColorZebra2 = 16575460
        Ordena = False
        BuscaIncremental = True
        BuscaCalculado = False
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Title.Caption = 'Placa'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RENAVAM'
            Title.Caption = 'Renavam'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_VEICULO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_RODADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_CARROCERIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UF_VEICULO'
            Title.Caption = 'UF'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEICULO_PROPRIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TARA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE_KG'
            Title.Caption = 'Capacidade em KG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE_M3'
            Title.Caption = 'Capacidade em M3'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 312
        Width = 687
        Height = 41
        Align = alBottom
        TabOrder = 1
        object BtnAlterar: TBitBtn
          Left = 339
          Top = 5
          Width = 130
          Height = 28
          Caption = '<F4> Alterar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BtnAlterarClick
          Glyph.Data = {
            B6030000424DB603000000000000360000002800000012000000100000000100
            18000000000080030000C40E0000C40E00000000000000000000B3A59C7B6D62
            6B5D5173655B766A617D6F637B6D62796C5F77685E76675C75675C75675C7464
            57756A61B5B5B5FDFDFEFFFFFFFFFFFF0000A6866FE0D4CBD1C7BE736F695951
            4B867A72BFB1A8E5D8CFEADFD5E2D6CEDDD2C8DDD3C9E4D7CCA38F7E9F9A96F9
            FBFEFFFFFFFFFFFF0000B69B88FFFFFFFBFDFF6D757A00000039515B6C7F8AA6
            A4A4DED4CCFFFFFCFFFFFFFFFFFFFFFFFFB4A69B9A9590F9FBFEFFFFFFFFFFFF
            0000B49A85FFFFFFFFFFFFCBCDCC6A7476A3C8D66494A23A52583A4A5E9C8E86
            F9F1E8FFFFFFFFFFFFB09D8F9D9794F8FBFDFFFFFFFFFFFF0000B89E89FEFCFC
            FDFAF8FDFFFFE2F6FDF4FDF9ADCBCC319FD30077D40F417D7A6E67EDE2D6FFFF
            FFB7A6999C9693F8FBFDFFFFFFFFFFFF0000BBA08DFDFAF9F9F2EEFFFEFAECF0
            EEA1BDCC86BCDC1AB9FF0CB2FF0489F3013F8D605958E7D9C9C4B3A7A29D9AF7
            FAFCFFFFFFFFFFFF0000BEA490FCF8F6F5F0EBFBF3EDFFFBEC9EC0E23990EA5A
            BBFB24B7FF15B2FF0A90FA004CA15B5D65927962ACA8A4FAFCFFFFFFFFFFFFFF
            0000C3A896F9F5F1F4EBE4F5EDE7F9F1E8F7F5EA89B6EA3589E95CB5F72CB8FE
            16B1FF109BFD0663C11C2D4677706AF3F2F2FFFFFFFFFFFF0000C5AC98F9F2EF
            F3E7DFF4EAE2F3EAE2F7ECE2FDF3E39CBEE63389E950ABF532B8FE0CB2FF14A2
            FD3C6DA24C47469B9991F3F4F0FFFFFF0000CAB19EF8F1EAF1E3D8F2E5DCF2E5
            DCF1E5DCF2E6DCFFF1DCAEC7E23387E747A9FC31B4F84D8CACB6A79989887B37
            384B8B8A8EE9EAE50000CEB4A1F6EDE7EEDFD3EFE2D7EFE2D7EFE2D7EEE2D7EE
            E0D7FFF0D5C1D0E24189DE95A6BBAB947C9490747074971515941C1869929194
            0000D0B7A5F5EBE3EBDACEEDDED1EDDED1EDDED1EDDED2ECDDD1ECDCD1FCE3C8
            CEB7A6AB9B8EA9A7A28C92AC8482DA4040E43D3BB0A5A4B20000D3BBA8F3EBE2
            EBD9CBEDDED2EEDED2EEDDD2EEDED2EEDED2EEDDD3DAC4B5F9E4CEE8E2D38D8D
            BF4D4CD7A4A4FFA8A7F1BFBFE4F9F8FB0000D6BEABF0E4DAE5CFBDE7D2C4E5D1
            C1E5D1C2E5D1C1E5D1C1E4CFC0D1BAA8F6F6F7FFFFFFDCD0D47465AB9E9BE7ED
            EDF4FFFFFFFFFFFF0000D9C0AEF2EAE3E5D4C8E3D3C7E1D0C3E1D1C4E1D0C4E1
            D1C4E0CFC2DECDC1FCF8F8E8DCD5DCCDBCF4F0EBF6F6FBFFFFFFFFFFFFFFFFFF
            0000CEAD95DBC5B4DCC4B4DCC5B4DCC4B4DCC5B4DCC5B4DCC5B4DCC5B4DDC5B6
            D9C0AFD7C7BCF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        end
        object btnIncluir: TBitBtn
          Left = 198
          Top = 5
          Width = 130
          Height = 28
          Caption = '[ F3 ] Incluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnIncluirClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183B78183FF00FFFF00FFFF00FFC7A79CFEEED4F7E3C5F6DFBCF5DBB4F3
            D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
            C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
            97F3D199B78183FF00FFFF00FFFF00FFC7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3
            DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
            C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
            99F3D198B78183FF00FFFF00FFFF00FFCEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5
            E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
            D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
            A9F5D5A3B78183FF00FFFF00FFFF00FFD7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9
            EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
            DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
            B9F8DDB4B78183FF00FFFF00FFFF00FFDEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FB
            F3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
            E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
            C4C6BCA9B78183FF00FFFF00FFFF00FFE5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDF8F3FDF6ECF1E1D5C6A194B59489B08F81B78183FF00FFFF00FFFF00FF
            E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
            70ECA54AC58768FF00FFFF00FFFF00FFECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE4D4D2C89A7FFAC577CD9377FF00FFFF00FFFF00FFFF00FF
            EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
            86FF00FFFF00FFFF00FFFF00FFFF00FFE9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EA
            CBB8EACBB8EACCB9DABBB0B8857AFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      OnExit = TabSheet2Exit
      object pnlDados: TPanel
        Left = 11
        Top = 4
        Width = 665
        Height = 341
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object BtnGravar: TSpeedButton
          Left = 176
          Top = 307
          Width = 149
          Height = 25
          Cursor = crHandPoint
          Caption = ' < F2 > Gravar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B000000010000330000006A534700C6C6
            C600AE8F8000F1F1F10092776A00BCA19300DEDEDE007A635800E6C7B800C9AE
            A100A1827300D6D6D600FFFFFF00B4998C00715A4F00D4B9AC008A6F6200967F
            7400CCCCCC00E7E7E700AC958900CBAC9D00A58A7D00F7F7F700ECCCBD00C8D0
            D400CFB4A700DABAAB009E837500856A5C00A9928600977C6E00C2A79A00765F
            5300BC9D8E008B746800C4A49500A58E8300866E63009C7D6E00B5958600D9BE
            B0008C7063009A7E7100F0D1C200D3B3A400E0C1B2009B8479007B6352007A5E
            5100000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000191900000000
            000000000000000000191900271D0B0B0B12010101011D3127000E0A0A100607
            0A060B12121210070A0E21161604061D160606060B0B041D16210702021F062A
            02060606060B1F2A02071D28281C06060606060606061C04281D262222221616
            1616161616162B2B22262324242424242424242424242424242304150D0D0D0D
            0D0D0D0D0D0D0D0D1504112D05030313060B0B0B0B0B0B052D112F1B200C1703
            03131306060606201B2F162E090C0C0C0C171703031313092E1625081A0C0C0C
            0C0C0C0C0C17031A08251E180F0C0C0C0C0C0C0C0C0C0C0F181E142C290C0C0C
            0C0C0C0C0C0C0C292C14190D0D0D0D0D0D0D0D0D0D0D0D0D0D19}
          ParentFont = False
          OnClick = BtnGravarClick
        end
        object Label15: TLabel
          Left = 15
          Top = 278
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 25
          Top = 277
          Width = 178
          Height = 13
          Caption = 'Campos de preenchimento obrigat'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 21
          Top = 41
          Width = 26
          Height = 14
          Caption = 'Placa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label76: TLabel
          Left = 149
          Top = 41
          Width = 50
          Height = 14
          Caption = 'RENAVAM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label77: TLabel
          Left = 277
          Top = 41
          Width = 86
          Height = 14
          Caption = 'UF licenciamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label84: TLabel
          Left = 149
          Top = 92
          Width = 21
          Height = 14
          Caption = 'Tara'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label85: TLabel
          Left = 277
          Top = 92
          Width = 82
          Height = 14
          Caption = 'Capacidade (KG)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 408
          Top = 92
          Width = 83
          Height = 14
          Caption = 'Capacidade (M3)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label87: TLabel
          Left = 408
          Top = 40
          Width = 59
          Height = 14
          Caption = 'Tipo Ve'#237'culo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label88: TLabel
          Left = 536
          Top = 40
          Width = 61
          Height = 14
          Caption = 'Tipo Rodado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label89: TLabel
          Left = 21
          Top = 92
          Width = 74
          Height = 14
          Caption = 'Tipo Carroceria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label90: TLabel
          Left = 536
          Top = 92
          Width = 79
          Height = 14
          Caption = 'Ve'#237'culo Pr'#243'prio?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 12
          Top = 38
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 140
          Top = 38
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 526
          Top = 90
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 268
          Top = 38
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 399
          Top = 38
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 527
          Top = 38
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 12
          Top = 90
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnCancelar: TBitBtn
          Left = 328
          Top = 307
          Width = 149
          Height = 25
          Caption = '[ F8 ] Cancelar '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = BtnCancelarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
            0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
            B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
            0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
            00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
            05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
            00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
            0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object edtPlaca: TEdit
          Left = 21
          Top = 56
          Width = 106
          Height = 21
          HelpType = htKeyword
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = 8147227
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 1
        end
        object edtRenavam: TEdit
          Left = 149
          Top = 56
          Width = 106
          Height = 21
          HelpType = htKeyword
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = 8147227
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 11
          ParentFont = False
          TabOrder = 2
        end
        object cbUf: TComboBox
          Left = 277
          Top = 56
          Width = 110
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object edtTara: TFocusCurrEdit
          Left = 149
          Top = 108
          Width = 106
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00; ,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Padrao = True
        end
        object edtCapacidadeKG: TFocusCurrEdit
          Left = 277
          Top = 108
          Width = 109
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00; ,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Padrao = True
        end
        object edtCapacidadeM3: TFocusCurrEdit
          Left = 408
          Top = 108
          Width = 106
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00; ,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Padrao = True
        end
        object cbTpVeiculo: TComboBox
          Left = 408
          Top = 56
          Width = 108
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ItemHeight = 14
          ItemIndex = 0
          ParentFont = False
          TabOrder = 7
          Text = 'Tra'#231#227'o'
          OnChange = cbTpVeiculoChange
          OnClick = cbTpVeiculoChange
          Items.Strings = (
            'Tra'#231#227'o'
            'Reboque')
        end
        object cbTpRodado: TComboBox
          Left = 536
          Top = 56
          Width = 110
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 8
          Items.Strings = (
            'N'#227'o Aplic'#225'vel'
            'Truck'
            'Toco'
            'Cavalo Mec'#226'nico'
            'VAN'
            'Utilit'#225'rio'
            'Outros')
        end
        object cbTpCarroceria: TComboBox
          Left = 21
          Top = 108
          Width = 107
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            'N'#227'o Aplicavel'
            'Aberta'
            'Fechada'
            'Graneleira'
            'Porta Container'
            'Sider')
        end
        object cbVeiculoProp: TComboBox
          Left = 536
          Top = 108
          Width = 110
          Height = 22
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 10
          OnChange = cbVeiculoPropChange
          OnClick = cbVeiculoPropChange
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edtCodigo: TFocusCurrEdit
          Left = 6
          Top = 9
          Width = 59
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
          Padrao = True
        end
        object gbDadosProprietario: TGroupBox
          Left = 1
          Top = 142
          Width = 662
          Height = 124
          Caption = ' Dados do propriet'#225'rio do ve'#237'culo '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Visible = False
          object pnlDadosVeiculo: TPanel
            Left = 12
            Top = 24
            Width = 637
            Height = 84
            BevelOuter = bvNone
            TabOrder = 0
            object Label91: TLabel
              Left = 9
              Top = 1
              Width = 52
              Height = 14
              Caption = 'CPF / CNPJ'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label92: TLabel
              Left = 136
              Top = 1
              Width = 10
              Height = 14
              Caption = 'IE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label94: TLabel
              Left = 264
              Top = 1
              Width = 118
              Height = 14
              Caption = 'Nome do propriet'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label95: TLabel
              Left = 136
              Top = 44
              Width = 34
              Height = 14
              Caption = 'RNTRC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label96: TLabel
              Left = 262
              Top = 44
              Width = 92
              Height = 14
              Caption = 'Tipo Propriet'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 1
              Top = 0
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 128
              Top = 0
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 256
              Top = 0
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 257
              Top = 0
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 127
              Top = 42
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 0
              Top = 42
              Width = 7
              Height = 16
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label93: TLabel
              Left = 7
              Top = 44
              Width = 14
              Height = 14
              Caption = 'UF'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object edtCnpjPropVeic: TEdit
              Left = 8
              Top = 16
              Width = 102
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = 8147227
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 0
            end
            object edtIEPropVeic: TEdit
              Left = 136
              Top = 16
              Width = 106
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = 8147227
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 12
              ParentFont = False
              TabOrder = 1
            end
            object edtRNTRCPropVeic: TEdit
              Left = 136
              Top = 58
              Width = 102
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = 8147227
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 4
            end
            object edtNomePropVeic: TEdit
              Left = 264
              Top = 16
              Width = 368
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = 8147227
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 7
              ParentFont = False
              TabOrder = 2
            end
            object cbTipoPropVeic: TComboBox
              Left = 263
              Top = 57
              Width = 106
              Height = 22
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ItemHeight = 14
              ParentFont = False
              TabOrder = 5
              Items.Strings = (
                'TAC Agregado'
                'TAC Independente'
                'Outros')
            end
            object cbUFProvVeic: TComboBox
              Left = 8
              Top = 59
              Width = 103
              Height = 22
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Calibri'
              Font.Style = []
              ItemHeight = 14
              ParentFont = False
              TabOrder = 3
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
          end
        end
      end
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 396
    Top = 200
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 440
    Top = 200
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 14
    end
    object cdsTIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
    end
    object cdsTIPO_RODADO: TIntegerField
      FieldName = 'TIPO_RODADO'
    end
    object cdsTIPO_CARROCERIA: TIntegerField
      FieldName = 'TIPO_CARROCERIA'
    end
    object cdsUF_VEICULO: TStringField
      FieldName = 'UF_VEICULO'
      Size = 2
    end
    object cdsVEICULO_PROPRIO: TStringField
      FieldName = 'VEICULO_PROPRIO'
      Size = 1
    end
    object cdsTARA: TBCDField
      FieldName = 'TARA'
      Precision = 18
      Size = 2
    end
    object cdsCAPACIDADE_KG: TBCDField
      FieldName = 'CAPACIDADE_KG'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object cdsCAPACIDADE_M3: TBCDField
      FieldName = 'CAPACIDADE_M3'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object cdsCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 14
    end
    object cdsIE: TStringField
      FieldName = 'IE'
      Size = 12
    end
    object cdsUF: TStringField
      FieldName = 'UF'
      Size = 12
    end
    object cdsNOME_PROPRIETARIO: TStringField
      FieldName = 'NOME_PROPRIETARIO'
      Size = 100
    end
    object cdsRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 14
    end
    object cdsTIPO_PROPRIETARIO: TSmallintField
      FieldName = 'TIPO_PROPRIETARIO'
    end
  end
  object dsp: TDataSetProvider
    DataSet = qry
    Left = 476
    Top = 200
  end
  object qry: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from veiculos')
    Left = 516
    Top = 200
  end
end
