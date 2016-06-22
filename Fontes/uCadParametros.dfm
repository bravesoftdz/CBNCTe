object frmCadParametros: TfrmCadParametros
  Left = 239
  Top = 96
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Parametros : : . .'
  ClientHeight = 501
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 455
    ActivePage = Tab2
    Align = alClient
    TabOrder = 0
    object Tab1: TTabSheet
      Caption = 'Dados da Empresa '
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 67
        Height = 14
        Caption = 'C'#243'd. Empresa'
        FocusControl = edCod
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 88
        Top = 8
        Width = 62
        Height = 14
        Caption = 'Raz'#227'o Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 52
        Width = 75
        Height = 14
        Caption = 'Nome Fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 95
        Width = 45
        Height = 14
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 520
        Top = 138
        Width = 18
        Height = 14
        Caption = 'CEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 180
        Width = 23
        Height = 14
        Caption = 'CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 185
        Top = 180
        Width = 9
        Height = 14
        Caption = 'IE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 369
        Top = 180
        Width = 42
        Height = 14
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 223
        Width = 84
        Height = 14
        Caption = 'Data Movimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 8
        Top = 265
        Width = 32
        Height = 14
        Caption = 'E-mail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label89: TLabel
        Left = 152
        Top = 223
        Width = 3
        Height = 13
      end
      object Label90: TLabel
        Left = 184
        Top = 223
        Width = 91
        Height = 14
        Caption = 'CPF (Respons'#225'vel)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label92: TLabel
        Left = 8
        Top = 306
        Width = 19
        Height = 14
        Caption = 'Site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label93: TLabel
        Left = 521
        Top = 181
        Width = 18
        Height = 14
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 244
        Top = 95
        Width = 40
        Height = 14
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbBairro: TLabel
        Left = 287
        Top = 95
        Width = 30
        Height = 14
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbResponsavel: TLabel
        Left = 420
        Top = 95
        Width = 62
        Height = 14
        Caption = 'Respons'#225'vel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 137
        Width = 83
        Height = 14
        Caption = 'C'#243'digo da cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 169
        Top = 137
        Width = 33
        Height = 14
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 347
        Width = 164
        Height = 14
        Caption = 'Caminho Banco de Dados remoto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 369
        Top = 223
        Width = 38
        Height = 14
        Caption = 'Regime'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCod: TDBEdit
        Left = 8
        Top = 24
        Width = 65
        Height = 21
        DataField = 'CODEMP'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edDataMov: TDateTimePicker
        Left = 8
        Top = 238
        Width = 137
        Height = 21
        Date = 40135.367373402780000000
        Time = 40135.367373402780000000
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object edCpfResponsavel: TFocusMaskEdit
        Left = 184
        Top = 238
        Width = 146
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Padrao = True
      end
      object edSite: TFocusEdit
        Left = 8
        Top = 322
        Width = 372
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Padrao = True
      end
      object edFax: TFocusEdit
        Left = 520
        Top = 196
        Width = 129
        Height = 21
        CharCase = ecLowerCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Padrao = True
      end
      object edBairro: TFocusEdit
        Left = 286
        Top = 110
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Padrao = True
      end
      object edResponsavel: TFocusEdit
        Left = 419
        Top = 110
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Padrao = True
      end
      object edNum: TFocusCurrEdit
        Left = 242
        Top = 110
        Width = 41
        Height = 21
        AutoSize = False
        DisplayFormat = ' ,0; ,-0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Padrao = True
      end
      inline FrameCidade21: TFrameCidade2
        Left = 6
        Top = 152
        Width = 502
        Height = 26
        TabOrder = 7
        inherited Label1: TLabel
          Top = 8
        end
        inherited edCidade: TFocusEdit
          Left = 164
          Top = 1
          Width = 301
          BevelKind = bkFlat
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Style = []
        end
        inherited edestado: TFocusEdit
          Left = 440
          Top = 6
          Height = 22
          BevelKind = bkFlat
          Visible = False
        end
        inherited edCodigoMunicipio: TFocusEdit
          Left = 2
          Top = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          ParentFont = False
          Text = ''
        end
        inherited SpbBusca: TBitBtn
          Left = 130
          Top = 0
          OnClick = FrameCidade21spbBuscaClick
        end
      end
      object edRaz: TEdit
        Left = 88
        Top = 25
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edNomeFan: TEdit
        Left = 8
        Top = 69
        Width = 441
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edEnd: TEdit
        Left = 8
        Top = 110
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edUf: TFocusEdit
        Left = 480
        Top = 154
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = edUfEnter
        Padrao = True
      end
      object edCnpj: TFocusEdit
        Left = 8
        Top = 196
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Padrao = True
      end
      object edIe: TFocusEdit
        Left = 185
        Top = 196
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Padrao = True
      end
      object edEmail: TFocusEdit
        Left = 8
        Top = 280
        Width = 372
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Padrao = True
      end
      object edFone: TFocusMaskEdit
        Left = 369
        Top = 196
        Width = 123
        Height = 21
        EditMask = '(##)####-####;1; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 12
        Text = '(  )    -    '
        Padrao = True
      end
      object edCep: TFocusMaskEdit
        Left = 520
        Top = 154
        Width = 129
        Height = 21
        EditMask = '#####-###;1;'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 9
        Text = '     -   '
        Padrao = True
      end
      object btSelecionaBD: TBitBtn
        Left = 386
        Top = 357
        Width = 111
        Height = 27
        Caption = 'Selecionar'
        TabOrder = 19
        OnClick = btSelecionaBDClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888880000008888888888888888880000008888888888888888880000008000
          0000000088888800000080033333333308888800000080B03333333330888800
          000080FB0333333333088800000080BFB033333333308800000080FBFB000000
          00000800000080BFBFBFBFB088888800000080FBFBFBFBF088888800000080BF
          B000000088888800000088000888888880008800000088888888888888008800
          0000888888888088808088000000888888888800088888000000888888888888
          888888000000888888888888888888000000}
      end
      object cbSN: TComboBox
        Left = 369
        Top = 238
        Width = 124
        Height = 21
        ItemHeight = 13
        TabOrder = 16
        Text = 'SN - Simples Nacional'
        Items.Strings = (
          'SN - Simples Nacional'
          'LR - Lucro Real'
          'LP - Lucro Presumido'
          'NORMAL'
          '')
      end
      object edCaminhoBD: TEdit
        Left = 7
        Top = 362
        Width = 373
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
    end
    object Tab2: TTabSheet
      Caption = 'Dados CT- e'
      ImageIndex = 1
      object Label14: TLabel
        Left = 9
        Top = 11
        Width = 44
        Height = 13
        Caption = 'RNTRC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 10
        Top = 241
        Width = 162
        Height = 14
        Caption = 'Caminho Banco de Dados padr'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label41: TLabel
        Left = 13
        Top = 195
        Width = 215
        Height = 14
        Caption = 'Caminho do Arquivo de Logomarca ( *.JPG )'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label88: TLabel
        Left = 257
        Top = 194
        Width = 127
        Height = 14
        Caption = 'Recomendado: 375 x 150 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 109
        Top = 9
        Width = 92
        Height = 14
        Caption = 'Impressora padr'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 301
        Top = 9
        Width = 80
        Height = 14
        Caption = 'Obs padr'#227'o CT-e'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 13
        Top = 103
        Width = 138
        Height = 14
        Caption = 'Caracter'#237'sticas dos produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 12
        Top = 149
        Width = 137
        Height = 14
        Caption = 'Cidade origem da presta'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 484
        Top = 150
        Width = 12
        Height = 14
        Caption = 'Uf'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object edtRNTRC: TFocusEdit
        Left = 9
        Top = 26
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Padrao = True
      end
      object ComboBox1: TComboBox
        Left = 110
        Top = 26
        Width = 183
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
      end
      object EdCaminhoLogo: TEdit
        Left = 12
        Top = 211
        Width = 422
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object BitProcurar: TBitBtn
        Left = 460
        Top = 283
        Width = 213
        Height = 32
        Caption = '&Abrir arquivo '
        TabOrder = 5
        OnClick = BitProcurarClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888880000008888888888888888880000008888888888888888880000008000
          0000000088888800000080033333333308888800000080B03333333330888800
          000080FB0333333333088800000080BFB033333333308800000080FBFB000000
          00000800000080BFBFBFBFB088888800000080FBFBFBFBF088888800000080BF
          B000000088888800000088000888888880008800000088888888888888008800
          0000888888888088808088000000888888888800088888000000888888888888
          888888000000888888888888888888000000}
      end
      object GroupBox1: TGroupBox
        Left = 460
        Top = 112
        Width = 213
        Height = 167
        Caption = ' Visualiza'#231#227'o da Logomarca '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Bevel1: TBevel
          Left = 26
          Top = 22
          Width = 161
          Height = 128
          Style = bsRaised
        end
        object Image1: TImage
          Left = 30
          Top = 25
          Width = 153
          Height = 121
          Stretch = True
        end
      end
      object mMsgPadrao: TMemo
        Left = 300
        Top = 26
        Width = 373
        Height = 65
        TabOrder = 2
      end
      object edtCaracProd: TEdit
        Left = 12
        Top = 118
        Width = 423
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      inline framecidadeorigem: TFrameCidade2
        Left = 10
        Top = 164
        Width = 446
        Height = 26
        TabOrder = 7
        inherited Label1: TLabel
          Top = 8
          Visible = False
        end
        inherited edCidade: TFocusEdit
          Left = 123
          Top = 1
          Width = 301
          BevelKind = bkFlat
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Style = []
        end
        inherited edestado: TFocusEdit
          Left = 399
          Top = 0
          Height = 22
          BevelKind = bkFlat
          Visible = False
        end
        inherited edCodigoMunicipio: TFocusEdit
          Left = 2
          Top = 1
          Width = 87
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          ParentFont = False
          Text = ''
        end
        inherited SpbBusca: TBitBtn
          Left = 94
          Top = 0
        end
      end
      object edtBDPadrao: TEdit
        Left = 12
        Top = 258
        Width = 422
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 455
    Width = 694
    Height = 46
    Align = alBottom
    TabOrder = 1
    object BitGravar: TSpeedButton
      Left = 380
      Top = 13
      Width = 149
      Height = 25
      Cursor = crHandPoint
      Caption = ' < F2 > Gravar'
      Flat = True
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
      OnClick = BitGravarClick
    end
    object bitAlterar: TSpeedButton
      Left = 12
      Top = 13
      Width = 149
      Height = 25
      Cursor = crHandPoint
      Caption = ' < F4 > Alterar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      OnClick = BitAlterarClick
    end
    object bitFechar: TSpeedButton
      Left = 535
      Top = 13
      Width = 149
      Height = 25
      Cursor = crHandPoint
      Caption = ' < ESC > Sair'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFF8CD64
        F8CD64F6CA5DF2C057F1BC4FF5BF58F6BA50F2AE3BEBA52FDE900DD88500D57E
        00D77E00DB8915FFFFFFFFFFFFE89F26F9F6E2F8F2E0F9F3DEFFFCE0B5AD9F95
        897B938878B5AE9DFFF4D0FDEBC6FDECC5FDEBBDAE5213FFFFFFFFFFFFE89F26
        F0F4FFF0F5FFF0F5FEFEFFFF92939967666E6B687198989FFFFFFFFCFFFFFDFF
        FFFFFFFFAD4E14FFFFFFFFFFFFE99E23E9EAEBEAEBEBEAEAE9F9F8F88F8A896B
        6663605C5A898785FFFFFFF3F2F2F5F7F6FEFFFFAD4E14FFFFFFFFFFFFE99E23
        E2E4E6E4E3E5E4E5E3F3F3F282807F605E5C504F4E7D7978FDFCFBEDEDECF1F1
        F1F2F5F4AE5114FFFFFFFFFFFFEAA024DDDDE0DFDDDFE1DEDDEFEFED78757453
        51515655547C7A78F4F4F3E7E6E5EAEAEBEBEDEEAF5014FFFFFFFFFFFFEA9F24
        D8D8DBD8D7D9DAD7D7E9E7E6545051242324272425585152F0EFEFE1E0E0E5E5
        E5E6E7EAAD4F12FFFFFFFFFFFFECA52ACDCFD6D2D3D7D6D4D0DAD9D7AFACACA9
        A7A6AAA9A8AFADACE0DFDEDCDAD8DFE1E6DCE3EDAF4F0AFFFFFFF0C46EEEAF34
        CF9E4FB0B4BECFCFD3D2CECDD4D1D0D3D0CFD4D2CFDEDDDBD7D4D3D6D7DDD6DE
        E9DDAF4CDA8200D0831BF7DBA7F3D088F6BC4CCFA24FA9ABB8D0CFD1A9A3A184
        7E7E807B7ABEB9B6D4D6D9CBD3E2D9A745E68A00CC7A0DD6A77AFFFFFFFDF5E7
        F2D397FECC62D1A75BA7A9B3A9A7A8908C8B8D8987BCBCC0C1C5CFD09939E681
        00D18116F5EBE4FFFFFFFFFFFFFFFFFFFCF3E5F2D397FFD979D3AC628D8C96A7
        A3A6A6A4A49FA2B1D5A147E89500C99A5CF1DFD3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF1E3F1D49EFFE78BD4B16C9798A0979AA4CDA65FF9B42FE7E5D7BAA2
        8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF1E3F0D39BFFEF9DD0
        B377CEB37FFFD052F1C678F1FFFFBAA28DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAEFE1F1D29CFFF3A9FFEC8BE5AD52D29C6FE4FFFFBAA2
        8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3EAEF
        CD91EAC077FFFFFFF4E5D7E2C3A4E4C9AEFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = BitFecharClick
    end
  end
  object dsParametro: TDataSource
    DataSet = qryParametros
    Left = 512
    Top = 56
  end
  object qryParametros: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from parametros')
    Left = 552
    Top = 56
    object qryParametrosCODEMP: TMDOStringField
      FieldName = 'CODEMP'
      Origin = '"PARAMETROS"."CODEMP"'
      Size = 2
    end
    object qryParametrosFAN: TMDOStringField
      FieldName = 'FAN'
      Origin = '"PARAMETROS"."FAN"'
      Size = 40
    end
    object qryParametrosENDER: TMDOStringField
      FieldName = 'ENDER'
      Origin = '"PARAMETROS"."ENDER"'
      Size = 40
    end
    object qryParametrosCIDADE: TMDOStringField
      FieldName = 'CIDADE'
      Origin = '"PARAMETROS"."CIDADE"'
      Size = 30
    end
    object qryParametrosESTADO: TMDOStringField
      FieldName = 'ESTADO'
      Origin = '"PARAMETROS"."ESTADO"'
      Size = 2
    end
    object qryParametrosCEP: TMDOStringField
      FieldName = 'CEP'
      Origin = '"PARAMETROS"."CEP"'
      Size = 10
    end
    object qryParametrosCNPJ: TMDOStringField
      FieldName = 'CNPJ'
      Origin = '"PARAMETROS"."CNPJ"'
      Size = 15
    end
    object qryParametrosIE: TMDOStringField
      FieldName = 'IE'
      Origin = '"PARAMETROS"."IE"'
      Size = 15
    end
    object qryParametrosFONE: TMDOStringField
      FieldName = 'FONE'
      Origin = '"PARAMETROS"."FONE"'
      Size = 15
    end
    object qryParametrosDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = '"PARAMETROS"."DTMOV"'
    end
    object qryParametrosQTCLI: TIntegerField
      FieldName = 'QTCLI'
      Origin = '"PARAMETROS"."QTCLI"'
    end
    object qryParametrosQTTIPCLI: TIntegerField
      FieldName = 'QTTIPCLI'
      Origin = '"PARAMETROS"."QTTIPCLI"'
    end
    object qryParametrosQTUSU: TIntegerField
      FieldName = 'QTUSU'
      Origin = '"PARAMETROS"."QTUSU"'
    end
    object qryParametrosQTFOR: TIntegerField
      FieldName = 'QTFOR'
      Origin = '"PARAMETROS"."QTFOR"'
    end
    object qryParametrosQTGRP: TIntegerField
      FieldName = 'QTGRP'
      Origin = '"PARAMETROS"."QTGRP"'
    end
    object qryParametrosQTSGRP: TIntegerField
      FieldName = 'QTSGRP'
      Origin = '"PARAMETROS"."QTSGRP"'
    end
    object qryParametrosQTPRO: TIntegerField
      FieldName = 'QTPRO'
      Origin = '"PARAMETROS"."QTPRO"'
    end
    object qryParametrosQTFPG: TIntegerField
      FieldName = 'QTFPG'
      Origin = '"PARAMETROS"."QTFPG"'
    end
    object qryParametrosQTNOTA: TIntegerField
      FieldName = 'QTNOTA'
      Origin = '"PARAMETROS"."QTNOTA"'
    end
    object qryParametrosQTMARCA: TIntegerField
      FieldName = 'QTMARCA'
      Origin = '"PARAMETROS"."QTMARCA"'
    end
    object qryParametrosQTCOMPCOMIS: TIntegerField
      FieldName = 'QTCOMPCOMIS'
      Origin = '"PARAMETROS"."QTCOMPCOMIS"'
    end
    object qryParametrosQTITNOTA: TIntegerField
      FieldName = 'QTITNOTA'
      Origin = '"PARAMETROS"."QTITNOTA"'
    end
    object qryParametrosQTPAG: TIntegerField
      FieldName = 'QTPAG'
      Origin = '"PARAMETROS"."QTPAG"'
    end
    object qryParametrosQTEVE: TIntegerField
      FieldName = 'QTEVE'
      Origin = '"PARAMETROS"."QTEVE"'
    end
    object qryParametrosQTDESCON: TIntegerField
      FieldName = 'QTDESCON'
      Origin = '"PARAMETROS"."QTDESCON"'
    end
    object qryParametrosQTSUBVEN: TIntegerField
      FieldName = 'QTSUBVEN'
      Origin = '"PARAMETROS"."QTSUBVEN"'
    end
    object qryParametrosQTPED: TLargeintField
      FieldName = 'QTPED'
      Origin = '"PARAMETROS"."QTPED"'
    end
    object qryParametrosJUROSATRASO: TMDOBCDField
      FieldName = 'JUROSATRASO'
      Origin = '"PARAMETROS"."JUROSATRASO"'
      Precision = 9
      Size = 4
    end
    object qryParametrosDESCPGTOADIAN: TMDOBCDField
      FieldName = 'DESCPGTOADIAN'
      Origin = '"PARAMETROS"."DESCPGTOADIAN"'
      Precision = 4
      Size = 2
    end
    object qryParametrosTOLERANJUR: TSmallintField
      FieldName = 'TOLERANJUR'
      Origin = '"PARAMETROS"."TOLERANJUR"'
    end
    object qryParametrosCONTCX: TMDOStringField
      FieldName = 'CONTCX'
      Origin = '"PARAMETROS"."CONTCX"'
      Size = 1
    end
    object qryParametrosTRABDOM: TMDOStringField
      FieldName = 'TRABDOM'
      Origin = '"PARAMETROS"."TRABDOM"'
      Size = 1
    end
    object qryParametrosPEDVEN: TMDOStringField
      FieldName = 'PEDVEN'
      Origin = '"PARAMETROS"."PEDVEN"'
      Size = 1
    end
    object qryParametrosIMPPERLUC: TMDOStringField
      FieldName = 'IMPPERLUC'
      Origin = '"PARAMETROS"."IMPPERLUC"'
      Size = 1
    end
    object qryParametrosIMPDADCLI: TMDOStringField
      FieldName = 'IMPDADCLI'
      Origin = '"PARAMETROS"."IMPDADCLI"'
      Size = 1
    end
    object qryParametrosDADCOMCLI: TMDOStringField
      FieldName = 'DADCOMCLI'
      Origin = '"PARAMETROS"."DADCOMCLI"'
      Size = 1
    end
    object qryParametrosEMPDIF: TMDOStringField
      FieldName = 'EMPDIF'
      Origin = '"PARAMETROS"."EMPDIF"'
      Size = 1
    end
    object qryParametrosIMP40COL: TMDOStringField
      FieldName = 'IMP40COL'
      Origin = '"PARAMETROS"."IMP40COL"'
      Size = 1
    end
    object qryParametrosIMPCARNET: TMDOStringField
      FieldName = 'IMPCARNET'
      Origin = '"PARAMETROS"."IMPCARNET"'
      Size = 1
    end
    object qryParametrosQTDAUT: TMDOStringField
      FieldName = 'QTDAUT'
      Origin = '"PARAMETROS"."QTDAUT"'
      Size = 1
    end
    object qryParametrosIMPDUPLIC: TMDOStringField
      FieldName = 'IMPDUPLIC'
      Origin = '"PARAMETROS"."IMPDUPLIC"'
      Size = 1
    end
    object qryParametrosSOMAABCX: TMDOStringField
      FieldName = 'SOMAABCX'
      Origin = '"PARAMETROS"."SOMAABCX"'
      Size = 1
    end
    object qryParametrosCONPRCUS: TMDOStringField
      FieldName = 'CONPRCUS'
      Origin = '"PARAMETROS"."CONPRCUS"'
      Size = 1
    end
    object qryParametrosCADCLIBALC: TMDOStringField
      FieldName = 'CADCLIBALC'
      Origin = '"PARAMETROS"."CADCLIBALC"'
      Size = 1
    end
    object qryParametrosFPAGBALC: TMDOStringField
      FieldName = 'FPAGBALC'
      Origin = '"PARAMETROS"."FPAGBALC"'
      Size = 1
    end
    object qryParametrosDEACPRIPRO: TMDOStringField
      FieldName = 'DEACPRIPRO'
      Origin = '"PARAMETROS"."DEACPRIPRO"'
      Size = 1
    end
    object qryParametrosORDPROPED: TMDOStringField
      FieldName = 'ORDPROPED'
      Origin = '"PARAMETROS"."ORDPROPED"'
      Size = 1
    end
    object qryParametrosEMAIL: TMDOStringField
      FieldName = 'EMAIL'
      Origin = '"PARAMETROS"."EMAIL"'
      Size = 100
    end
    object qryParametrosPERCMDB: TMDOBCDField
      FieldName = 'PERCMDB'
      Origin = '"PARAMETROS"."PERCMDB"'
      Precision = 18
      Size = 2
    end
    object qryParametrosIMPASSPED: TMDOStringField
      FieldName = 'IMPASSPED'
      Origin = '"PARAMETROS"."IMPASSPED"'
      Size = 1
    end
    object qryParametrosBUSCAPRO: TMDOStringField
      FieldName = 'BUSCAPRO'
      Origin = '"PARAMETROS"."BUSCAPRO"'
      Size = 1
    end
    object qryParametrosQTEMP: TSmallintField
      FieldName = 'QTEMP'
      Origin = '"PARAMETROS"."QTEMP"'
    end
    object qryParametrosQTIPCLI: TSmallintField
      FieldName = 'QTIPCLI'
      Origin = '"PARAMETROS"."QTIPCLI"'
    end
    object qryParametrosBANCBLOQ: TMDOStringField
      FieldName = 'BANCBLOQ'
      Origin = '"PARAMETROS"."BANCBLOQ"'
      Size = 3
    end
    object qryParametrosQTTRANSP: TIntegerField
      FieldName = 'QTTRANSP'
      Origin = '"PARAMETROS"."QTTRANSP"'
    end
    object qryParametrosPEDAUT: TMDOStringField
      FieldName = 'PEDAUT'
      Origin = '"PARAMETROS"."PEDAUT"'
      Size = 1
    end
    object qryParametrosQTRECEB: TIntegerField
      FieldName = 'QTRECEB'
      Origin = '"PARAMETROS"."QTRECEB"'
    end
    object qryParametrosQTDEV: TIntegerField
      FieldName = 'QTDEV'
      Origin = '"PARAMETROS"."QTDEV"'
    end
    object qryParametrosQTCARGA: TMDOBCDField
      FieldName = 'QTCARGA'
      Origin = '"PARAMETROS"."QTCARGA"'
      Precision = 9
      Size = 1
    end
    object qryParametrosSENHA: TMDOStringField
      FieldName = 'SENHA'
      Origin = '"PARAMETROS"."SENHA"'
      Size = 1
    end
    object qryParametrosITEMEXTRA: TMDOStringField
      FieldName = 'ITEMEXTRA'
      Origin = '"PARAMETROS"."ITEMEXTRA"'
      Size = 1
    end
    object qryParametrosPRODBLOQ: TMDOStringField
      FieldName = 'PRODBLOQ'
      Origin = '"PARAMETROS"."PRODBLOQ"'
      Size = 1
    end
    object qryParametrosVDAPRONEG: TMDOStringField
      FieldName = 'VDAPRONEG'
      Origin = '"PARAMETROS"."VDAPRONEG"'
      Size = 1
    end
    object qryParametrosRECCAIXA: TMDOStringField
      FieldName = 'RECCAIXA'
      Origin = '"PARAMETROS"."RECCAIXA"'
      Size = 1
    end
    object qryParametrosALTPRECO: TMDOStringField
      FieldName = 'ALTPRECO'
      Origin = '"PARAMETROS"."ALTPRECO"'
      Size = 1
    end
    object qryParametrosDIASCRITICA: TSmallintField
      FieldName = 'DIASCRITICA'
      Origin = '"PARAMETROS"."DIASCRITICA"'
    end
    object qryParametrosDIASCRITICABLOQ: TSmallintField
      FieldName = 'DIASCRITICABLOQ'
      Origin = '"PARAMETROS"."DIASCRITICABLOQ"'
    end
    object qryParametrosECF: TMDOStringField
      FieldName = 'ECF'
      Origin = '"PARAMETROS"."ECF"'
      Size = 1
    end
    object qryParametrosOS: TMDOStringField
      FieldName = 'OS'
      Origin = '"PARAMETROS"."OS"'
      Size = 1
    end
    object qryParametrosUSANRDOC: TMDOStringField
      FieldName = 'USANRDOC'
      Origin = '"PARAMETROS"."USANRDOC"'
      Size = 1
    end
    object qryParametrosMARCAECF: TMDOStringField
      FieldName = 'MARCAECF'
      Origin = '"PARAMETROS"."MARCAECF"'
      Size = 1
    end
    object qryParametrosLIMITE: TMDOStringField
      FieldName = 'LIMITE'
      Origin = '"PARAMETROS"."LIMITE"'
      Size = 1
    end
    object qryParametrosLAYOUTPED: TMDOStringField
      FieldName = 'LAYOUTPED'
      Origin = '"PARAMETROS"."LAYOUTPED"'
      Size = 1
    end
    object qryParametrosCONTROL: TIntegerField
      FieldName = 'CONTROL'
      Origin = '"PARAMETROS"."CONTROL"'
    end
    object qryParametrosBAIXAORC: TMDOStringField
      FieldName = 'BAIXAORC'
      Origin = '"PARAMETROS"."BAIXAORC"'
      Size = 1
    end
    object qryParametrosMANUT: TMDOStringField
      FieldName = 'MANUT'
      Origin = '"PARAMETROS"."MANUT"'
      Size = 1
    end
    object qryParametrosMANUTRESP: TMDOStringField
      FieldName = 'MANUTRESP'
      Origin = '"PARAMETROS"."MANUTRESP"'
      Size = 40
    end
    object qryParametrosMANUTMOT: TMDOStringField
      FieldName = 'MANUTMOT'
      Origin = '"PARAMETROS"."MANUTMOT"'
      Size = 40
    end
    object qryParametrosMANUTPREVINI: TTimeField
      FieldName = 'MANUTPREVINI'
      Origin = '"PARAMETROS"."MANUTPREVINI"'
    end
    object qryParametrosMANUTPREVFIN: TTimeField
      FieldName = 'MANUTPREVFIN'
      Origin = '"PARAMETROS"."MANUTPREVFIN"'
    end
    object qryParametrosVERSAO: TIntegerField
      FieldName = 'VERSAO'
      Origin = '"PARAMETROS"."VERSAO"'
    end
    object qryParametrosMANUTTERMIN: TMDOStringField
      FieldName = 'MANUTTERMIN'
      Origin = '"PARAMETROS"."MANUTTERMIN"'
    end
    object qryParametrosTELAPRO: TIntegerField
      FieldName = 'TELAPRO'
      Origin = '"PARAMETROS"."TELAPRO"'
    end
    object qryParametrosQTNFECONT: TIntegerField
      FieldName = 'QTNFECONT'
      Origin = '"PARAMETROS"."QTNFECONT"'
    end
    object qryParametrosHOST: TMDOStringField
      FieldName = 'HOST'
      Origin = '"PARAMETROS"."HOST"'
      Size = 500
    end
    object qryParametrosUSER: TMDOStringField
      FieldName = 'USER'
      Origin = '"PARAMETROS"."USER"'
      Size = 100
    end
    object qryParametrosPASSWORD: TMDOStringField
      FieldName = 'PASSWORD'
      Origin = '"PARAMETROS"."PASSWORD"'
      Size = 100
    end
    object qryParametrosCONFIG_ATIVA: TMDOStringField
      FieldName = 'CONFIG_ATIVA'
      Origin = '"PARAMETROS"."CONFIG_ATIVA"'
      Size = 1
    end
    object qryParametrosVERSAODOWN: TIntegerField
      FieldName = 'VERSAODOWN'
      Origin = '"PARAMETROS"."VERSAODOWN"'
    end
    object qryParametrosCPFRESPONSAVEL: TMDOStringField
      FieldName = 'CPFRESPONSAVEL'
      Origin = '"PARAMETROS"."CPFRESPONSAVEL"'
    end
    object qryParametrosCODMUNICIPIO: TIntegerField
      FieldName = 'CODMUNICIPIO'
      Origin = '"PARAMETROS"."CODMUNICIPIO"'
    end
    object qryParametrosFAX: TMDOStringField
      FieldName = 'FAX'
      Origin = '"PARAMETROS"."FAX"'
      Size = 15
    end
    object qryParametrosSITE: TMDOStringField
      FieldName = 'SITE'
      Origin = '"PARAMETROS"."SITE"'
      Size = 200
    end
    object qryParametrosPERPIS: TMDOBCDField
      FieldName = 'PERPIS'
      Origin = '"PARAMETROS"."PERPIS"'
      Precision = 9
      Size = 2
    end
    object qryParametrosPERCOFINS: TMDOBCDField
      FieldName = 'PERCOFINS'
      Origin = '"PARAMETROS"."PERCOFINS"'
      Precision = 9
      Size = 2
    end
    object qryParametrosCST_PIS: TMDOStringField
      FieldName = 'CST_PIS'
      Origin = '"PARAMETROS"."CST_PIS"'
      Size = 10
    end
    object qryParametrosCST_COFINS: TMDOStringField
      FieldName = 'CST_COFINS'
      Origin = '"PARAMETROS"."CST_COFINS"'
      Size = 10
    end
    object qryParametrosSENHA_NIVEIS: TMDOStringField
      FieldName = 'SENHA_NIVEIS'
      Origin = '"PARAMETROS"."SENHA_NIVEIS"'
      Size = 200
    end
    object qryParametrosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"PARAMETROS"."NUMERO"'
    end
    object qryParametrosBAIRRO: TMDOStringField
      FieldName = 'BAIRRO'
      Origin = '"PARAMETROS"."BAIRRO"'
      Size = 300
    end
    object qryParametrosRESPONSAVEL: TMDOStringField
      FieldName = 'RESPONSAVEL'
      Origin = '"PARAMETROS"."RESPONSAVEL"'
      Size = 300
    end
    object qryParametrosSERVSMTP: TMDOStringField
      FieldName = 'SERVSMTP'
      Origin = '"PARAMETROS"."SERVSMTP"'
      Size = 40
    end
    object qryParametrosUSERSMTP: TMDOStringField
      FieldName = 'USERSMTP'
      Origin = '"PARAMETROS"."USERSMTP"'
      Size = 40
    end
    object qryParametrosSENHASMTP: TMDOStringField
      FieldName = 'SENHASMTP'
      Origin = '"PARAMETROS"."SENHASMTP"'
      Size = 15
    end
    object qryParametrosCORPOMSG: TMDOStringField
      FieldName = 'CORPOMSG'
      Origin = '"PARAMETROS"."CORPOMSG"'
      Size = 500
    end
    object qryParametrosCERTIFICADO: TMDOStringField
      FieldName = 'CERTIFICADO'
      Origin = '"PARAMETROS"."CERTIFICADO"'
      Size = 100
    end
    object qryParametrosTIPO_AMBIENTE: TSmallintField
      FieldName = 'TIPO_AMBIENTE'
      Origin = '"PARAMETROS"."TIPO_AMBIENTE"'
    end
    object qryParametrosCAMINHO_LOGO: TMDOStringField
      FieldName = 'CAMINHO_LOGO'
      Origin = '"PARAMETROS"."CAMINHO_LOGO"'
      Size = 150
    end
    object qryParametrosBD_REMOTO: TMDOStringField
      FieldName = 'BD_REMOTO'
      Origin = '"PARAMETROS"."BD_REMOTO"'
      Size = 150
    end
    object qryParametrosSENHACERTIF: TMDOStringField
      FieldName = 'SENHACERTIF'
      Origin = '"PARAMETROS"."SENHACERTIF"'
      Size = 50
    end
    object qryParametrosRNTRC: TIntegerField
      FieldName = 'RNTRC'
      Origin = '"PARAMETROS"."RNTRC"'
    end
    object qryParametrosRAZ: TMDOStringField
      FieldName = 'RAZ'
      Size = 100
    end
    object qryParametrosIMPPADRAO: TMDOStringField
      FieldName = 'IMPPADRAO'
      Size = 100
    end
    object qryParametrosBDPADRAO: TMDOStringField
      FieldName = 'BDPADRAO'
      Size = 150
    end
    object qryParametrosSN: TMDOStringField
      FieldName = 'SN'
      Size = 1
    end
    object qryParametrosMSGPADRAO: TMDOStringField
      FieldName = 'MSGPADRAO'
      Size = 500
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.JPG'
    Filter = '*.JPG|*.JPG|*.JPEG|*.JPEG'
    Title = 'Arquivo de Logomarca da Empresa'
    Left = 407
    Top = 275
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.FDB'
    Filter = '*.FDB|*.FDB'
    Title = 'Caminho do BD padr'#227'o'#13#10
    Left = 407
    Top = 315
  end
end
