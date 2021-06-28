inherited frmRegisterTankBomb: TfrmRegisterTankBomb
  Caption = 'Register Tank Bomb'
  ClientHeight = 116
  ClientWidth = 439
  ExplicitWidth = 455
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 64
    Width = 23
    Height = 13
    Caption = 'Tank'
  end
  object Label2: TLabel [1]
    Left = 222
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Bomb'
  end
  inherited pnlOptions: TPanel
    Width = 439
    TabOrder = 2
    inherited btnEditItem: TButton
      Left = 360
    end
    inherited btnNewItem: TButton
      Left = 279
    end
  end
  object dblkcbbTank: TDBLookupComboBox [3]
    Left = 16
    Top = 83
    Width = 200
    Height = 21
    DataField = 'Tank'
    DataSource = dtmdlTankBomb.dsRegister
    TabOrder = 0
  end
  object dblkcbbBomb: TDBLookupComboBox [4]
    Left = 222
    Top = 83
    Width = 200
    Height = 21
    DataField = 'Bomb'
    DataSource = dtmdlTankBomb.dsRegister
    TabOrder = 1
  end
end
