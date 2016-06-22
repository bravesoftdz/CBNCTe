object fortesRelCTes: TfortesRelCTes
  Left = -4
  Top = 56
  Width = 1296
  Height = 696
  Caption = 'fortesRelCTes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -39
    Top = 23
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = dsAnalitico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PrintDialog = False
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 139
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw4: TRLDraw
        Left = 1
        Top = 1
        Width = 716
        Height = 25
        Brush.Color = 15395562
        Pen.Style = psClear
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 573
        Top = 4
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel1: TRLLabel
        Left = 241
        Top = 4
        Width = 236
        Height = 19
        Caption = 'Conhecimentos de Transporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEmp: TRLLabel
        Left = 10
        Top = 34
        Width = 59
        Height = 16
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3487029
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 10
        Top = 58
        Width = 42
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 655
        Top = 27
        Width = 39
        Height = 16
        Alignment = taCenter
      end
      object RLLabel4: TRLLabel
        Left = 586
        Top = 28
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLLabel5: TRLLabel
        Left = 578
        Top = 5
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLLabel6: TRLLabel
        Left = 659
        Top = 4
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 668
        Top = 4
        Width = 112
        Height = 16
        Info = itLastPageNumber
      end
      object lbCnpj: TRLLabel
        Left = 53
        Top = 58
        Width = 28
        Height = 16
        Caption = 'cnpj'
      end
      object RLLabel8: TRLLabel
        Left = 10
        Top = 82
        Width = 28
        Height = 16
        Caption = 'I.E.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbIe: TRLLabel
        Left = 41
        Top = 82
        Width = 14
        Height = 16
        Caption = 'ie'
      end
      object RLLabel10: TRLLabel
        Left = 10
        Top = 106
        Width = 132
        Height = 16
        Caption = 'Per'#237'odo do relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDtI: TRLLabel
        Left = 156
        Top = 106
        Width = 62
        Height = 16
        Alignment = taCenter
        Caption = 'dataInicial'
      end
      object lbDtF: TRLLabel
        Left = 276
        Top = 106
        Width = 58
        Height = 16
        Alignment = taCenter
        Caption = 'dataFinal'
      end
      object RLLabel13: TRLLabel
        Left = 240
        Top = 106
        Width = 12
        Height = 16
        Alignment = taCenter
        Caption = 'a'
      end
    end
    object RLGroup1: TRLGroup
      Left = 39
      Top = 178
      Width = 716
      Height = 167
      DataFields = 'NUMCTE'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 716
        Height = 110
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        AfterPrint = RLBand2AfterPrint
        object RLLabel39: TRLLabel
          Left = -9
          Top = 28
          Width = 725
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '_______________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 2
          Top = 82
          Width = 716
          Height = 25
          Brush.Color = 15395562
          Pen.Style = psClear
        end
        object RLDraw3: TRLDraw
          Left = -92
          Top = 64
          Width = 358
          Height = 44
          Color = 15395562
          DrawKind = dkTriangle
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLLabel34: TRLLabel
          Left = -3
          Top = 8
          Width = 725
          Height = 16
          Caption = 
            '________________________________________________________________' +
            '_______________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7105644
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 1
          Top = 64
          Width = 717
          Height = 20
          Brush.Color = 15395562
          Pen.Style = psClear
        end
        object RLDraw1: TRLDraw
          Left = 1
          Top = 16
          Width = 716
          Height = 19
          Brush.Color = 15395562
          Pen.Style = psClear
          Visible = False
        end
        object RLLabel2: TRLLabel
          Left = 16
          Top = 6
          Width = 33
          Height = 16
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 99
          Top = 6
          Width = 51
          Height = 16
          Caption = 'N'#186' CT-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 171
          Top = 6
          Width = 38
          Height = 16
          Caption = 'S'#233'rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 227
          Top = 6
          Width = 45
          Height = 16
          Caption = 'UF Ini.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 283
          Top = 6
          Width = 45
          Height = 16
          Caption = 'UF fin.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 355
          Top = 6
          Width = 102
          Height = 16
          Caption = 'Vlr. Mercadoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 467
          Top = 6
          Width = 95
          Height = 16
          Caption = 'Tot. Presta'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 571
          Top = 6
          Width = 51
          Height = 16
          Caption = '% ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 635
          Top = 6
          Width = 63
          Height = 16
          Caption = 'Vlr. ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 16
          Top = 48
          Width = 73
          Height = 16
          Caption = 'Remetente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 400
          Top = 48
          Width = 80
          Height = 16
          Caption = 'Destinat'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 16
          Top = 88
          Width = 150
          Height = 16
          Caption = 'Documentos geradores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 273
          Top = 87
          Width = 158
          Height = 16
          Caption = 'Quantidade de carga >>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 5
          Top = 26
          Width = 38
          Height = 16
          DataField = 'DATA'
          DataSource = dsAnalitico
        end
        object dbserie: TRLDBText
          Left = 166
          Top = 26
          Width = 43
          Height = 16
          Alignment = taRightJustify
          DataField = 'SERIE'
          DataSource = dsAnalitico
        end
        object RLDBText3: TRLDBText
          Left = 233
          Top = 26
          Width = 36
          Height = 16
          Alignment = taRightJustify
          DataField = 'UFINI'
          DataSource = dsAnalitico
        end
        object RLDBText4: TRLDBText
          Left = 282
          Top = 26
          Width = 43
          Height = 16
          Alignment = taRightJustify
          DataField = 'UFFIM'
          DataSource = dsAnalitico
        end
        object RLDBText5: TRLDBText
          Left = 406
          Top = 26
          Width = 51
          Height = 16
          Alignment = taRightJustify
          DataField = 'VMERC'
          DataSource = dsAnalitico
        end
        object RLDBText6: TRLDBText
          Left = 499
          Top = 26
          Width = 63
          Height = 16
          Alignment = taRightJustify
          DataField = 'VTPREST'
          DataSource = dsAnalitico
        end
        object RLDBText7: TRLDBText
          Left = 577
          Top = 26
          Width = 45
          Height = 16
          Alignment = taRightJustify
          DataField = 'PICMS'
          DataSource = dsAnalitico
        end
        object RLDBText8: TRLDBText
          Left = 652
          Top = 26
          Width = 45
          Height = 16
          Alignment = taRightJustify
          DataField = 'VICMS'
          DataSource = dsAnalitico
        end
        object RLDBText9: TRLDBText
          Left = 17
          Top = 66
          Width = 58
          Height = 16
          DataField = 'RAZREM'
          DataSource = dsAnalitico
        end
        object RLDBText10: TRLDBText
          Left = 400
          Top = 66
          Width = 56
          Height = 16
          DataField = 'RAZDES'
          DataSource = dsAnalitico
        end
        object RLLabel32: TRLLabel
          Left = 592
          Top = 88
          Width = 112
          Height = 16
          Caption = 'Placa [               ]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 437
          Top = 88
          Width = 85
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTDECARGA'
          DataSource = dsAnalitico
        end
        object RLDBText34: TRLDBText
          Left = 645
          Top = 88
          Width = 48
          Height = 16
          Alignment = taCenter
          DataField = 'PLACA'
          DataSource = dsAnalitico
        end
        object RLDBText12: TRLDBText
          Left = 86
          Top = 26
          Width = 58
          Height = 16
          DataField = 'NUMCTE'
          DataSource = dsAnalitico
        end
        object RLDraw5: TRLDraw
          Left = 83
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw11: TRLDraw
          Left = 162
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw12: TRLDraw
          Left = 218
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw13: TRLDraw
          Left = 277
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw14: TRLDraw
          Left = 336
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw15: TRLDraw
          Left = 463
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw16: TRLDraw
          Left = 568
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw17: TRLDraw
          Left = 628
          Top = 24
          Width = 1
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw18: TRLDraw
          Left = 83
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw19: TRLDraw
          Left = 162
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw20: TRLDraw
          Left = 218
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw21: TRLDraw
          Left = 277
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw22: TRLDraw
          Left = 336
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw23: TRLDraw
          Left = 463
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw24: TRLDraw
          Left = 568
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLDraw25: TRLDraw
          Left = 628
          Top = 0
          Width = 1
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Style = bsClear
          Color = 15395562
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          Pen.Style = psClear
          Transparent = False
        end
        object RLLabel23: TRLLabel
          Left = 189
          Top = 47
          Width = 72
          Height = 16
          Caption = 'Tot. Prest.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 250
          Top = 47
          Width = 102
          Height = 16
          Alignment = taRightJustify
          DataField = 'VTPREST'
          DataSource = dsAnalitico
          Info = riSum
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 110
        Width = 716
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel64: TRLLabel
          Left = 8
          Top = 4
          Width = 71
          Height = 16
          Caption = 'Chave NFe:'
        end
        object RLDBText11: TRLDBText
          Left = 83
          Top = 4
          Width = 49
          Height = 16
          Alignment = taJustify
          DataField = 'CHAVE'
          DataSource = dsAnalitico
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 133
        Width = 716
        Height = 23
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDraw9: TRLDraw
          Left = 0
          Top = 6
          Width = 717
          Height = 12
          Brush.Color = 8947848
          Brush.Style = bsBDiagonal
          Pen.Style = psClear
        end
      end
    end
    object RLBand10: TRLBand
      Left = 39
      Top = 345
      Width = 716
      Height = 27
      AlignToBottom = True
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand10BeforePrint
      object RLLabel22: TRLLabel
        Left = 0
        Top = 5
        Width = 71
        Height = 16
        Caption = 'Tot. Merc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 189
        Top = 5
        Width = 72
        Height = 16
        Caption = 'Tot. Prest.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 368
        Top = 5
        Width = 69
        Height = 16
        Caption = 'Tot. ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 536
        Top = 5
        Width = 80
        Height = 16
        Caption = 'Qtde Carga:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object totalPrestacao: TRLLabel
        Left = 262
        Top = 5
        Width = 88
        Height = 16
      end
      object totalICMS: TRLLabel
        Left = 440
        Top = 5
        Width = 61
        Height = 16
      end
      object totalCarga: TRLLabel
        Left = 617
        Top = 5
        Width = 63
        Height = 16
      end
      object totalMercadoria: TRLLabel
        Left = 72
        Top = 5
        Width = 93
        Height = 16
      end
    end
  end
  object RLReport2: TRLReport
    Left = 729
    Top = -1
    Width = 794
    Height = 1123
    DataSource = dsSintetico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PrintDialog = False
    object RLBand4: TRLBand
      Left = 38
      Top = 200
      Width = 718
      Height = 27
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText13: TRLDBText
        Left = 6
        Top = 6
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = dsSintetico
      end
      object RLDBText14: TRLDBText
        Left = 82
        Top = 6
        Width = 58
        Height = 16
        Alignment = taRightJustify
        DataField = 'NUMCTE'
        DataSource = dsSintetico
      end
      object RLDBText15: TRLDBText
        Left = 155
        Top = 6
        Width = 43
        Height = 16
        Alignment = taRightJustify
        DataField = 'SERIE'
        DataSource = dsSintetico
      end
      object RLDBText16: TRLDBText
        Left = 222
        Top = 6
        Width = 36
        Height = 16
        Alignment = taRightJustify
        DataField = 'UFINI'
        DataSource = dsSintetico
      end
      object RLDBText17: TRLDBText
        Left = 271
        Top = 6
        Width = 43
        Height = 16
        Alignment = taRightJustify
        DataField = 'UFFIM'
        DataSource = dsSintetico
      end
      object RLDBText19: TRLDBText
        Left = 432
        Top = 6
        Width = 63
        Height = 16
        Alignment = taRightJustify
        DataField = 'VTPREST'
        DataSource = dsSintetico
      end
      object RLDBText21: TRLDBText
        Left = 620
        Top = 6
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'PLACA'
        DataSource = dsSintetico
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 139
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDraw8: TRLDraw
        Left = 1
        Top = 1
        Width = 716
        Height = 24
        Brush.Color = 15395562
        Pen.Style = psClear
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 573
        Top = 4
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel41: TRLLabel
        Left = 241
        Top = 4
        Width = 236
        Height = 19
        Caption = 'Conhecimentos de Transporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 10
        Top = 34
        Width = 59
        Height = 16
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3487029
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel43: TRLLabel
        Left = 10
        Top = 58
        Width = 42
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 655
        Top = 27
        Width = 39
        Height = 16
        Alignment = taCenter
      end
      object RLLabel44: TRLLabel
        Left = 586
        Top = 28
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLLabel45: TRLLabel
        Left = 578
        Top = 5
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLLabel46: TRLLabel
        Left = 659
        Top = 4
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 668
        Top = 4
        Width = 112
        Height = 16
        Info = itLastPageNumber
      end
      object RLLabel47: TRLLabel
        Left = 53
        Top = 58
        Width = 28
        Height = 16
        Caption = 'cnpj'
      end
      object RLLabel48: TRLLabel
        Left = 10
        Top = 82
        Width = 28
        Height = 16
        Caption = 'I.E.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 41
        Top = 82
        Width = 14
        Height = 16
        Caption = 'ie'
      end
      object RLLabel50: TRLLabel
        Left = 10
        Top = 106
        Width = 132
        Height = 16
        Caption = 'Per'#237'odo do relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 156
        Top = 106
        Width = 62
        Height = 16
        Alignment = taCenter
        Caption = 'dataInicial'
      end
      object RLLabel52: TRLLabel
        Left = 276
        Top = 106
        Width = 58
        Height = 16
        Alignment = taCenter
        Caption = 'dataFinal'
      end
      object RLLabel53: TRLLabel
        Left = 240
        Top = 106
        Width = 12
        Height = 16
        Alignment = taCenter
        Caption = 'a'
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 227
      Width = 718
      Height = 25
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel55: TRLLabel
        Left = 285
        Top = 5
        Width = 77
        Height = 16
        Caption = 'Total Frete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 394
        Top = 5
        Width = 102
        Height = 16
        Alignment = taRightJustify
        DataField = 'VTPREST'
        DataSource = dsSintetico
        Info = riSum
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 23
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDraw7: TRLDraw
        Left = 1
        Top = 1
        Width = 716
        Height = 20
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Brush.Color = 15395562
        Pen.Style = psClear
      end
      object RLLabel27: TRLLabel
        Left = 16
        Top = 2
        Width = 33
        Height = 16
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 80
        Top = 2
        Width = 51
        Height = 16
        Caption = 'N'#186' CT-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 160
        Top = 2
        Width = 38
        Height = 16
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 216
        Top = 2
        Width = 45
        Height = 16
        Caption = 'UF Ini.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 272
        Top = 2
        Width = 45
        Height = 16
        Caption = 'UF fin.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 400
        Top = 2
        Width = 95
        Height = 16
        Caption = 'Valor do Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 624
        Top = 2
        Width = 40
        Height = 16
        Caption = 'Placa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object qrySintetico: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'select distinct LPAD(cte.numcte,7,'#39'0'#39') NUMCTE, cte.data, cte.ser' +
        'ie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest, cte.placa,'
      
        '       cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecar' +
        'ga, '#39#39' chave from cte'
      ''
      '   left join cteqtdecarga qtd on qtd.numcte = cte.numcte'
      ''
      
        '   where (cte.data between :dti and :dtf) and (1 = :stat or cte.' +
        'status = :stat)'
      ''
      '   order by cte.NumCte')
    Left = 800
    Top = 368
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
      end
      item
        DataType = ftUnknown
        Name = 'stat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stat'
        ParamType = ptUnknown
      end>
    object qrySinteticoNUMCTE: TMDOStringField
      FieldName = 'NUMCTE'
      Required = True
      Size = 32765
    end
    object qrySinteticoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object qrySinteticoSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object qrySinteticoUFINI: TMDOStringField
      FieldName = 'UFINI'
      Size = 2
    end
    object qrySinteticoUFFIM: TMDOStringField
      FieldName = 'UFFIM'
      Size = 2
    end
    object qrySinteticoVMERC: TMDOBCDField
      FieldName = 'VMERC'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qrySinteticoVTPREST: TMDOBCDField
      FieldName = 'VTPREST'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qrySinteticoPLACA: TMDOStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object qrySinteticoPICMS: TMDOBCDField
      FieldName = 'PICMS'
      Precision = 9
      Size = 2
    end
    object qrySinteticoVICMS: TMDOBCDField
      FieldName = 'VICMS'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qrySinteticoRAZREM: TMDOStringField
      FieldName = 'RAZREM'
      Size = 50
    end
    object qrySinteticoRAZDES: TMDOStringField
      FieldName = 'RAZDES'
      Size = 50
    end
    object qrySinteticoQTDECARGA: TMDOBCDField
      FieldName = 'QTDECARGA'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 4
    end
    object qrySinteticoCHAVE: TMDOStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 0
    end
  end
  object dsSintetico: TDataSource
    DataSet = qrySintetico
    Left = 840
    Top = 368
  end
  object dsAnalitico: TDataSource
    DataSet = qryAnalitico
    Left = 240
    Top = 80
  end
  object qryAnalitico: TMDOQuery
    Database = dm.Database
    Transaction = dm.Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        'select distinct LPAD(cte.numcte,7,'#39'0'#39') NUMCTE, cte.data, cte.ser' +
        'ie, cte.ufini, cte.uffim, cte.vmerc, cte.vtprest,  cte.placa,'
      
        '       cte.picms, cte.vicms, cte.razrem, cte.razdes, qtd.qtdecar' +
        'ga , nfes.chave  from cte'
      ''
      '     left join cteqtdecarga qtd on qtd.numcte = cte.numcte'
      '     left join ctenferem nfes on nfes.nrcte = cte.numcte'
      ''
      
        '     where (cte.data between '#39'01.05.2014'#39' and '#39'29.05.2014'#39') and ' +
        '(1 = '#39'100'#39' or cte.status = '#39'100'#39')'
      ''
      '      order by cte.NumCte')
    Left = 200
    Top = 80
    object qryAnaliticoNUMCTE: TMDOStringField
      FieldName = 'NUMCTE'
      Required = True
      Size = 32765
    end
    object qryAnaliticoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object qryAnaliticoSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object qryAnaliticoUFINI: TMDOStringField
      FieldName = 'UFINI'
      Size = 2
    end
    object qryAnaliticoUFFIM: TMDOStringField
      FieldName = 'UFFIM'
      Size = 2
    end
    object qryAnaliticoVMERC: TMDOBCDField
      FieldName = 'VMERC'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qryAnaliticoVTPREST: TMDOBCDField
      FieldName = 'VTPREST'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qryAnaliticoPLACA: TMDOStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object qryAnaliticoPICMS: TMDOBCDField
      FieldName = 'PICMS'
      Precision = 9
      Size = 2
    end
    object qryAnaliticoVICMS: TMDOBCDField
      FieldName = 'VICMS'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 2
    end
    object qryAnaliticoRAZREM: TMDOStringField
      FieldName = 'RAZREM'
      Size = 50
    end
    object qryAnaliticoRAZDES: TMDOStringField
      FieldName = 'RAZDES'
      Size = 50
    end
    object qryAnaliticoQTDECARGA: TMDOBCDField
      FieldName = 'QTDECARGA'
      DisplayFormat = ' ,0.00; ,0.00'
      Precision = 18
      Size = 4
    end
    object qryAnaliticoCHAVE: TMDOStringField
      FieldName = 'CHAVE'
      Size = 44
    end
  end
end
