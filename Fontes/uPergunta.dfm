object frmPergunta: TfrmPergunta
  Left = 147
  Top = 360
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderStyle = bsNone
  Caption = 'frmPergunta'
  ClientHeight = 139
  ClientWidth = 401
  Color = 12483922
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    401
    139)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 105
    Width = 401
    Height = 34
    Align = alBottom
    Brush.Color = 13805192
    Pen.Style = psClear
  end
  object lblMen: TLabel
    Left = 24
    Top = 32
    Width = 40
    Height = 17
    Alignment = taCenter
    Caption = 'lblMen'
    Color = 15725041
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 0
    Width = 401
    Height = 1
    Cursor = crArrow
    Align = alTop
    Color = 8407836
    ParentColor = False
    ResizeStyle = rsNone
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 1
    Width = 1
    Height = 104
    Cursor = crArrow
    Color = 8407836
    ParentColor = False
    ResizeStyle = rsNone
  end
  object Splitter2: TSplitter
    Left = 400
    Top = 1
    Width = 1
    Height = 104
    Cursor = crArrow
    Align = alRight
    Color = 8407836
    ParentColor = False
    ResizeStyle = rsNone
  end
  object btnNao: TBitBtn
    Left = 208
    Top = 110
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Anchors = []
    Caption = '  &Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = btnNaoClick
    Glyph.Data = {
      36080000424D3608000000000000360000002800000020000000100000000100
      2000000000000008000000000000000000000000000000000000FFFFFF005C58
      DA002722CE002622CF002722CE002520CB002420CB00241FCB002520CB00251F
      CA00251FCA002620CD00231EC8002620CD005B56D900FFFFFF009B9B9B000000
      760000006A0000006B0000006A00000067000000670000006700000067000000
      660000006600000069000000640000006900000075009B9B9B00605FE1002E2D
      FB002423EF000B06B600201DE5002B29FA002824F4002824F4002723F4002722
      F4002925FC00130DCE000A05B000211AEF002921FB005D5ADE0000007D000000
      970000008B000000520000008100000096000000900000009000000090000000
      90000000980000006A0000004C0000008B000000970000007A002423D600272B
      EF001312B1006A67BF001B1AB0001F20E2002D2EF400282AED002929EE002C2D
      F4000E0DCA003F3CB5009090CE001210B1002321EE00201CD200000072000000
      8B0000004D0006035B0000004C0000007E00000090000000890000008A000000
      900000006600000051002C2C6A0000004D0000008A0000006E002C2CD400100E
      BB00918ED300FFFFFF00ADAAE000100FB2001C20E0003036F4002F35F4000D0D
      CE003835B800ECECF800FFFFFF006A67C6000F0DC0002B29D500000070000000
      57002D2A6F009B9B9B0049467C0000004E0000007C0000009000000090000000
      6A0000005400888894009B9B9B000603620000005C00000071003034DB001D24
      D700433DC300EBEAF800FFFFFF00AFADE3001D1BB9001D24DE00171CD7003934
      BE00EEEDF900FFFFFF00ACAAE4001F1BBD00252CE7002E2DD800000077000000
      730000005F00878694009B9B9B004B497F000000550000007A00000073000000
      5A008A8995009B9B9B00484680000000590000008300000074003136DC00384F
      FA00161ED4003A32C500EDEDF900FFFFFF00D0CEF000201FC1001E1DC000E2E2
      F600FFFFFF00B3B1E8001511BF00232DE5003241F7002F30D800000078000000
      96000000700000006100898995009B9B9B006C6A8C0000005D0000005C007E7E
      92009B9B9B004F4D840000005B000000810000009300000074002E34DD00364F
      F3003950F300151DD8003E35CC00DEDBF600FFFFFF00CFCDF200CFCEF300FFFF
      FF00D4D3F3002321C700202CE3003447F4003144F2002B2FDB00000079000000
      8F0000008F0000007400000068007A7792009B9B9B006B698E006B6A8F009B9B
      9B00706F8F000000630000007F000000900000008E00000077005056E5003B55
      F300334BEF003852F4001F2ADF00211DCB00CDCCF400FFFFFF00FFFFFF00CDCB
      F4002120CD002232E300354DF4002F44EE00364DF2004E52E300000081000000
      8F0000008B000000900000007B0000006700696890009B9B9B009B9B9B006967
      90000000690000007F000000900000008A0000008E0000007F006E72EA006E82
      F700556AF2004862F3002B3BE800221FD200CDCBF300FFFFFF00FFFFFF00CDCB
      F400201DD200242FE400445DF3005366F2006A7DF6006B6FE9000A0E86000A1E
      930000068E0000008F000000840000006E0069678F009B9B9B009B9B9B006967
      900000006E000000800000008F0000028E0006199200070B85006B70EC007388
      F700788CF6006472F100514BE000D5D2F700FFFFFF00DCDAF800DCDAF800FFFF
      FF00DCDAF800655EE200575EEA007588F6006F83F600686DEA00070C88000F24
      930014289200000E8D0000007C00716E93009B9B9B0078769400787694009B9B
      9B007876940001007E0000008600112492000B1F9200040986006C72EE007891
      F7006779F2005550E600CAC6F600FFFFFF00E9E8FC005851E6005954E600E0DE
      FA00FFFFFF00F6F5FD006F69E900575FEC00748CF7006A6FED00080E8A00142D
      930003158E0000008200666292009B9B9B008584980000008200000082007C7A
      96009B9B9B00929199000B0585000000880010289300060B89006E76EF006F82
      F3005E59EB00C2BFF700FFFFFF00F2F1FD006E66EC005D68EF006472F1005E57
      EB00C5C1F800FFFFFF00F1F0FD007670EC00616BF1006D74EF000A128B000B1E
      8F00000087005E5B93009B9B9B008E8D99000A02880000048B00000E8D000000
      8700615D94009B9B9B008D8C9900120C880000078D0009108B007078F1005A5C
      EF00928BF300FFFFFF00F1F0FE006F68F0005B64EF007A92F6007A91F6006775
      F2005551ED00C3BFF900FFFFFF00AFA8F7005857F0006C71EF000C148D000000
      8B002E278F009B9B9B008D8C9A000B048C0000008B00162E9200162D92000311
      8E00000089005F5B95009B9B9B004B44930000008C00080D8B006C75F3007A91
      F6005A57F000AEA8F7007771F3005F68F2007D96F600798EF500788EF5007C94
      F6006D7FF4005F5BF000948CF5005956F100758BF6006A73F10008118F00162D
      920000008C004A449300130D8F0000048E0019329200152A9100142A91001830
      9200091B900000008C003028910000008D0011279200060F8D00949BF60085A1
      F7007C94F6005B5BF3006975F50084A1F8008099F7007F98F7007F98F7007E97
      F600819CF6007588F5005C5FF3007990F500819DF7009399F50030379200213D
      93001830920000008F0005119100203D94001C3593001B3493001B3493001A33
      92001D3892001124910000008F00152C91001D3993002F359100FFFFFF00969B
      F800757BF5007278F500757CF500737AF500737AF500727AF500727AF500737A
      F5007279F500737AF500737AF400737AF400959AF700FFFFFF009B9B9B003237
      9400111791000E149100111891000F1691000F1691000E1691000E1691000F16
      91000E1591000F1691000F1690000F169000313693009B9B9B00}
    NumGlyphs = 2
  end
  object btnSim: TBitBtn
    Left = 80
    Top = 110
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Anchors = []
    Caption = '  &Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = btnSimClick
    Glyph.Data = {
      36080000424D3608000000000000360000002800000020000000100000000100
      2000000000000008000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BBE4C20070CF850027B747001EBA40001EBA400027B7
      470070CF8500BBE4C200FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B009B9B9B0057805E000C6B21000053000000560000005600000053
      00000C6B210057805E009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
      FF00FAFDFA004FB9620019C140001FCE4C0024DC580027DD5C0027DD5C0024DC
      58001FCE4C0019C140004FB96200FAFDFA00FFFFFF00FFFFFF009B9B9B009B9B
      9B009699960000550000005D0000006A00000078000000790000007900000078
      0000006A0000005D000000550000969996009B9B9B009B9B9B00FFFFFF00FBFD
      FB0021A93A001ED04E0021D4540020D0530004B62A0018C440001DCE4A0018C8
      440020D1510021D454001ED04E0021A93A00FBFDFB00FFFFFF009B9B9B009799
      970000450000006C000000700000006C00000052000000600000006A00000064
      0000006D000000700000006C000000450000979997009B9B9B00FFFFFF004EB1
      5B001ECE4D0022D4560015C948001CAC2F009DD2A10037AF460014C13B001FD2
      4E001ECE4B001ECD4A0020D253001ECE4D004EB15B00FFFFFF009B9B9B00004D
      0000006A0000007000000065000000480000396E3D00004B0000005D0000006E
      0000006A000000690000006E0000006A0000004D00009B9B9B00BDDEBE0017BA
      3F0021D85A0013C6460012A82600F2F4EC00FFFFFF00EAF2E60026AA38000DC0
      390020D24F001ECE49001DCD4D0020D7580017BA3F00BDDEBE00597A5A000056
      00000074000000620000004400008E9088009B9B9B00868E820000460000005C
      0000006E0000006A0000006900000073000000560000597A5A006ABC740018D1
      520014CB4E000BA01E00F2F4EC00FFFBFF00FFFAFF00FFFFFF00EAF2E60023A8
      35000BC03A001ED359001CCF53001ED2580018CF51006ABC740006581000006D
      000000670000003C00008E9088009B979B009B969B009B9B9B00868E82000044
      0000005C0000006F0000006B0000006E0000006B00000658100030A03F002DE1
      72001BA82D00F2F4EC00FFF8FF00EAF2E600A9D5A400EEF2EB00FFFFFF00D0EB
      D30023A834000AC2420018D6620013CF540030E1730030A14100003C0000007D
      0E00004400008E9088009B949B00868E8200457140008A8E87009B9B9B006C87
      6F0000440000005E000000720000006B0000007D0F00003D000030A3430065EA
      A10058B25C00EAF2E600EAF2E6000EB42F0000BF30003AB64900F2F4EC00FFFF
      FF00EAF2E60023A8330007C13D0024D8690073F0B10030A14200003F00000186
      3D00004E0000868E8200868E820000500000005B0000005200008E9088009B9B
      9B00868E820000440000005D0000007405000F8C4D00003D00002395370078F4
      BC0049CD7A0074BF7F002DB64C0024D367002ED8720019CC5A0048B55800EAF2
      E600FFFFFF00EAF2E60026A7310025D0600077F6BE0023953500003100001490
      580000691600105B1B0000520000006F030000740E000068000000510000868E
      82009B9B9B00868E820000430000006C000013925A000031000033933D0071F2
      B50061E4A8004CDB95005BE1A50061DEA50063DDA40063E2AB004DDA96004FB8
      6000EEF2E800FFFFFF00EAF2E6002AB343006DF0B30033933D00002F00000D8E
      51000080440000773100007D4100007A410000794000007E4700007632000054
      00008A8E84009B9B9B00868E8200004F0000098C4F00002F000067AB660086E3
      B50062E7A9005DE2A40060E2A6005FE1A6005FE1A6005EE1A50063E5AD004CDA
      95004DB75E00EAF0E500FFFFFF0061BC650080DFAE0067AB660003470200227F
      510000834500007E4000007E4200007D4200007D4200007D4100008149000076
      310000530000868C81009B9B9B00005801001C7B4A0003470200B9D4B9004EB0
      6800A8FCE1005FE1A20057E09F005BE0A3005DE1A4005DE1A4005DE1A40061E5
      AB004EDC970048BA60005DC2700096EABF004EB06800B9D4B90055705500004C
      040044987D00007D3E00007C3B00007C3F00007D4000007D4000007D40000081
      47000078330000560000005E0C0032865B00004C040055705500FFFFFF004589
      45007BDBA700B0FCE80076E5B50062E3AA005EE0A6005EE1A6005EE1A6005EE0
      A50066E6B0006FE3AF00A7F9E0007ADCA80045894500FFFFFF009B9B9B000025
      0000177743004C98840012815100007F4600007C4200007D4200007D4200007C
      410002824C000B7F4B0043957C0016784400002500009B9B9B00FFFFFF00FAFD
      FA00157215006DD6A300B3FDF000A4F5DF008CE9C7008CE8C4008AE7C2008DE9
      C600A5F5DE00B3FDF0006DD6A30015721500FAFDFA00FFFFFF009B9B9B009699
      9600000E000009723F004F998C0040917B00288563002884600026835E002985
      620041917A004F998C0009723F00000E0000969996009B9B9B00FFFFFF00FFFF
      FF00F9FCF9004586450038A75E007FE1B800A9FFEC00B9FFFB00B9FFFB00A9FF
      EC007FE1B80038A75E0045864500F9FCF900FFFFFF00FFFFFF009B9B9B009B9B
      9B009598950000220000004300001B7D5400459B8800559B9700559B9700459B
      88001B7D54000043000000220000959895009B9B9B009B9B9B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B7CEB70067A56700247D33002887380028873800247D
      330067A56700B7CEB700FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B009B9B9B00536A5300034103000019000000230000002300000019
      000003410300536A53009B9B9B009B9B9B009B9B9B009B9B9B00}
    NumGlyphs = 2
  end
end
