object FrmRelatorio: TFrmRelatorio
  Left = 192
  Top = 124
  Width = 870
  Height = 500
  Caption = 'FrmRelatorio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TWebBrowser
    Left = 0
    Top = 0
    Width = 854
    Height = 434
    Align = alClient
    TabOrder = 0
    OnCommandStateChange = RelatorioCommandStateChange
    ControlData = {
      4C00000043580000DB2C00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 854
    Height = 28
    Align = alBottom
    TabOrder = 1
    object btImprimir: TButton
      Left = 9
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Imprime'
      TabOrder = 0
      OnClick = btImprimirClick
    end
    object btVisualiza: TButton
      Left = 88
      Top = 3
      Width = 75
      Height = 25
      Caption = 'visualiza'
      TabOrder = 1
      OnClick = btVisualizaClick
    end
    object btConfig: TButton
      Left = 169
      Top = 3
      Width = 105
      Height = 25
      Caption = 'Configura Page'
      TabOrder = 2
      OnClick = btConfigClick
    end
    object edPaginaAtual: TFocusCurrEdit
      Left = 370
      Top = 3
      Width = 25
      Height = 25
      TabStop = False
      AutoSize = False
      DisplayFormat = '0'
      Enabled = False
      TabOrder = 3
      Padrao = True
    end
    object btAnterior: TBitBtn
      Left = 345
      Top = 3
      Width = 25
      Height = 25
      Caption = '<'
      TabOrder = 4
      OnClick = btAnteriorClick
    end
    object btProximo: TBitBtn
      Left = 395
      Top = 3
      Width = 25
      Height = 25
      Caption = '>'
      TabOrder = 5
      OnClick = btProximoClick
    end
  end
end
