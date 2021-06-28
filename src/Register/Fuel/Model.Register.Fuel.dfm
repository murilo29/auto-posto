inherited dtmdlFuel: TdtmdlFuel
  inherited fdqryList: TFDQuery
    OnCalcFields = fdqryListCalcFields
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select '
      ' fu.id,'
      ' fu.description as des_fuel,'
      ' fu.value as fuel_value,'
      ' tax.description as des_tax,'
      ' tax.value as tax_value'
      'from fuel fu'
      'inner join tax on'
      ' fu.id_tax = tax.id'
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
    object fdqryListdes_fuel: TStringField
      DisplayLabel = 'Fuel'
      DisplayWidth = 30
      FieldName = 'des_fuel'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryListfuel_value: TBCDField
      DisplayLabel = 'Value'
      DisplayWidth = 20
      FieldName = 'fuel_value'
      Origin = 'value'
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryListdes_tax: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tax'
      DisplayWidth = 30
      FieldName = 'des_tax'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryListtax_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Value'
      DisplayWidth = 20
      FieldName = 'tax_value'
      Origin = 'value'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
    object fdqryListfuel_total: TFloatField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'fuel_total'
      currency = True
      Calculated = True
    end
  end
  inherited fdqryRegister: TFDQuery
    OnCalcFields = fdqryRegisterCalcFields
    SQL.Strings = (
      'select * from fuel'
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
    object fdqryRegisterid_tax: TStringField
      FieldName = 'id_tax'
      Origin = 'id_tax'
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
      DisplayWidth = 20
      FieldName = 'value'
      Origin = 'value'
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryRegisterTax: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'Tax'
      LookupDataSet = fdqryTax
      LookupKeyFields = 'id'
      LookupResultField = 'des'
      KeyFields = 'id_tax'
      Size = 38
      Lookup = True
    end
    object fdqryRegisterTotalTax: TFloatField
      DisplayLabel = 'Total Tax'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'TotalTax'
      currency = True
      Calculated = True
    end
  end
  object fdqryTax: TFDQuery
    Connection = dtmdlConnection.conConnection
    SQL.Strings = (
      
        'select id,description||'#39' - '#39'||cast(value as varchar(15))||" %" a' +
        's des,value from tax'
      'order by description')
    Left = 176
    Top = 16
    object fdqryTaxid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object fdqryTaxdes: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Description'
      DisplayWidth = 50
      FieldName = 'des'
      Origin = 'des'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object fdqryTaxvalue: TBCDField
      FieldName = 'value'
      Origin = 'value'
      Precision = 12
      Size = 2
    end
  end
end
