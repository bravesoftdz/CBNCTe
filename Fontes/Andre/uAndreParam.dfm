object frmAndreParam: TfrmAndreParam
  Left = 358
  Top = 288
  Width = 594
  Height = 217
  Caption = 'frmAndreParam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TDBGrid
    Left = 0
    Top = 0
    Width = 586
    Height = 183
    Align = alClient
    DataSource = ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = gridKeyDown
  end
  object ds: TDataSource
    Left = 8
    Top = 8
  end
end
