object Frm_Localiza: TFrm_Localiza
  Left = 205
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Localiza'
  ClientHeight = 272
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 256
    Width = 69
    Height = 13
    Caption = '<ESC> Fechar'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 467
    Height = 49
    Align = alTop
    Caption = ' Descri'#231#227'o '
    TabOrder = 0
    object Eddesc: TEdit
      Left = 11
      Top = 17
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = EddescChange
      OnKeyPress = EddescKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 467
    Height = 200
    Align = alTop
    DataSource = dsLocaliza
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
  end
  object dsLocaliza: TDataSource
    DataSet = IBTlocaliza
    Left = 352
    Top = 160
  end
  object IBTlocaliza: TMDOTable
    Database = dm.DataBase
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 352
    Top = 128
  end
end
