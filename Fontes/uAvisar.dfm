object frmAvisar: TfrmAvisar
  Left = 443
  Top = 253
  BorderStyle = bsNone
  Caption = 'frmAvisar'
  ClientHeight = 107
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poPrintToFit
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object panCorpo: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 107
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      538
      107)
    object Shape3: TShape
      Left = 536
      Top = 1
      Width = 1
      Height = 71
      Align = alRight
      Pen.Color = 7105644
    end
    object lblMem: TMemo
      Left = 15
      Top = 17
      Width = 509
      Height = 52
      TabStop = False
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object panRodape: TPanel
      Left = 1
      Top = 72
      Width = 536
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      Color = 15329769
      TabOrder = 1
      DesignSize = (
        536
        34)
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 535
        Height = 34
        Align = alClient
        Brush.Color = 14865863
        Pen.Style = psClear
      end
      object Shape2: TShape
        Left = 535
        Top = 0
        Width = 1
        Height = 34
        Align = alRight
        Pen.Color = 7105644
      end
      object Label1: TLabel
        Left = -27
        Top = 21
        Width = 600
        Height = 13
        Alignment = taCenter
        Caption = 
          '________________________________________________________________' +
          '____________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7105644
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnOk: TBitBtn
        Left = 202
        Top = 5
        Width = 136
        Height = 25
        Anchors = [akTop, akRight]
        Caption = ' <ENTER>  &OK'
        TabOrder = 0
        TabStop = False
        OnClick = btnOkClick
        Glyph.Data = {
          36080000424D3608000000000000360000002800000020000000100000000100
          2000000000000008000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF001AA41C001AA41C00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B0000400000004000009B9B9B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0022B72B002DCE3D0025BE2F0021B52900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B009B9B9B009B9B9B0000530000006A0000005A0000005100009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
          FF00FFFFFF0020B4270031D548002DD4410023CD350025BD2E0022B62A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B009B9B9B000050000000710000007000000069000000590000005200009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
          FF001EB4240031D44A0030D74A004ADE63006DE4810025CE360024BF2F0021B5
          2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B00005000000070000000730000007A000009801D00006A0000005B00000051
          00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF001CB4
          1E0033D44D0035DA530056E06D0051E167009BF1B00079E78D0022CE350024BD
          2E001AA51E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B000050
          00000070000000760000007C0900007D0300378D4C0015832900006A00000059
          0000004100009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B0092DD920030D1
          4A0039DD5D005FE5780038C5400011B4130022BC2700A6F5B8006CE3810021CF
          340021B529001FAE2600FFFFFF00FFFFFF00FFFFFF00FFFFFF002E792E00006D
          0000007900000081140000610000005000000058000042915400087F1D00006B
          000000510000004A00009B9B9B009B9B9B009B9B9B009B9B9B0030C7410041E1
          690073E8910045CA4E000D9D0B00FFFFFF0011A310002DC03200AFF7C0005BDF
          6F0022CF360025BE3000169A1800FFFFFF00FFFFFF00FFFFFF0000630000007D
          05000F842D0000660000003900009B9B9B00003F0000005C00004B935C00007B
          0B00006B0000005A0000003600009B9B9B009B9B9B009B9B9B002BC1350080EB
          9E005BD36B000C9F0A00FFFFFF00FFFFFF00FFFFFF000EA70D0045C94E00B3F8
          C50046DA5C0024D0380020AD250015981400FFFFFF00FFFFFF00005D00001C87
          3A00006F0700003B00009B9B9B009B9B9B009B9B9B0000430000006500004F94
          610000760000006C000000490000003400009B9B9B009B9B9B00FFFFFF0079CA
          780079CA7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000CA10B0053CE
          6000B3F7C70041DA560026D039001CA92100159A1400FFFFFF009B9B9B001566
          1400156614009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00003D0000006A
          00004F93630000760000006C000000450000003600009B9B9B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000DA7
          0C0074DC8200BFF9D10044DC5A0024CB360019A41C0092DD92009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B000043
          000010781E005B956D000078000000670000004000002E792E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0017B71F0068DB7900B8F8CB004ADF5F0022C6330018A11B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B00005300000477150054946700007B000000620000003D0000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF001ABA220054D464009DEEAD004FE167001FB52B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B009B9B9B000056000000700000398A4900007D030000510000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0016B81E0050D55F007EE690001CB627009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B009B9B9B009B9B9B0000540000007100001A822C0000520000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF003BCF4C0092DD9200FFFFFF009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B00006B00002E792E009B9B9B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
          9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B00}
        NumGlyphs = 2
      end
    end
  end
  object timEspera: TTimer
    Enabled = False
    OnTimer = timEsperaTimer
    Left = 392
    Top = 16
  end
end