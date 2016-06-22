object frm_Backup: Tfrm_Backup
  Left = 190
  Top = 178
  Width = 696
  Height = 480
  Caption = 'Backup/Restaura'#231#227'o  Interbase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 673
    Height = 425
    ActivePage = tsBackup
    TabOrder = 0
    object tsBackup: TTabSheet
      Caption = '&Backup         '
      object Label1: TLabel
        Left = 8
        Top = 112
        Width = 18
        Height = 13
        Caption = '&Log'
        FocusControl = mmBackup
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 80
        Height = 13
        Caption = 'B&anco de Dados'
        FocusControl = feBanco
      end
      object Label6: TLabel
        Left = 8
        Top = 72
        Width = 161
        Height = 13
        Caption = '&Caminho de Grava'#231#227'o do Backup'
        FocusControl = deBackup
      end
      object mmBackup: TMemo
        Left = 0
        Top = 128
        Width = 657
        Height = 225
        TabOrder = 0
      end
      object Button1: TButton
        Left = 8
        Top = 364
        Width = 75
        Height = 25
        Caption = '&Backup'
        TabOrder = 1
        OnClick = Button1Click
      end
      object feBanco: TFilenameEdit
        Left = 8
        Top = 40
        Width = 617
        Height = 21
        Filter = 'Interbase Database|*.gdb'
        NumGlyphs = 1
        TabOrder = 2
      end
      object deBackup: TDirectoryEdit
        Left = 8
        Top = 88
        Width = 617
        Height = 21
        NumGlyphs = 1
        TabOrder = 3
      end
    end
    object tsRestaurar: TTabSheet
      Caption = '&Restaurar      '
      ImageIndex = 1
      object Label3: TLabel
        Left = 10
        Top = 24
        Width = 91
        Height = 13
        Caption = '&Arquivo de Backup'
        FocusControl = feRestaurar
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 18
        Height = 13
        Caption = '&Log'
        FocusControl = mmRestaurar
      end
      object Label5: TLabel
        Left = 11
        Top = 69
        Width = 80
        Height = 13
        Caption = '&Banco de Dados'
        FocusControl = feRestBanco
      end
      object mmRestaurar: TMemo
        Left = 0
        Top = 128
        Width = 657
        Height = 225
        TabOrder = 0
      end
      object Button2: TButton
        Left = 8
        Top = 364
        Width = 75
        Height = 25
        Caption = '&Restore'
        TabOrder = 1
        OnClick = Button2Click
      end
      object feRestaurar: TFilenameEdit
        Left = 8
        Top = 40
        Width = 617
        Height = 21
        Filter = 'Arquivo de Backup Interbase *.gbk|*.gbk'
        NumGlyphs = 1
        TabOrder = 2
      end
      object feRestBanco: TFilenameEdit
        Left = 8
        Top = 88
        Width = 617
        Height = 21
        Filter = 'Interbase Database *.gbd|*.gdb'
        NumGlyphs = 1
        TabOrder = 3
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 656
    Top = 67
  end
  object IBRestoreService1: TMDORestoreService
    LoginPrompt = False
    TraceFlags = []
    PageBuffers = 0
    PageSize = 4096
    Left = 654
  end
  object IBBackupService1: TMDOBackupService
    LoginPrompt = False
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 656
    Top = 32
  end
end
