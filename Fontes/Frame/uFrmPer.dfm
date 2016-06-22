object frmPer: TfrmPer
  Left = 0
  Top = 0
  Width = 264
  Height = 38
  AutoSize = True
  TabOrder = 0
  object Label1: TLabel
    Left = 176
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 230
    Top = 22
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object EdDataIni: TFocusMaskEdit
    Left = 0
    Top = 17
    Width = 119
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnEnter = EdDataIniEnter
    OnExit = EdDataIniExit
    Padrao = True
  end
  object EdDataFim: TFocusMaskEdit
    Left = 144
    Top = 17
    Width = 120
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnEnter = EdDataIniEnter
    OnExit = EdDataFimExit
    Padrao = True
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 57
    Height = 17
    Caption = 'Data Inicial'
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 144
    Top = 0
    Width = 52
    Height = 17
    Caption = 'Data Final'
    TabOrder = 3
  end
  object baloon: TMarcianoBallon
    TipoIcone = tiErro
    TituloDefault = 'ERRO'
    Autor = 'Marciano Bandeira'
    Left = 408
    Top = 16
  end
end
