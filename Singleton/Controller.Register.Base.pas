unit Controller.Register.Base;

interface

uses
  Model.Register.Base, View.List.Base, View.Register.Base,
  Controller.Singleton.Base, System.Classes;

type
  TRegister<T: class; AModel: TdtmdlRegister; AViewList: TfrmList;
  AViewRegister: TfrmRegister> = class(TSingleton<T>)
  private
    FModel: AModel;
    FRegiste: AViewRegister;
    FList: AViewList;
    procedure SetList(const Value: AViewList);
    procedure SetModel(const Value: AModel);
    procedure SetRegiste(const Value: AViewRegister);

  protected
    procedure NewRegister; virtual;
    procedure EditRegister; virtual;
    procedure AssignPointer; virtual;

  public
    property Model: AModel read FModel write SetModel;
    property List: AViewList read FList write SetList;
    property Registe: AViewRegister read FRegiste write SetRegiste;

    procedure ShowList; virtual;

    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  Vcl.Controls;

{ TRegister<T, AModel, AViewList, AViewRegister> }

procedure TRegister<T, AModel, AViewList, AViewRegister>.AssignPointer;
begin
  FList.OnNewRegister := Self.NewRegister;
  FList.OnEditRegister := Self.EditRegister;

  FList.OnFilterList := FModel.FilterList;
  FList.OnIndexFilter := FModel.IndexFilter;
  FList.OnFillInField := FModel.FillInField;

  FRegiste.OnSaveRegister := Model.SaveRegister;
  FRegiste.OnCancelRegister := Model.CancelRegister;
end;

constructor TRegister<T, AModel, AViewList, AViewRegister>.Create
  (AOwner: TComponent);
begin
  inherited;
  FModel := TComponentClass(AModel).Create(Self) as AModel;
  FList := TComponentClass(AViewList).Create(Self) as AViewList;
  FRegiste := TComponentClass(AViewRegister).Create(Self) as AViewRegister;

  AssignPointer;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.EditRegister;
begin
  try
    if not Model.IsListActive then
      Exit;

    Model.EditRegister;

    Registe.ShowModal;
  except
    raise;
  end;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.NewRegister;
begin
  try
    Model.NewRegister;
    Registe.ShowModal;
  except
    raise;
  end;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.SetList
  (const Value: AViewList);
begin
  FList := Value;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.SetModel
  (const Value: AModel);
begin
  FModel := Value;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.SetRegiste
  (const Value: AViewRegister);
begin
  FRegiste := Value;
end;

procedure TRegister<T, AModel, AViewList, AViewRegister>.ShowList;
begin
  List.ShowModal();
end;

end.
