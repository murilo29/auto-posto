inherited frmRegisterBomb: TfrmRegisterBomb
  Caption = 'Register Bomb'
  ClientHeight = 110
  ClientWidth = 553
  ExplicitWidth = 569
  ExplicitHeight = 149
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Bomb'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 281
    Top = 64
    Width = 20
    Height = 13
    Caption = 'Fuel'
  end
  inherited pnlOptions: TPanel
    Width = 553
    TabOrder = 2
    inherited btnEditItem: TButton
      Left = 474
    end
    inherited btnNewItem: TButton
      Left = 393
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 16
    Top = 80
    Width = 260
    Height = 21
    DataField = 'description'
    DataSource = dtmdlBomb.dsRegister
    TabOrder = 0
  end
  object dblkcbbFuel: TDBLookupComboBox [4]
    Left = 281
    Top = 80
    Width = 260
    Height = 21
    DataField = 'Fuel'
    DataSource = dtmdlBomb.dsRegister
    TabOrder = 1
  end
end
