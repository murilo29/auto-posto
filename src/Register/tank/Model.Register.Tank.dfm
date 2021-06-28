inherited dtmdlTank: TdtmdlTank
  inherited fdqryList: TFDQuery
    SQL.Strings = (
      'select * from tank'
      '!where')
    MacroData = <
      item
        Value = Null
        Name = 'WHERE'
      end>
    object fdqryListid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 38
    end
    object fdqryListdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryListliter: TBCDField
      DisplayWidth = 20
      FieldName = 'liter'
      Origin = 'liter'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
  inherited fdqryRegister: TFDQuery
    SQL.Strings = (
      'select * from tank'
      'where id = :id')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object fdqryRegisterid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 38
    end
    object fdqryRegisterdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryRegisterliter: TBCDField
      DisplayLabel = 'Liter'
      DisplayWidth = 20
      FieldName = 'liter'
      Origin = 'liter'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
end
