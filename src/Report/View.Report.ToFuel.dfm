inherited frmReportToFuel: TfrmReportToFuel
  Caption = 'To Fuel'
  ClientWidth = 950
  ExplicitWidth = 966
  PixelsPerInch = 96
  TextHeight = 13
  inherited rlrprtReport: TRLReport
    Left = 58
    DataSource = dtmdlToFuel.dsReportToFuel
    ExplicitLeft = 58
    inherited rlbndtitle: TRLBand
      inherited rlbltitle: TRLLabel
        Left = 309
        Width = 100
        Caption = 'To Fuel'
        ExplicitLeft = 309
        ExplicitWidth = 100
      end
    end
    inherited RLBand1: TRLBand
      Top = 194
      ExplicitTop = 194
    end
    object rlgrpGroup: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 89
      DataFields = 'date'
      object rlbndTitleGroup: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object rldbtxtDate: TRLDBText
          AlignWithMargins = True
          Left = 39
          Top = 0
          Width = 90
          Height = 19
          Align = faLeft
          DataField = 'date'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
          Transparent = False
        end
        object rlbl2: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 39
          Height = 19
          Align = faLeft
          Caption = 'Date :'
          Transparent = False
        end
      end
      object rlbndColumn: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 21
        BandType = btColumnHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 95
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tank'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 95
          Top = 0
          Width = 95
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Bomb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 190
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Liters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 320
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Liter Value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 270
          Top = 0
          Width = 50
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 400
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Liter + Tax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 480
          Top = 0
          Width = 100
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object rlbndDetail: TRLBand
        Left = 0
        Top = 40
        Width = 718
        Height = 21
        Color = clWhite
        ParentColor = False
        Transparent = False
        object rldbtxttank_desc: TRLDBText
          Left = 0
          Top = 0
          Width = 95
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'tank_desc'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxtbomb_desc: TRLDBText
          Left = 95
          Top = 0
          Width = 95
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'bomb_desc'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxtliters: TRLDBText
          Left = 190
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'liters'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxtliter_value: TRLDBText
          Left = 320
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'liter_value'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxttax: TRLDBText
          Left = 270
          Top = 0
          Width = 50
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'tax'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxtliter_tax: TRLDBText
          Left = 400
          Top = 0
          Width = 80
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'liter_tax'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
        object rldbtxttotal: TRLDBText
          Left = 480
          Top = 0
          Width = 100
          Height = 21
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          DataField = 'total'
          DataSource = dtmdlToFuel.dsReportToFuel
          Text = ''
        end
      end
      object rlbndResult: TRLBand
        Left = 0
        Top = 61
        Width = 718
        Height = 24
        BandType = btSummary
        object RLLabel9: TRLLabel
          AlignWithMargins = True
          Left = 0
          Top = 1
          Width = 89
          Height = 23
          Align = faLeft
          Caption = 'Grand total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object rldbrsltGrandTotal: TRLDBResult
          AlignWithMargins = True
          Left = 89
          Top = 1
          Width = 68
          Height = 23
          Align = faLeft
          DataField = 'total'
          DataSource = dtmdlToFuel.dsReportToFuel
          Info = riSum
          Text = ''
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 1
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
        end
      end
    end
  end
end
