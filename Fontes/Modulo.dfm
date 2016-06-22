object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 256
  Height = 260
  Width = 319
  object Database: TMDODatabase
    ClientLib = clFBClient
    Connected = True
    DatabaseName = 'D:\Sistemas\Delphi\CBNCTe\Dados\BASE.FDB'
    DefaultTransaction = Transaction
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 16
  end
  object Transaction: TMDOTransaction
    Active = True
    AutoCommit = True
    DefaultDatabase = Database
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 88
    Top = 16
  end
  object qryGeneric: TMDOQuery
    Database = Database
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 168
    Top = 16
  end
  object qryGeneric2: TMDOQuery
    Database = DBRemoto
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 168
    Top = 168
  end
  object DBRemoto: TMDODatabase
    ClientLib = clFBClient
    DefaultTransaction = TransactionR
    IdleTimer = 0
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 168
  end
  object TransactionR: TMDOTransaction
    Active = False
    AutoCommit = True
    DefaultDatabase = DBRemoto
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 80
    Top = 168
  end
  object dspGeneric: TDataSetProvider
    Left = 16
    Top = 97
  end
  object cdsGeneric: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 98
  end
end
