inherited frmRegisterToFuel: TfrmRegisterToFuel
  Caption = 'Register To Fuel'
  ClientHeight = 114
  ClientWidth = 593
  ExplicitWidth = 609
  ExplicitHeight = 153
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 8
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Liters'
    FocusControl = dbedtliters
  end
  object Label1: TLabel [1]
    Left = 144
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Bomb'
  end
  object lbl2: TLabel [2]
    Left = 321
    Top = 64
    Width = 49
    Height = 13
    Caption = 'Fuel Value'
    FocusControl = dbedttotal
  end
  object Label2: TLabel [3]
    Left = 455
    Top = 64
    Width = 24
    Height = 13
    Caption = 'Total'
    FocusControl = dbedtTotal1
  end
  inherited pnlOptions: TPanel
    Width = 593
    inherited btnEditItem: TButton
      Left = 514
    end
    inherited btnNewItem: TButton
      Left = 433
    end
  end
  object dbedtliters: TDBEdit [5]
    Left = 8
    Top = 80
    Width = 129
    Height = 21
    DataField = 'liters'
    DataSource = dtmdlToFuel.dsRegister
    TabOrder = 1
  end
  object dblkcbbBomb: TDBLookupComboBox [6]
    Left = 144
    Top = 80
    Width = 169
    Height = 21
    DataField = 'Bomb'
    DataSource = dtmdlToFuel.dsRegister
    TabOrder = 2
  end
  object dbedttotal: TDBEdit [7]
    Left = 321
    Top = 80
    Width = 128
    Height = 21
    DataField = 'total'
    DataSource = dtmdlToFuel.dsBomb
    ReadOnly = True
    TabOrder = 3
  end
  object dbedtTotal1: TDBEdit [8]
    Left = 455
    Top = 80
    Width = 128
    Height = 21
    DataField = 'Total'
    DataSource = dtmdlToFuel.dsRegister
    ReadOnly = True
    TabOrder = 4
  end
end
