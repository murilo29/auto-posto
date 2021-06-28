inherited dtmdlTax: TdtmdlTax
  inherited fdqryList: TFDQuery
    SQL.Strings = (
      'select * from tax'
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
      DisplayWidth = 80
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryListvalue: TBCDField
      DisplayLabel = 'Value'
      DisplayWidth = 30
      FieldName = 'value'
      Origin = 'value'
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
  end
  inherited fdqryRegister: TFDQuery
    SQL.Strings = (
      'select * from tax'
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
      Size = 38
    end
    object fdqryRegisterdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryRegistervalue: TBCDField
      DisplayLabel = 'Value'
      DisplayWidth = 30
      FieldName = 'value'
      Origin = 'value'
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
  end
end
