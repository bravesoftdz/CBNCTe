object fAndreRelatorioFortes: TfAndreRelatorioFortes
  Left = 187
  Top = 110
  Width = 924
  Height = 572
  Caption = 'Andr'#233' Relat'#243'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlCabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 99
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object rlTitulo: TRLLabel
        Left = 14
        Top = 8
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlSubTitulo: TRLLabel
        Left = 16
        Top = 40
        Width = 77
        Height = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 624
        Top = 16
        Width = 69
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 624
        Top = 33
        Width = 71
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = 'Hora: '
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 17
      AutoSize = True
      BandType = btColumnHeader
      object rlTituloCol: TRLLabel
        Left = 8
        Top = 1
        Width = 70
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 170
      Width = 718
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLSystemInfo3: TRLSystemInfo
        Left = 600
        Top = 0
        Width = 135
        Height = 16
        Info = itPageNumber
        Text = 'Pagina: '
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 663
        Top = 0
        Width = 134
        Height = 16
        Info = itLastPageNumber
        Text = 'de: '
      end
    end
    object RLBandZebrado: TRLBand
      Left = 38
      Top = 154
      Width = 718
      Height = 16
      BeforePrint = rlDetailBeforePrint
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 705
        Height = 16
        AutoSize = False
        DataField = 'CORPO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 248
    object cdsCORPO: TStringField
      FieldName = 'CORPO'
      Size = 100
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 664
    Top = 304
  end
end
