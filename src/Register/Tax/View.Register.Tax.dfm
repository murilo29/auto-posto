inherited frmRegisterTax: TfrmRegisterTax
  Caption = 'Register Tax'
  ClientHeight = 114
  ClientWidth = 403
  ExplicitWidth = 419
  ExplicitHeight = 153
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 61
    Width = 53
    Height = 13
    Caption = 'Description'
    FocusControl = dbedtdescription
  end
  object Label2: TLabel [1]
    Left = 287
    Top = 61
    Width = 26
    Height = 13
    Caption = 'Value'
    FocusControl = dbedtvalue
  end
  inherited pnlOptions: TPanel
    Width = 403
    inherited btnEditItem: TButton
      Left = 324
    end
    inherited btnNewItem: TButton
      Left = 243
    end
  end
  object dbedtdescription: TDBEdit [3]
    Left = 16
    Top = 77
    Width = 265
    Height = 21
    DataField = 'description'
    DataSource = dtmdlTax.dsRegister
    TabOrder = 1
  end
  object dbedtvalue: TDBEdit [4]
    Left = 287
    Top = 77
    Width = 98
    Height = 21
    DataField = 'value'
    DataSource = dtmdlTax.dsRegister
    TabOrder = 2
  end
end
