inherited frmList: TfrmList
  Caption = 'List'
  ClientHeight = 368
  ClientWidth = 758
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 774
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFilter: TPanel [0]
    Left = 0
    Top = 0
    Width = 758
    Height = 54
    Align = alTop
    TabOrder = 0
    object pnlField: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 185
      Height = 46
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lblField: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 179
        Height = 13
        Align = alTop
        Caption = 'Field'
        ExplicitWidth = 22
      end
      object cbbFilterField: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 179
        Height = 21
        Align = alTop
        Style = csDropDownList
        TabOrder = 0
      end
    end
    object pnlValue: TPanel
      AlignWithMargins = True
      Left = 195
      Top = 4
      Width = 185
      Height = 46
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object lblVAlue: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 179
        Height = 13
        Align = alTop
        Caption = 'Value'
        ExplicitWidth = 26
      end
      object edtValue: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 179
        Height = 21
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Apply Filter With "Enter"'
        OnKeyDown = edtValueKeyDown
      end
    end
    object btnNewItem: TButton
      AlignWithMargins = True
      Left = 598
      Top = 4
      Width = 75
      Height = 46
      Action = actNewItem
      Align = alRight
      TabOrder = 1
    end
    object btnEditItem: TButton
      AlignWithMargins = True
      Left = 679
      Top = 4
      Width = 75
      Height = 46
      Action = actEditItem
      Align = alRight
      TabOrder = 2
    end
  end
  object dbgrdList: TDBGrid [1]
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 752
    Height = 308
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrdListDblClick
    OnTitleClick = dbgrdListTitleClick
  end
  inherited actlstList: TActionList
    Left = 248
    Top = 152
    object actNewItem: TAction
      Caption = 'New'
      Hint = 'F1'
      ShortCut = 112
      OnExecute = actNewItemExecute
    end
    object actEditItem: TAction
      Caption = 'Edit'
      Hint = 'F2'
      ShortCut = 113
      OnExecute = actEditItemExecute
    end
  end
  inherited imgList: TImageList
    Height = 32
    Width = 32
    Left = 304
    Top = 152
  end
end
