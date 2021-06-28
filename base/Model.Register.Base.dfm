inherited dtmdlRegister: TdtmdlRegister
  OldCreateOrder = True
  Height = 269
  Width = 470
  object fdqryList: TFDQuery
    Connection = dtmdlConnection.conConnection
    Left = 16
    Top = 16
  end
  object dsList: TDataSource
    DataSet = fdqryList
    Left = 16
    Top = 72
  end
  object fdqryRegister: TFDQuery
    OnNewRecord = fdqryRegisterNewRecord
    Connection = dtmdlConnection.conConnection
    Left = 88
    Top = 16
  end
  object dsRegister: TDataSource
    DataSet = fdqryRegister
    Left = 88
    Top = 72
  end
end
