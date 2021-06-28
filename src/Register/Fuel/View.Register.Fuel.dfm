inherited frmRegisterFuel: TfrmRegisterFuel
  Caption = 'Register Fuel'
  ClientHeight = 159
  ClientWidth = 448
  ExplicitWidth = 464
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 16
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Description'
    FocusControl = dbedtdescription
  end
  object lbl2: TLabel [1]
    Left = 311
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Value'
    FocusControl = dbedtvalue
  end
  object lbl3: TLabel [2]
    Left = 16
    Top = 107
    Width = 18
    Height = 13
    Caption = 'Tax'
  end
  object lbl4: TLabel [3]
    Left = 311
    Top = 110
    Width = 45
    Height = 13
    Caption = 'Total Tax'
    FocusControl = dbedtTotalTax
  end
  inherited pnlOptions: TPanel
    Width = 448
    TabOrder = 4
    inherited btnEditItem: TButton
      Left = 369
    end
    inherited btnNewItem: TButton
      Left = 288
    end
  end
  object dbedtdescription: TDBEdit [5]
    Left = 16
    Top = 80
    Width = 289
    Height = 21
    DataField = 'description'
    DataSource = dtmdlFuel.dsRegister
    TabOrder = 0
  end
  object dbedtvalue: TDBEdit [6]
    Left = 311
    Top = 80
    Width = 122
    Height = 21
    DataField = 'value'
    DataSource = dtmdlFuel.dsRegister
    TabOrder = 1
  end
  object dbedtTotalTax: TDBEdit [7]
    Left = 311
    Top = 126
    Width = 122
    Height = 21
    DataField = 'TotalTax'
    DataSource = dtmdlFuel.dsRegister
    TabOrder = 3
  end
  object dblkcbbTax: TDBLookupComboBox [8]
    Left = 16
    Top = 126
    Width = 289
    Height = 21
    DataField = 'Tax'
    DataSource = dtmdlFuel.dsRegister
    TabOrder = 2
  end
end
