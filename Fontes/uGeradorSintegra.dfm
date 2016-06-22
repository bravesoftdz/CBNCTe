object frmGeradorSintegra: TfrmGeradorSintegra
  Left = 340
  Top = 231
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador Sintegra'
  ClientHeight = 185
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 192
    Top = 16
    Width = 305
    Height = 73
    Caption = ' Registros '
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 24
      Top = 22
      Width = 97
      Height = 17
      Caption = 'Registro 10'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Registro 11'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 160
      Top = 22
      Width = 97
      Height = 17
      Caption = 'Registro 70'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 160
      Top = 44
      Width = 97
      Height = 17
      Caption = 'Registro 71'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 177
    Top = 150
    Width = 129
    Height = 25
    Caption = '[ F3 ]  Gerar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000D6B6A1AF6727
      B96D1CB76B1BB76B1BB76B1BB76B1BB76B1BB76A1BB96E1DB3661BB3661BB778
      49FFFFFFFFFFFFFFFFFFC07F3BFBCD59EEBD48EFBE4BEFBE4BEFBE4BEFBE4BEF
      BE4BEEBD4AF5C84FD9A041B66B28B66B28AD704EFFFFFFFFFFFFC27F3EFFFFBF
      FEEAA1FDEAA5FCEAA6FCEAA6FCEAA6FCEAA6FCE9A5FFF6B2E4C486B66B28D490
      26974518FFFFFFFFFFFFC48B59C27F3EC27F3EC27F3EC27F3EC27F3EC27F3EC2
      7F3EC27F3EC27F3EB66B28B66B28D695309E4B19FFFFFFFFFFFFFFFFFFFFFFFF
      B66B28E5B042DFA02AE1A330E1A330E1A330E1A330E1A32EE2A535EBB643D597
      37A4501CFFFFFFFFFFFFFFFFFFFFFFFFC27F3EEFC45EDCA038D89A39D89B39D8
      9B39D89B39D89B39D89C39EAB748D99E3FA4501CFFFFFFFFFFFFFFFFFFFFFFFF
      C4843EEEC463F3D799F9E9C2F9E9C2F9E9C2F9E9C2F9E9C2F3D799ECBE5EDCA3
      43AE5E1CFFFFFFFFFFFFFFFFFFFFFFFFCB8B43F2CC6FDD9E32D69630D7982FD7
      982FD7982FD7972FD89930EDBE56E0AC51B6651DFFFFFFFFFFFFFFFFFFFFFFFF
      CF9045F0CD74F3D799FAE8C2F9E8BDF9E8BDF9E8BDF9E9C2F8E3B5F0CC72E2AD
      52BC6C20FFFFFFFFFFFFFFFFFFFFFFFFD39649F5D581E1AE53D9A04ADAA44ADA
      A44ADAA44ADAA148DCA54EF1CB6EE6B65EC37320FFFFFFFFFFFFFFFFFFFFFFFF
      D79D4DF4D785F9EBCDFAEFD5FAEFD5FAEFD5FAEFD5FAEFD5F9EBCDF5D984E7BA
      61C6771FFFFFFFFFFFFFFFFFFFFFFFFFDBA352F6DD91EBBE58E8B449E8B54BE8
      B54BE8B54BE8B349E9B74FF4D57EE7BC68DA9836FFFFFFFFFFFFFFFFFFFFFFFF
      DFA855F7DE93F8E4B8FBF2DFFBF2DFFBF2DFFBF2DFFBF2DFF9EBCDF8DF96E8BD
      68E0A43BE9B751E7B34DFFFFFFFFFFFFE3AF5BF8E199F3D376F2D375F2D375F2
      D375F2D375F2D375F2D276F7DE8AEEC773DA9728E2AA3DE5B046FFFFFFFFFFFF
      E7B85FFAECB8F8E29BF8E29EF8E29EF8E29EF8E29EF8E29EF8E29DF9E7A5F5DA
      8EDA931CDC9A25E9BC63FFFFFFFFFFFFF2D8A5EFC976EFCB78EFCB78EFCB78EF
      CB78EFCB78EFCB78EFCB77EFCD7AF0CB77E7AE42E8B75AF4DEB0}
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 16
    Width = 177
    Height = 73
    Caption = ' Per'#237'odo '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 30
      Height = 13
      Caption = 'In'#237'cio:'
    end
    object Label2: TLabel
      Left = 16
      Top = 47
      Width = 19
      Height = 13
      Caption = 'Fim:'
    end
    inline FramePeriodo21: TFramePeriodo2
      Left = 52
      Top = 21
      Width = 135
      Height = 45
      AutoScroll = False
      AutoSize = True
      TabOrder = 0
      inherited eddi: TDateTimePicker
        Top = 0
      end
      inherited eddf: TDateTimePicker
        Left = 0
        Top = 24
        Width = 97
      end
    end
  end
  object rgFinArq: TRadioGroup
    Left = 8
    Top = 96
    Width = 489
    Height = 41
    Caption = ' Modalidade de frete '
    Columns = 3
    Items.Strings = (
      'Normal'
      'Retifica'#231#227'o Total'
      'Retifica'#231#227'o Aditiva')
    TabOrder = 3
  end
end
