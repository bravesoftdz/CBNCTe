object frmCadCli: TfrmCadCli
  Left = 216
  Top = 92
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de remetente / destinat'#225'rio'
  ClientHeight = 473
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 829
    Height = 473
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      OnExit = TabSheet1Exit
      object BtnAlterar: TBitBtn
        Left = 131
        Top = 409
        Width = 120
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
        Left = 6
        Top = 409
        Width = 119
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
      object btnBloq: TBitBtn
        Left = 295
        Top = 409
        Width = 183
        Height = 27
        Caption = '<F5> Bloquear / Desbloquear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = btnBloqClick
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000C8C8C8C3C3C3
          B6B6B6AEAEAEADADADADADADADADADADADADADADADADADADADADADADADADAFAF
          AFB7B7B7C3C3C3C8C8C8C8C8C8C7C7C7C4C4C4C3C3C3C3C3C3C3C3C3C3C3C3C3
          C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C5C5C5C7C7C7C8C8C8C8C8C8B5B5B5
          8F8F8F7979797777777777777777777777777777777777777777777777777A7A
          7A929292B8B8B8C8C8C8C8C8C8C4C4C4BCBCBCB8B8B8B8B8B8B8B8B8B8B8B8B8
          B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8BDBDBDC5C5C5C8C8C8C8C8C82C577B
          27709F256F9C256F9C256F9C256F9C256F9C256F9C256F9C25709D256F9D1F36
          4B7B7B7BAFAFAFC8C8C8C8C8C8A9B2B9A8B7C0A8B6BFA8B6BFA8B6BFA8B6BFA8
          B6BFA8B6BFA8B6BFA8B7BFA8B6BFA6ABAFB8B8B8C3C3C3C8C8C8C8C8C8329CD5
          36EFFF31EDFF32ECFF32ECFF32ECFF32ECFF32ECFF32ECFF32EEFF3BECFF2362
          90787878AEAEAEC8C8C8C8C8C8AABFCBABD0D3AACFD3AACFD3AACFD3AACFD3AA
          CFD3AACFD3AACFD3AAD0D3ACCFD3A7B4BDB8B8B8C3C3C3C8C8C8C8C8C82E98D1
          25DFFF22DCFF1EDBFF1DDEFF1EE2FF1FE2FF1FDDFF1FDBFF1EDDFF2BDEFF2362
          8E787878AEAEAEC8C8C8C8C8C8A9BECAA7CDD3A7CCD3A6CCD3A6CCD3A6CDD3A6
          CDD3A6CCD3A6CCD3A6CCD3A9CCD3A7B4BCB8B8B8C3C3C3C8C8C8C8C8C83496D0
          63D9FF5FD3FF50D1FF23B7F8169FDC119AD913BDFC15CDFF13CCFF22D0FF2261
          8D787878AEAEAEC8C8C8C8C8C8AABECAB4CBD3B3CAD3B0CAD3A7C5D2A4C0CCA3
          BFCBA4C6D2A4C9D3A4C9D3A7CAD3A7B3BCB8B8B8C3C3C3C8C8C8C8C8C83696D1
          78D9FF72D4FF67D4FF4EB2EF35363E20334910B4FC07BDFF07BAFF17C2FF2261
          8E787878AEAEAEC8C8C8C8C8C8ABBECAB8CBD3B7CAD3B5CAD3B0C4D0ABABACA6
          AAAFA3C4D2A1C6D3A1C5D3A5C7D3A7B3BCB8B8B8C3C3C3C8C8C8C8C8C83796D2
          80DAFF7BD6FF6DD3FF6AC7F73C4147324C5E19B9FD00B0FF01B0FF12B9FF2262
          8E787878AEAEAEC8C8C8C8C8C8ABBECABACCD3B9CBD3B6CAD3B5C8D1ACADAEAA
          AFB3A5C5D3A0C3D3A0C3D3A4C5D3A7B4BCB8B8B8C3C3C3C8C8C8C8C8C83C98D2
          91E0FF8CDBFF7EDCFF84B8D6312925241D1B49B5EC10B7FF14B5FF23BEFF2463
          8F787878AEAEAEC8C8C8C8C8C8ACBECABDCDD3BCCCD3B9CCD3BAC5CBAAA8A7A7
          A6A5AFC4CFA3C5D3A4C4D3A7C6D3A7B4BDB8B8B8C3C3C3C8C8C8C8C8C8449DD4
          ACEAFFA5E4FF94E0FF9DDEFB8A969D879DA95ECFFF2EBFFF32C0FF3EC9FF2765
          90848484B3B3B3C8C8C8C8C8C8AEBFCAC2CFD3C1CED3BECDD3BFCCD2BCBEBFBB
          BFC2B3C9D3A9C6D3AAC6D3ACC8D3A8B4BDBBBBBBC4C4C4C8C8C8C8C8C83B92CB
          80D5FA77CCF56FC8F471D1FF7BD9FF73D5FF51C3FA43BAF346BDF653CAFF2661
          8CA2A2A2BEBEBEC8C8C8C8C8C8ACBDC9BACBD2B8C9D1B6C8D1B7CAD3B9CBD3B7
          CBD3B0C7D2ADC5D1AEC6D1B1C8D3A8B3BCC0C0C0C6C6C6C8C8C8C8C8C87D98B5
          54738B80A0BA7999B31D394F3A6389456F97516B818BA7BF7D99B12C455B798A
          9CBDBDBDC6C6C6C8C8C8C8C8C8B9BEC4B1B7BCBAC0C5B8BFC4A6ABB0ACB4BBAE
          B6BEB0B5BABCC1C6B9BFC3A8AEB2B8BBBFC6C6C6C8C8C8C8C8C8C8C8C8C8C8C8
          A3A1A0B7AFABE3DCD84E47455F5F5F6868687E7773EAE3DF9E9693706F6FB3B3
          B3C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C1C0C0C5C3C2CDCCCBB0AEAEB3B3B3B4
          B4B5B9B8B7CFCDCDC0BEBDB6B6B6C4C4C4C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C5C5C5828181D8D7D7D3D0D07F7B798B8785DBDADAD1CECE4F4E4EA3A3A3C0C0
          C0C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BABABACBCBCBCACACAB9B9B8BC
          BBBBCCCCCCCAC9C9B0B0B0C1C1C1C6C6C6C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8A6A6A6949191D7D5D5EBEAEAEAE8E8CECCCC838080919191BEBEBEC7C7
          C7C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C1C1C1BEBDBDCBCBCBCFCFCFCF
          CECEC9C9C9BAB9B9BDBDBDC6C6C6C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
          C8C8C8C8C8C8A5A5A5807E7E9D9A9A9996967A7979A6A7A7C0C0C0C7C7C7C8C8
          C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C1C1C1BAB9B9BFBFBFBF
          BEBEB8B8B8C1C1C1C6C6C6C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8}
        NumGlyphs = 2
      end
      object gridCliente: TDBMarcianoGrid
        Left = 7
        Top = 7
        Width = 806
        Height = 391
        Color = 16250871
        Ctl3D = False
        DataSource = dsCli
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = gridClienteDrawColumnCell
        ColorZebra1 = 15655127
        ColorZebra2 = 16575460
        Ordena = True
        BuscaIncremental = True
        BuscaCalculado = False
        Columns = <
          item
            Expanded = False
            FieldName = 'FLAG'
            Title.Caption = 'Status'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 344
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFAN'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTNASCI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELULAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTABERT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTBLOQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTALTER'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 549
        Top = 399
        Width = 266
        Height = 45
        Caption = ' Status do Cliente '
        TabOrder = 4
        object Image1: TImage
          Left = 24
          Top = 19
          Width = 20
          Height = 20
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EAE3E5CCBAC69062BC79
            35B76F22B76F22BE7726BB7624B56E21B9722ABF8348CC9D72DDBEA8EDDCD1FF
            FFFFFFFFFFC08652CC9646D89824DC9B22E0A126DFA226DD9E27DE9F27E0A127
            E0A027DC9A27D79627D18E25B7702CFFFFFFFFFFFFC38A56DEB469E2AC39DA9C
            2BD89B33D99D34D99D33D99D35D99D35D99F35DBA034E0A637E6AF3CBE7B32FF
            FFFFFFFFFFD0A680C99558ECC671DEA334DB9F37E0A848DFA742DFA741DFA743
            DDA541DFA944E6B247D1902FCC9C6FFFFFFFFFFFFFFFFFFFD7B293DFBA80EFCC
            79E3AE44DFA53EE3B04FE3B04FE1AD4DE4B251ECBE59E4AF48C48544EFE1D9FF
            FFFFFFFFFFFFFFFFFFFFFFD3A881DDB67EF0D48DECC267E4B350E5B657E9BB5F
            EEC262E0AA4AC88B4AE7D3C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9B8
            9BCC985CE4B965EEC66DEBC067EABD61D19640CA966AF3EAE7FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CBB2DBAB5EE9BD5CEFC872ECC371EDC56C
            E2B562DEB88BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5DCE0C1
            9EF2D9A1F5D78BEDC772EDC773F3CE79EDC568DCAD65E9D4C5FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF4E8DCE9D2B3F8E7C3F9E5B5F4D9A1F4D79CF7DDA0
            F2D893E0B977E7CDB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5D6E4C8
            A0F7E3B9FAE6B5F5DEACF7E3B6FBEBC0F7E4B3E5C38BE9D1B6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CDA7F2E2BEFDEFC8F6DFA9F4DBA5FCEBBE
            F6E4B2E5C591F2E3D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED9
            C0E1BD85F4E4BEFFFFE6FFFADBF9E9BCE6C386E6CAA4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E8D6E2BD8BDCB06EDEB673E0BC84
            EFDEC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
        end
        object Image2: TImage
          Left = 152
          Top = 20
          Width = 20
          Height = 20
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFF3469B51B6EC7236FC72270CD216FD01D6ED4166BD8
            166CDC126BE21574E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A7FBCAAD4E7A0FD
            FF52C6FF35B3FF2BA7FF20A0FF1796FF1A97FF1993FF36AFFF2689EEFFFFFFFF
            FFFFFFFFFFFFFFFF5076B79CC8E1C2FCFF92D5FF6FC0FF4EACFF4BAEFF47ADFF
            4BB2FF3AA8FF4AB8FF1D81EDFFFFFFFFFFFFFFFFFFFFFFFF5077B895C6E2B2F4
            FF82CDFF66BCFF4FAEFF51B3FF53B7FF53BDFF4AB8FF5EC6FF2785EDFFFFFFFF
            FFFFFFFFFFFFFFFF5177B898C6E2B3F6FF85CFFF68BEFF4FAEFF50B1FF4FB5FF
            4EB9FF43B2FF57C0FF2382EDFFFFFFFFFFFFFFFFFFFFFFFF5177B898C7E2B3F7
            FF86D0FF69BEFF52AEFF52B2FF4FB5FF4DB7FF42B0FF55BFFF2384EDFFFFFFFF
            FFFFFFFFFFFFFFFF5178B898C8E2B9FAFF8CD4FF74C4FF5EB7FF57B3FF4DAEFF
            43ACFF32A2FF44B5FF1D81EDFFFFFFFFFFFFFFFFFFFFFFFF5076B799C8E1BBF5
            FF8ACFFF6DBFFF57B1FF54B1FF50B2FF4CB6FF3EADFF4CBBFF1D7FEDFFFFFFFF
            FFFFFFFFFFFFFFFF5577B7A6CCE5BEFFFF83ECFF69DCFF58CEFF47BFFF39B0FF
            28A0FF148FFF40B5FF2C8CEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D92C74BB3
            E3369ADD389AE33797E52E8EE62184E90773EB0066ED1883F5FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFB9B1B0E8E8E5BBB4B4FFFFFFFFFFFFFFFFFF908481
            CFCDCB6F655EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB2B1FFFF
            FFBBB4B4FFFFFFFFFFFFFFFFFF8F8480CFCDCB6F655EFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFBAAFADFFFFFFBBB4B4F7F5F5FFFFFFFFFFFF7D7673
            D6D4D26F6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B1B4FFFF
            FFF3F0F0998F92736A6E766E72B5B3B2D6D4D2756F71FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2A9ADFFFFFFFFFFFFF7F8F6F4F4F3F5F3F0
            9B9597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB3ABB0BAB4B7B5AEAFB1AAAE9B9497FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
        end
        object Label7: TLabel
          Left = 52
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Normal'
        end
        object Label20: TLabel
          Left = 180
          Top = 22
          Width = 51
          Height = 13
          Caption = 'Bloqueado'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      OnExit = TabSheet2Exit
      object pnlDados: TPanel
        Left = 3
        Top = 4
        Width = 816
        Height = 438
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 22
          Top = 248
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object el: TLabel
          Left = 651
          Top = 106
          Width = 19
          Height = 13
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 22
          Top = 198
          Width = 82
          Height = 13
          Caption = 'Fone Residencial'
        end
        object Label3: TLabel
          Left = 142
          Top = 198
          Width = 73
          Height = 13
          Caption = 'Fone Comercial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 278
          Top = 198
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object Label5: TLabel
          Left = 692
          Top = 151
          Width = 56
          Height = 13
          Caption = 'Nascimento'
        end
        object Label6: TLabel
          Left = 718
          Top = 7
          Width = 83
          Height = 13
          Caption = 'Data do Cadastro'
        end
        object Label19: TLabel
          Left = 348
          Top = 107
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BtnGravar: TSpeedButton
          Left = 258
          Top = 407
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
        object Label16: TLabel
          Left = 22
          Top = 150
          Width = 83
          Height = 13
          Caption = 'C'#243'digo da cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 127
          Top = 150
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 241
          Top = 14
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
          Left = 487
          Top = 60
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
          Left = 73
          Top = 107
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
          Left = 389
          Top = 108
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
          Left = 439
          Top = 108
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
          Left = 610
          Top = 60
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
        object Label14: TLabel
          Left = 110
          Top = 152
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
        object Label15: TLabel
          Left = 7
          Top = 414
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
          Left = 17
          Top = 413
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
        object edtCod: TLabelFocusEdit
          Left = 22
          Top = 30
          Width = 65
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          Enabled = False
          TabOrder = 17
          Text = '0'
          Padrao = True
        end
        object edtFlag: TLabelFocusEdit
          Left = 94
          Top = 30
          Width = 74
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Situa'#231#227'o'
          TabOrder = 18
          Text = 'BLOQUEADO'
          Padrao = True
        end
        object edtRaz: TLabelFocusEdit
          Left = 174
          Top = 30
          Width = 377
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          EditLabel.Width = 63
          EditLabel.Height = 13
          EditLabel.Caption = 'Raz'#227'o Social'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlack
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 0
          Padrao = True
        end
        object edtFan: TLabelFocusEdit
          Left = 22
          Top = 76
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome Fantasia'
          MaxLength = 40
          TabOrder = 1
          Padrao = True
        end
        object memObs: TMemo
          Left = 22
          Top = 263
          Width = 761
          Height = 58
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 16
        end
        object edtCpf: TLabelFocusEdit
          Left = 406
          Top = 76
          Width = 145
          Height = 21
          EditLabel.Width = 79
          EditLabel.Height = 13
          EditLabel.Caption = 'C.P.F. / C.N.P.J.'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlack
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          MaxLength = 14
          TabOrder = 2
          Padrao = True
        end
        object edtRg: TLabelFocusEdit
          Left = 559
          Top = 76
          Width = 145
          Height = 21
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'R.G. / I.E.'
          MaxLength = 15
          TabOrder = 3
          Padrao = True
        end
        object edtEnder: TLabelFocusEdit
          Left = 22
          Top = 122
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlack
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 43
          ParentFont = False
          TabOrder = 4
          Padrao = True
        end
        object edtCep: TFocusMaskEdit
          Left = 651
          Top = 122
          Width = 80
          Height = 21
          MaxLength = 8
          TabOrder = 7
          Padrao = True
        end
        object edtPais: TLabelFocusEdit
          Left = 561
          Top = 167
          Width = 123
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 22
          EditLabel.Height = 13
          EditLabel.Caption = 'Pa'#237's'
          MaxLength = 20
          TabOrder = 9
          Padrao = True
        end
        object edtFoneRes: TFocusMaskEdit
          Left = 22
          Top = 214
          Width = 105
          Height = 21
          EditMask = '(##)#####-####;1; '
          MaxLength = 14
          TabOrder = 12
          Text = '(  )     -    '
          Padrao = True
        end
        object edtFoneCom: TFocusMaskEdit
          Left = 142
          Top = 214
          Width = 121
          Height = 21
          EditMask = '(##)#####-####;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 13
          Text = '(  )     -    '
          Padrao = True
        end
        object edtCelular: TFocusMaskEdit
          Left = 278
          Top = 214
          Width = 113
          Height = 21
          EditMask = '(##)#####-####;1; '
          MaxLength = 14
          TabOrder = 14
          Text = '(  )     -    '
          Padrao = True
        end
        object edtDtNasci: TFocusMaskEdit
          Left = 692
          Top = 167
          Width = 87
          Height = 21
          EditMask = '##/##/####;1; '
          MaxLength = 10
          TabOrder = 10
          Text = '  /  /    '
          Padrao = True
        end
        object edtDtCad: TFocusMaskEdit
          Left = 718
          Top = 23
          Width = 87
          Height = 21
          Enabled = False
          EditMask = '##/##/####;1; '
          MaxLength = 10
          TabOrder = 11
          Text = '  /  /    '
          Padrao = True
        end
        object edtEmail: TLabelFocusEdit
          Left = 406
          Top = 214
          Width = 377
          Height = 21
          CharCase = ecLowerCase
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'Email'
          MaxLength = 150
          TabOrder = 15
          Padrao = True
        end
        object edNumero: TFocusCurrEdit
          Left = 349
          Top = 122
          Width = 49
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 5
          Padrao = True
        end
        object BtnCancelar: TBitBtn
          Left = 410
          Top = 407
          Width = 149
          Height = 25
          Caption = '[ F8 ] Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
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
        object edtBairro: TLabelFocusEdit
          Left = 408
          Top = 122
          Width = 236
          Height = 21
          CharCase = ecLowerCase
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlack
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          MaxLength = 150
          TabOrder = 6
          Padrao = True
        end
        inline frameCidadeCli: TFrameCidade2
          Left = 19
          Top = 165
          Width = 516
          Height = 23
          TabOrder = 8
          inherited Label1: TLabel
            Left = 3
            Width = 3
            Caption = '.'
          end
          inherited edCidade: TFocusEdit
            Left = 109
            Top = 1
            Width = 364
            BevelKind = bkFlat
            Font.Charset = ANSI_CHARSET
            Font.Color = 8147227
            Font.Style = []
          end
          inherited edestado: TFocusEdit
            Left = 481
            Top = 1
            Width = 32
            BevelKind = bkFlat
            Font.Charset = ANSI_CHARSET
            Font.Color = 8147227
            Font.Style = []
          end
          inherited edCodigoMunicipio: TFocusEdit
            Left = 3
            Top = 1
            Width = 81
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = 8147227
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentFont = False
            OnChange = frameCidadeCliedCodigoMunicipioChange
          end
          inherited SpbBusca: TBitBtn
            Left = 85
            Top = 0
          end
        end
      end
    end
  end
  object cdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli'
    Left = 632
    Top = 360
    object cdsCliCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCliNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCliNOMEFAN: TStringField
      FieldName = 'NOMEFAN'
      Size = 40
    end
    object cdsCliENDER: TStringField
      FieldName = 'ENDER'
      Size = 43
    end
    object cdsCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsCliESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsCliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsCliCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsCliRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object cdsCliFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsCliFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object cdsCliOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsCliFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object cdsCliDTNASCI: TDateField
      FieldName = 'DTNASCI'
    end
    object cdsCliDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsCliPAIS: TStringField
      FieldName = 'PAIS'
    end
    object cdsCliCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cdsCliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsCliDTABERT: TDateField
      FieldName = 'DTABERT'
    end
    object cdsCliMOTBLOQ: TStringField
      FieldName = 'MOTBLOQ'
      Size = 100
    end
    object cdsCliNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsCliDTALTER: TDateField
      FieldName = 'DTALTER'
    end
    object cdsCliCODCID: TIntegerField
      FieldName = 'CODCID'
    end
  end
  object dsCli: TDataSource
    DataSet = cdsCli
    Left = 588
    Top = 360
  end
  object qryCli: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from clientes'
      'order by codigo')
    Left = 708
    Top = 360
  end
  object dspCli: TDataSetProvider
    DataSet = qryCli
    Left = 668
    Top = 360
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 749
    Top = 362
  end
  object ImageList1: TImageList
    Left = 447
    Top = 372
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003469
      B5001B6EC700236FC7002270CD00216FD0001D6ED400166BD800166CDC00126B
      E2001574E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4EAE300E5CCBA00C690
      6200BC793500B76F2200B76F2200BE772600BB762400B56E2100B9722A00BF83
      4800CC9D7200DDBEA800EDDCD1000000000000000000000000005A7FBC00AAD4
      E700A0FDFF0052C6FF0035B3FF002BA7FF0020A0FF001796FF001A97FF001993
      FF0036AFFF002689EE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0865200CC964600D898
      2400DC9B2200E0A12600DFA22600DD9E2700DE9F2700E0A12700E0A02700DC9A
      2700D7962700D18E2500B7702C000000000000000000000000005076B7009CC8
      E100C2FCFF0092D5FF006FC0FF004EACFF004BAEFF0047ADFF004BB2FF003AA8
      FF004AB8FF001D81ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C38A5600DEB46900E2AC
      3900DA9C2B00D89B3300D99D3400D99D3300D99D3500D99D3500D99F3500DBA0
      3400E0A63700E6AF3C00BE7B32000000000000000000000000005077B80095C6
      E200B2F4FF0082CDFF0066BCFF004FAEFF0051B3FF0053B7FF0053BDFF004AB8
      FF005EC6FF002785ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A68000C9955800ECC6
      7100DEA33400DB9F3700E0A84800DFA74200DFA74100DFA74300DDA54100DFA9
      4400E6B24700D1902F00CC9C6F000000000000000000000000005177B80098C6
      E200B3F6FF0085CFFF0068BEFF004FAEFF0050B1FF004FB5FF004EB9FF0043B2
      FF0057C0FF002382ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7B29300DFBA
      8000EFCC7900E3AE4400DFA53E00E3B04F00E3B04F00E1AD4D00E4B25100ECBE
      5900E4AF4800C4854400EFE1D9000000000000000000000000005177B80098C7
      E200B3F7FF0086D0FF0069BEFF0052AEFF0052B2FF004FB5FF004DB7FF0042B0
      FF0055BFFF002384ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3A8
      8100DDB67E00F0D48D00ECC26700E4B35000E5B65700E9BB5F00EEC26200E0AA
      4A00C88B4A00E7D3C700000000000000000000000000000000005178B80098C8
      E200B9FAFF008CD4FF0074C4FF005EB7FF0057B3FF004DAEFF0043ACFF0032A2
      FF0044B5FF001D81ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9B89B00CC985C00E4B96500EEC66D00EBC06700EABD6100D1964000CA96
      6A00F3EAE70000000000000000000000000000000000000000005076B70099C8
      E100BBF5FF008ACFFF006DBFFF0057B1FF0054B1FF0050B2FF004CB6FF003EAD
      FF004CBBFF001D7FED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5CBB200DBAB5E00E9BD5C00EFC87200ECC37100EDC56C00E2B56200DEB8
      8B000000000000000000000000000000000000000000000000005577B700A6CC
      E500BEFFFF0083ECFF0069DCFF0058CEFF0047BFFF0039B0FF0028A0FF00148F
      FF0040B5FF002C8CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2E5
      DC00E0C19E00F2D9A100F5D78B00EDC77200EDC77300F3CE7900EDC56800DCAD
      6500E9D4C5000000000000000000000000000000000000000000000000004D92
      C7004BB3E300369ADD00389AE3003797E5002E8EE6002184E9000773EB000066
      ED001883F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4E8
      DC00E9D2B300F8E7C300F9E5B500F4D9A100F4D79C00F7DDA000F2D89300E0B9
      7700E7CDB400000000000000000000000000000000000000000000000000B9B1
      B000E8E8E500BBB4B40000000000000000000000000090848100CFCDCB006F65
      5E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2E5
      D600E4C8A000F7E3B900FAE6B500F5DEAC00F7E3B600FBEBC000F7E4B300E5C3
      8B00E9D1B600000000000000000000000000000000000000000000000000BAB2
      B10000000000BBB4B4000000000000000000000000008F848000CFCDCB006F65
      5E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7CDA700F2E2BE00FDEFC800F6DFA900F4DBA500FCEBBE00F6E4B200E5C5
      9100F2E3D500000000000000000000000000000000000000000000000000BAAF
      AD0000000000BBB4B400F7F5F50000000000000000007D767300D6D4D2006F6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EED9C000E1BD8500F4E4BE00FFFFE600FFFADB00F9E9BC00E6C38600E6CA
      A40000000000000000000000000000000000000000000000000000000000B8B1
      B40000000000F3F0F000998F9200736A6E00766E7200B5B3B200D6D4D200756F
      7100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5E8D600E2BD8B00DCB06E00DEB67300E0BC8400EFDEC4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2A9AD000000000000000000F7F8F600F4F4F300F5F3F0009B9597000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3ABB000BAB4B700B5AEAF00B1AAAE009B949700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFE007000000008001C00300000000
      8001C003000000008001C003000000008001C00300000000C001C00300000000
      E003C00300000000F007C00300000000F00FC00300000000E007E00700000000
      E007E38F00000000E007EB8F00000000F007E98F00000000F00FE80F00000000
      F81FF61F00000000FFFFF83F0000000000000000000000000000000000000000
      000000000000}
  end
end
