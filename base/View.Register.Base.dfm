inherited frmRegister: TfrmRegister
  Caption = 'Register'
  ClientHeight = 295
  ClientWidth = 713
  ExplicitWidth = 729
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOptions: TPanel [0]
    Left = 0
    Top = 0
    Width = 713
    Height = 54
    Align = alTop
    TabOrder = 0
    object btnEditItem: TButton
      AlignWithMargins = True
      Left = 634
      Top = 4
      Width = 75
      Height = 46
      Action = actCancel
      Align = alRight
      TabOrder = 1
    end
    object btnNewItem: TButton
      AlignWithMargins = True
      Left = 553
      Top = 4
      Width = 75
      Height = 46
      Action = actSave
      Align = alRight
      TabOrder = 0
    end
  end
  inherited actlstList: TActionList
    Left = 56
    Top = 8
    object actSave: TAction
      Category = 'Register'
      Caption = 'Save'
      OnExecute = actSaveExecute
    end
    object actCancel: TAction
      Category = 'Register'
      Caption = 'Cancel'
      OnExecute = actCancelExecute
    end
  end
  inherited imgList: TImageList
    Left = 120
    Top = 8
  end
end
