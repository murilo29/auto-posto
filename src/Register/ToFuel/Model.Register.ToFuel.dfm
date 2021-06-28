inherited dtmdlToFuel: TdtmdlToFuel
  Width = 485
  inherited fdqryList: TFDQuery
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'SELECT tfl.id,'
      '       tank.description AS tank_desc,'
      '       bomb.description AS bomb_desc,'
      '       tfl.date,'
      '       tfl.liters,'
      '       tfl.liter_value,'
      '       tfl.tax,'
      
        '       tfl.liter_value + ( (tfl.tax / 100.0) * tfl.liter_value) ' +
        'AS liter_tax,'
      
        '       tfl.liters * (tfl.liter_value + ( (tfl.tax / 100.0) * tfl' +
        '.liter_value)) as total'
      '  FROM to_fuel tfl'
      '       INNER JOIN'
      '       tank_bomb tb ON tfl.id_tank_bomb = tb.id'
      '       INNER JOIN'
      '       tank ON tb.id_tank = tank.id'
      '       INNER JOIN'
      '       bomb ON tb.id_bomb = bomb.id'
      ''
      '!where'
      ''
      'order by tfl.date')
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
    object fdqryListtank_desc: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tank'
      DisplayWidth = 25
      FieldName = 'tank_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryListbomb_desc: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bomb'
      DisplayWidth = 25
      FieldName = 'bomb_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryListdate: TDateTimeField
      DisplayLabel = 'Date'
      DisplayWidth = 15
      FieldName = 'date'
      Origin = 'date'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdqryListliters: TIntegerField
      DisplayLabel = 'Liters'
      DisplayWidth = 15
      FieldName = 'liters'
      Origin = 'liters'
      DisplayFormat = '#,##0.00'
    end
    object fdqryListliter_value: TBCDField
      DisplayLabel = 'Liter Value'
      DisplayWidth = 15
      FieldName = 'liter_value'
      Origin = 'liter_value'
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryListtax: TBCDField
      DisplayLabel = 'Tax'
      DisplayWidth = 15
      FieldName = 'tax'
      Origin = 'tax'
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
    object fdqryListliter_tax: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Liter Value + Tax'
      DisplayWidth = 15
      FieldName = 'liter_tax'
      Origin = 'liter_tax'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object fdqryListtotal: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  inherited fdqryRegister: TFDQuery
    BeforePost = fdqryRegisterBeforePost
    OnCalcFields = fdqryRegisterCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select * from to_fuel'
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
    object fdqryRegisterid_tank_bomb: TStringField
      FieldName = 'id_tank_bomb'
      Origin = 'id_tank_bomb'
      Required = True
      Size = 38
    end
    object fdqryRegisterdate: TDateTimeField
      DisplayLabel = 'Date'
      DisplayWidth = 20
      FieldName = 'date'
      Origin = 'date'
    end
    object fdqryRegisterliters: TIntegerField
      DisplayLabel = 'Liters'
      DisplayWidth = 20
      FieldName = 'liters'
      Origin = 'liters'
      DisplayFormat = '#,##0.00'
    end
    object fdqryRegisterliter_value: TBCDField
      DisplayLabel = 'Liter Value'
      DisplayWidth = 20
      FieldName = 'liter_value'
      Origin = 'liter_value'
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryRegistertax: TBCDField
      DisplayLabel = 'Tax'
      DisplayWidth = 20
      FieldName = 'tax'
      Origin = 'tax'
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
    object fdqryRegisterBomb: TStringField
      FieldKind = fkLookup
      FieldName = 'Bomb'
      LookupDataSet = fdqryBomb
      LookupKeyFields = 'id'
      LookupResultField = 'description'
      KeyFields = 'id_tank_bomb'
      Lookup = True
    end
    object fdqryRegisterTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
  end
  object fdqryBomb: TFDQuery
    Connection = dtmdlConnection.conConnection
    SQL.Strings = (
      'select '
      ' tank_bomb.id,'
      ' bomb.description,'
      ' fuel.value as fuel_value,'
      ' tax.value as tax_value,'
      ' fuel.value + ((tax.value / 100.0) * fuel.value) as total'
      'from bomb'
      'inner join fuel on'
      ' bomb.id_fuel = fuel.id'
      'inner join tax on'
      ' fuel.id_tax = tax.id'
      'inner join tank_bomb on'
      ' tank_bomb.id_bomb = bomb.id'
      'order by'
      ' bomb.description')
    Left = 176
    Top = 16
    object fdqryBombid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object fdqryBombdescription: TStringField
      DisplayLabel = 'Bomb'
      DisplayWidth = 30
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
    object fdqryBombfuel_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fuel Value'
      DisplayWidth = 20
      FieldName = 'fuel_value'
      Origin = 'value'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryBombtax_value: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tax_value'
      Origin = 'value'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object fdqryBombtotal: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fuel Value'
      DisplayWidth = 20
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object dsBomb: TDataSource
    DataSet = fdqryBomb
    Left = 176
    Top = 72
  end
  object fdqryReportToFuel: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Date'
        Fields = 'date'
      end>
    IndexName = 'Date'
    Connection = dtmdlConnection.conConnection
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'SELECT tfl.id,'
      '       tank.description AS tank_desc,'
      '       bomb.description AS bomb_desc,'
      '       tfl.date,'
      '       tfl.liters,'
      '       tfl.liter_value,'
      '       tfl.tax,'
      
        '       tfl.liter_value + ( (tfl.tax / 100.0) * tfl.liter_value) ' +
        'AS liter_tax,'
      
        '       tfl.liters * (tfl.liter_value + ( (tfl.tax / 100.0) * tfl' +
        '.liter_value) ) AS total'
      '  FROM to_fuel tfl'
      '       INNER JOIN'
      '       tank_bomb tb ON tfl.id_tank_bomb = tb.id'
      '       INNER JOIN'
      '       tank ON tb.id_tank = tank.id'
      '       INNER JOIN'
      '       bomb ON tb.id_bomb = bomb.id'
      ' ORDER BY tfl.date,'
      '          tank.description,'
      '          bomb.description;')
    Left = 408
    Top = 16
    object fdqryReportToFuelid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object fdqryReportToFueltank_desc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tank_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryReportToFuelbomb_desc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bomb_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryReportToFueldate: TDateTimeField
      FieldName = 'date'
      Origin = 'date'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdqryReportToFuelliters: TIntegerField
      FieldName = 'liters'
      Origin = 'liters'
      DisplayFormat = '#,##0.00'
    end
    object fdqryReportToFuelliter_value: TBCDField
      FieldName = 'liter_value'
      Origin = 'liter_value'
      currency = True
      Precision = 12
      Size = 2
    end
    object fdqryReportToFueltax: TBCDField
      FieldName = 'tax'
      Origin = 'tax'
      DisplayFormat = '##00 %'
      Precision = 12
      Size = 2
    end
    object fdqryReportToFuelliter_tax: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'liter_tax'
      Origin = 'liter_tax'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object fdqryReportToFueltotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object dsReportToFuel: TDataSource
    DataSet = fdqryReportToFuel
    Left = 408
    Top = 72
  end
end
