inherited frmListToFuel: TfrmListToFuel
  Caption = 'List To Fuel'
  ClientWidth = 1079
  ExplicitWidth = 1095
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFilter: TPanel
    Width = 1079
    ExplicitWidth = 1079
    inherited pnlValue: TPanel
      inherited lblVAlue: TLabel
        Width = 179
      end
    end
    inherited btnNewItem: TButton
      Left = 919
      ExplicitLeft = 919
    end
    inherited btnEditItem: TButton
      Left = 1000
      ExplicitLeft = 1000
    end
    object btnReport: TButton
      AlignWithMargins = True
      Left = 838
      Top = 4
      Width = 75
      Height = 46
      Action = actReport
      Align = alRight
      TabOrder = 4
      ExplicitLeft = 919
    end
  end
  inherited dbgrdList: TDBGrid
    Width = 1073
    DataSource = dtmdlToFuel.dsList
  end
  inherited actlstList: TActionList
    inherited actEditItem: TAction
      Visible = False
    end
    object actReport: TAction
      Caption = 'Report'
      OnExecute = actReportExecute
    end
  end
end
