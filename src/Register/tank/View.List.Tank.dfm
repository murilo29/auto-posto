inherited frmListtank: TfrmListtank
  Caption = 'List Tank'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFilter: TPanel
    inherited pnlValue: TPanel
      inherited lblVAlue: TLabel
        Width = 179
      end
    end
  end
  inherited dbgrdList: TDBGrid
    DataSource = dtmdlTank.dsList
  end
end
