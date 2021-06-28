inherited dtmdlBomb: TdtmdlBomb
  inherited fdqryList: TFDQuery
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select '
      ' bomb.id,'
      ' bomb.description as bomb_des,'
      ' fuel.description as fuel_des,'
      ' fuel.value + ((tax.value / 100.0) * fuel.value) as fuel_value'
      'from bomb'
      'inner join fuel on'
      ' bomb.id_fuel = fuel.id'
      'inner join tax on'
      ' fuel.id_tax = tax.id'
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
    object fdqryListbomb_des: TStringField
      DisplayLabel = 'Bomb'
      DisplayWidth = 30
      FieldName = 'bomb_des'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryListfuel_des: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fuel'
      DisplayWidth = 30
      FieldName = 'fuel_des'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryListfuel_value: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fuel Value'
      DisplayWidth = 20
      FieldName = 'fuel_value'
      Origin = 'fuel_value'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  inherited fdqryRegister: TFDQuery
    SQL.Strings = (
      'select * from bomb'
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
    object fdqryRegisterid_fuel: TStringField
      FieldName = 'id_fuel'
      Origin = 'id_fuel'
      Required = True
      Visible = False
      Size = 38
    end
    object fdqryRegisterdescription: TStringField
      DisplayLabel = 'Bomb'
      DisplayWidth = 30
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryRegisterFuel: TStringField
      FieldKind = fkLookup
      FieldName = 'Fuel'
      LookupDataSet = fdqryFuel
      LookupKeyFields = 'id'
      LookupResultField = 'fuel_des'
      KeyFields = 'id_fuel'
      Lookup = True
    end
  end
  object fdqryFuel: TFDQuery
    Connection = dtmdlConnection.conConnection
    SQL.Strings = (
      'select '
      ' fuel.id, '
      
        ' fuel.description ||'#39' - R$ : '#39'||printf("%.2f", (fuel.value + ((t' +
        'ax.value / 100.0) * fuel.value))) as fuel_des '
      'from fuel'
      'inner join tax on'
      ' fuel.id_tax = tax.id'
      'order by fuel.description')
    Left = 168
    Top = 16
    object fdqryFuelid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object fdqryFuelfuel_des: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fuel_des'
      Origin = 'fuel_des'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
