inherited dtmdlTankBomb: TdtmdlTankBomb
  inherited fdqryList: TFDQuery
    SQL.Strings = (
      'select '
      ' tb.id,'
      ' tank.description as tank_desc,'
      ' bomb.description as bomb_desc'
      'from tank_bomb tb'
      'inner join tank on'
      ' tb.id_tank = tank.id'
      'inner join bomb on'
      ' tb.id_bomb = bomb.id'
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
    object fdqryListtank_desc: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tank'
      DisplayWidth = 30
      FieldName = 'tank_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqryListbomb_desc: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bomb'
      DisplayWidth = 30
      FieldName = 'bomb_desc'
      Origin = 'description'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  inherited fdqryRegister: TFDQuery
    SQL.Strings = (
      'select * from tank_bomb'
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
    object fdqryRegisterid_tank: TStringField
      FieldName = 'id_tank'
      Origin = 'id_tank'
      Required = True
      Size = 38
    end
    object fdqryRegisterid_bomb: TStringField
      FieldName = 'id_bomb'
      Origin = 'id_bomb'
      Required = True
      Size = 38
    end
    object fdqryRegisterTank: TStringField
      FieldKind = fkLookup
      FieldName = 'Tank'
      LookupDataSet = fdqryTank
      LookupKeyFields = 'id'
      LookupResultField = 'description'
      KeyFields = 'id_tank'
      Size = 38
      Lookup = True
    end
    object fdqryRegisterBomb: TStringField
      FieldKind = fkLookup
      FieldName = 'Bomb'
      LookupDataSet = fdqryBomb
      LookupKeyFields = 'id'
      LookupResultField = 'description'
      KeyFields = 'id_bomb'
      Size = 38
      Lookup = True
    end
  end
  object fdqryTank: TFDQuery
    Connection = dtmdlConnection.conConnection
    SQL.Strings = (
      'select '
      ' tank.id,'
      ' tank.description'
      'from tank'
      'order by description')
    Left = 168
    Top = 16
    object fdqryTankid: TStringField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object fdqryTankdescription: TStringField
      FieldName = 'description'
      Origin = 'description'
      Required = True
      Size = 50
    end
  end
  object fdqryBomb: TFDQuery
    Connection = dtmdlConnection.conConnection
    SQL.Strings = (
      'select '
      ' bomb.id,'
      ' bomb.description'
      'from bomb'
      'order by bomb.description')
    Left = 232
    Top = 16
  end
end
