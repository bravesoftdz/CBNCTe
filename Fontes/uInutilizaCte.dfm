object frmInutilizaCte: TfrmInutilizaCte
  Left = 452
  Top = 241
  Width = 334
  Height = 307
  Caption = 'Inutiliza'#231#227'o de n'#250'meros / CT-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = -4
    Top = 40
    Width = 217
    Height = 17
    Pen.Style = psClear
  end
  object Shape3: TShape
    Left = -4
    Top = 64
    Width = 217
    Height = 17
    Pen.Style = psClear
  end
  object Shape4: TShape
    Left = -4
    Top = 88
    Width = 217
    Height = 17
    Pen.Style = psClear
  end
  object Shape5: TShape
    Left = -4
    Top = 112
    Width = 217
    Height = 17
    Pen.Style = psClear
  end
  object Shape1: TShape
    Left = -4
    Top = 16
    Width = 217
    Height = 17
    Pen.Style = psClear
  end
  object Label9: TLabel
    Left = 70
    Top = 18
    Width = 19
    Height = 14
    Caption = 'Ano'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 70
    Top = 43
    Width = 37
    Height = 14
    Caption = 'Modelo'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 70
    Top = 67
    Width = 25
    Height = 14
    Caption = 'S'#233'rie'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 70
    Top = 90
    Width = 72
    Height = 14
    Caption = 'N'#250'mero Inicial'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 70
    Top = 114
    Width = 67
    Height = 14
    Caption = 'N'#250'mero Final'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 5
    Top = 138
    Width = 59
    Height = 14
    Caption = 'Justificativa'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtAno: TFocusCurrEdit
    Left = 205
    Top = 14
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 0
    Padrao = True
  end
  object edtModelo: TFocusCurrEdit
    Left = 205
    Top = 38
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 1
    Padrao = True
  end
  object edtSerie: TFocusCurrEdit
    Left = 205
    Top = 62
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 2
    Padrao = True
  end
  object edtNumIni: TFocusCurrEdit
    Left = 205
    Top = 86
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 3
    Padrao = True
  end
  object edtNumFin: TFocusCurrEdit
    Left = 205
    Top = 110
    Width = 100
    Height = 21
    AutoSize = False
    DisplayFormat = '0'
    TabOrder = 4
    Padrao = True
  end
  object memoJust: TMemo
    Left = 4
    Top = 153
    Width = 301
    Height = 80
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object btConfirma: TBitBtn
    Left = 54
    Top = 241
    Width = 100
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 6
    OnClick = btConfirmaClick
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
  object btCancela: TBitBtn
    Left = 158
    Top = 241
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btCancelaClick
    Glyph.Data = {
      36080000424D3608000000000000360000002800000020000000100000000100
      2000000000000008000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEEDF800A6A5E0006765CE004946CB004946CB006765
      CE00A6A5E000EEEDF800FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B009B9B9B008A89940042417C0003016A0000006700000067000301
      6A0042417C008A8994009B9B9B009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
      FF00FFFFFF00A7A6E2000B07CD00100CED00120EFE00130EFF00130EFF00120E
      FE00100CEE000B07CD00A7A6E200FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B0043427E00000069000000890000009A0000009B0000009B000000
      9A0000008A000000690043427E009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
      FF008887E000100EE9001412FC001313FC00110FE9000F0DE0000F0DE000110F
      EA001211F7001312FB00100EEA008180DF00FFFFFF00FFFFFF009B9B9B009B9B
      9B0024237C000000850000009800000098000000850000007C0000007C000000
      86000000930000009700000086001D1C7B009B9B9B009B9B9B00FFFFFF00A7A6
      E4001214EB001619FC001416F2001F1ED400AAA9EC00AEAEE400B5B4E7003C39
      C7001315EF001416F6001518F9001214EB00A7A6E400FFFFFF009B9B9B004342
      8000000087000000980000008E0000007000464588004A4A8000515083000000
      630000008B00000092000000950000008700434280009B9B9B00EEEEFA001013
      DB00171FFB00171DF1008C8CEC00F6F6FD00FFFFFF00FFFFFF00918FDF001A1F
      E300161EF700161DF400161EF600171EFA001013DB00EEEEFA008A8A96000000
      77000000970000008D0028288800929299009B9B9B009B9B9B002D2B7B000000
      7F0000009300000090000000920000009600000077008A8A9600A8A7EC00151E
      F1001B27FB002224D900FFFFFF00FFFFFF00FFFFFF008885E000141BE6001924
      F9001923F6001924F500151AE7001A25F800151EF200A8A7EC00444388000000
      8D0000009700000075009B9B9B009B9B9B009B9B9B0024217C00000082000000
      95000000920000009100000083000000940000008E00444388007373E5002739
      FD001521F100AAA9ED00FFFFFF00FFFFFF00817EE100141BE3001B2CF9001B2A
      F6001B2BF8001113D9003B38CF001521F0002739FD007373E5000F0F81000000
      990000008D00464589009B9B9B009B9B9B001D1A7D0000007F00000095000000
      9200000094000000750000006B0000008C00000099000F0F81006062E600536C
      FF00202FEC00B4B3F100FFFFFF008885E600161EE4001E32F8001C31F6001E34
      F900161DE400918EE500C0BFF100202FEC00546CFF005F61E300000082000008
      9B0000008800504F8D009B9B9B00242182000000800000009400000092000000
      9500000080002D2A81005C5B8D000000880000089B0000007F005F61EC00607B
      FF00414FF100C1BFF400928EEA001820E6002139F9002037F6002139F8001821
      E9008985E700FFFFFF00B5B4F200414FF100607AFF005D5FE000000088000017
      9B0000008D005D5B90002E2A8600000082000000950000009200000094000000
      8500252183009B9B9B0051508E0000008D0000169B0000007C007978F1005F77
      FF004C60F7003D37E2001318E500253FFA00243CF8002641FA001B26EC00837E
      E800FFFFFF00FFFFFF00ADABF5004C60F9005C75F8007675E40015148D000013
      9B000000930000007E0000008100000096000000940000009600000088001F1A
      84009B9B9B009B9B9B0049479100000095000011940012118000ABA8F5005C6C
      FD005E7CFE004251F4003650FA00223EF8002845FA00202FF2008A86EE00FFFF
      FF00FFFFFF00FFFFFF003B40EE006281FF005869E900A9A7EE00474491000008
      990000189A000000900000009600000094000000960000008E0026228A009B9B
      9B009B9B9B009B9B9B0000008A00001D9B000005850045438A00EEEDFD004042
      F5007490FF005E7BFD005C78FC003D5CFB002637F3009390F200FFFFFF00FFFF
      FF00F6F6FF009B9EF900556DFC007591FD00393BD200EEEDFD008A8999000000
      9100102C9B0000179900001498000000970000008F002F2C8E009B9B9B009B9B
      9B0092929B00373A950000099800112D990000006E008A899900FFFFFF00A8A6
      F800646EFA007A94FE00617EFC005A73FB004843EF00B6B3F900B1AEFA00B4B5
      FB004047F3005873FC007F9DFF005B65DF00A6A4EC00FFFFFF009B9B9B004442
      9400000A960016309A00001A9800000F970000008B00524F95004D4A96005051
      970000008F00000F98001B399B0000017B00424088009B9B9B00FFFFFF00FFFF
      FF008D89F8006772F9008CA8FE007695FF005A72FC004F64FA004E63F9005870
      FC007D9DFF008EAAFE00636EE4008887DA00FFFFFF00FFFFFF009B9B9B009B9B
      9B0029259400030E950028449A0012319B00000E98000000960000009500000C
      980019399B002A469A00000A8000242376009B9B9B009B9B9B00FFFFFF00FFFF
      FF00FFFFFF00A8A6F8004445F1007A88F70093A9FD0098B1FF0098B2FF0092A9
      FB007988EF004042DF00A6A4E900FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B004442940000008D00162493002F459900344D9B00344E9B002E45
      970015248B0000007B00424085009B9B9B009B9B9B009B9B9B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEEDFE00AEACF6007E7CF3006969EF006869EE007C7C
      EE00ADABED00EEEDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B9B9B009B9B
      9B009B9B9B009B9B9B008A899A004A4892001A188F0005058B0004058A001818
      8A00494789008A8999009B9B9B009B9B9B009B9B9B009B9B9B00}
    NumGlyphs = 2
  end
end