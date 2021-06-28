inherited frmRegisterTank: TfrmRegisterTank
  Caption = 'Register Tank'
  ClientHeight = 113
  ClientWidth = 440
  ExplicitWidth = 456
  ExplicitHeight = 152
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
    Left = 286
    Top = 64
    Width = 21
    Height = 13
    Caption = 'Liter'
    FocusControl = dbedtliter
  end
  inherited pnlOptions: TPanel
    Width = 440
    inherited btnEditItem: TButton
      Left = 361
    end
    inherited btnNewItem: TButton
      Left = 280
    end
  end
  object dbedtdescription: TDBEdit [3]
    Left = 16
    Top = 80
    Width = 264
    Height = 21
    DataField = 'description'
    DataSource = dtmdlTank.dsRegister
    TabOrder = 1
  end
  object dbedtliter: TDBEdit [4]
    Left = 286
    Top = 80
    Width = 139
    Height = 21
    DataField = 'liter'
    DataSource = dtmdlTank.dsRegister
    TabOrder = 2
  end
end
