inherited frmListFuel: TfrmListFuel
  Caption = 'List Fuel'
  ClientHeight = 440
  ClientWidth = 824
  ExplicitWidth = 840
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFilter: TPanel
    Width = 824
    ExplicitWidth = 1013
    inherited pnlValue: TPanel
      inherited lblVAlue: TLabel
        Width = 179
      end
    end
    inherited btnNewItem: TButton
      Left = 664
      ExplicitLeft = 853
    end
    inherited btnEditItem: TButton
      Left = 745
      ExplicitLeft = 934
    end
  end
  inherited dbgrdList: TDBGrid
    Width = 818
    Height = 380
    DataSource = dtmdlFuel.dsList
  end
end
