inherited frmReportBase: TfrmReportBase
  Caption = 'Report'
  ClientHeight = 575
  ClientWidth = 796
  ExplicitWidth = 812
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  object rlrprtReport: TRLReport [0]
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlbndtitle: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object rlbltitle: TRLLabel
        Left = 329
        Top = 17
        Width = 60
        Height = 32
        Align = faCenter
        Alignment = taCenter
        Caption = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 66
        Width = 718
        Height = 1
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 32
      BandType = btFooter
      object rlsystmnfDate: TRLSystemInfo
        AlignWithMargins = True
        Left = 5
        Top = 12
        Width = 96
        Height = 16
        Alignment = taCenter
        Text = ''
      end
      object rldrw1: TRLDraw
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
      object rlbl1: TRLLabel
        Left = 605
        Top = 12
        Width = 38
        Height = 16
        Caption = 'Page:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 646
        Top = 12
        Width = 15
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 664
        Top = 12
        Width = 14
        Height = 16
        Caption = 'In'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 683
        Top = 12
        Width = 15
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
    end
  end
  inherited actlstList: TActionList
    Left = 760
    Top = 8
  end
  inherited imgList: TImageList
    Left = 760
    Top = 64
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 88
    Top = 320
  end
end
