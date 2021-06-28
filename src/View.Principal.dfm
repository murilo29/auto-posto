inherited frmMain: TfrmMain
  Caption = 'Main'
  ClientHeight = 422
  ClientWidth = 804
  Menu = mmMenu
  OnShow = FormShow
  ExplicitWidth = 820
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited actlstList: TActionList
    object actFuel: TAction
      Category = 'Register'
      Caption = 'Fuel'
      OnExecute = actTaxExecute
    end
    object actVersion: TAction
      Category = 'Detail'
      Caption = 'Version'
      OnExecute = actVersionExecute
    end
    object actExit: TAction
      Category = 'Detail'
      Caption = 'Exit'
      Hint = 'Close System'
      OnExecute = actExitExecute
    end
    object actTax: TAction
      Category = 'Register'
      Caption = 'Tax'
      OnExecute = actTaxExecute
    end
    object actTank: TAction
      Category = 'Register'
      Caption = 'Tank'
      OnExecute = actTaxExecute
    end
    object actBomb: TAction
      Category = 'Register'
      Caption = 'Bomb'
      OnExecute = actTaxExecute
    end
    object actTankBomb: TAction
      Category = 'Register'
      Caption = 'Tank Bomb'
      OnExecute = actTaxExecute
    end
    object actToFuel: TAction
      Category = 'Register'
      Caption = 'To Fuel'
      OnExecute = actTaxExecute
    end
  end
  object mmMenu: TMainMenu
    Left = 360
    Top = 32
    object Detail1: TMenuItem
      Caption = 'Detail'
      object Version1: TMenuItem
        Action = actVersion
      end
      object Exit1: TMenuItem
        Action = actExit
      end
    end
    object Register1: TMenuItem
      Caption = 'Register'
      object ax1: TMenuItem
        Action = actTax
      end
      object Fuel1: TMenuItem
        Action = actFuel
      end
      object ank1: TMenuItem
        Action = actTank
      end
      object Bomb1: TMenuItem
        Action = actBomb
      end
      object ankBomb1: TMenuItem
        Action = actTankBomb
      end
      object oFuel1: TMenuItem
        Action = actToFuel
      end
    end
  end
end
