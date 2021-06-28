unit View.List.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Methods.Anonymous, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList;

type
  TNewRegister = procedure of object;
  TEditIRegister = procedure of object;
  TIndexFilter = procedure(AField: string) of object;
  TFilterList = procedure(AField, AValue: string) of object;
  TFillInField = procedure(AProc: TProc<string, string>) of object;

type
  TEditHelper = class helper for TEdit
  public
    function TextLength: Integer;
  end;

type
  TfrmList = class(TfrmBase)
    pnlFilter: TPanel;
    pnlField: TPanel;
    lblField: TLabel;
    cbbFilterField: TComboBox;
    pnlValue: TPanel;
    lblVAlue: TLabel;
    edtValue: TEdit;
    dbgrdList: TDBGrid;
    actNewItem: TAction;
    actEditItem: TAction;
    btnNewItem: TButton;
    btnEditItem: TButton;
    procedure edtValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actNewItemExecute(Sender: TObject);
    procedure actEditItemExecute(Sender: TObject);
    procedure dbgrdListDblClick(Sender: TObject);
    procedure dbgrdListTitleClick(Column: TColumn);
  private
    FOnIndexFilter: TIndexFilter;
    FOnFilterList: TFilterList;
    FOnFillInField: TFillInField;
    FOnNewRegister: TNewRegister;
    FOnEditRegister: TEditIRegister;
    procedure SetOnFilterList(const Value: TFilterList);
    procedure SetOnIndexFilter(const Value: TIndexFilter);
    procedure SetOnFillInField(const Value: TFillInField);
    procedure SetOnEditRegister(const Value: TEditIRegister);
    procedure SetOnNewRegister(const Value: TNewRegister);

  protected
    FFilterField: TStringList;

  public
    property OnNewRegister: TNewRegister read FOnNewRegister
      write SetOnNewRegister;
    property OnEditRegister: TEditIRegister read FOnEditRegister
      write SetOnEditRegister;
    property OnIndexFilter: TIndexFilter read FOnIndexFilter
      write SetOnIndexFilter;
    property OnFilterList: TFilterList read FOnFilterList write SetOnFilterList;
    property OnFillInField: TFillInField read FOnFillInField
      write SetOnFillInField;
  end;

implementation

{$R *.dfm}
{ TfrmList }

procedure TfrmList.actEditItemExecute(Sender: TObject);
begin
  inherited;
  OnEditRegister;
end;

procedure TfrmList.actNewItemExecute(Sender: TObject);
begin
  inherited;
  OnNewRegister;
end;

procedure TfrmList.dbgrdListDblClick(Sender: TObject);
begin
  inherited;
  if actEditItem.Visible then
    actEditItem.Execute;
end;

procedure TfrmList.dbgrdListTitleClick(Column: TColumn);
begin
  inherited;
  OnIndexFilter(Column.FieldName);
end;

procedure TfrmList.edtValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if edtValue.TextLength < 1 then
    begin
      MessageDlg('Enter at least 1 characters', TMsgDlgType.mtInformation,
        [mbYes], 0);
      Exit;
    end;
    OnFilterList(FFilterField[cbbFilterField.ItemIndex], edtValue.Text);
  end;
end;

procedure TfrmList.FormCreate(Sender: TObject);
begin
  inherited;
  FFilterField := TStringList.Create;
end;

procedure TfrmList.FormDestroy(Sender: TObject);
begin
  inherited;
  FFilterField.DisposeOf;
end;

procedure TfrmList.FormShow(Sender: TObject);
begin
  inherited;
  cbbFilterField.Clear;

  OnFillInField(
    procedure(AField, ADisplayer: string)
    begin
      FFilterField.Add(AField);
      cbbFilterField.Items.Add(ADisplayer);
    end);

  cbbFilterField.ItemIndex := 0;
end;

procedure TfrmList.SetOnEditRegister(const Value: TEditIRegister);
begin
  FOnEditRegister := Value;
end;

procedure TfrmList.SetOnFillInField(const Value: TFillInField);
begin
  FOnFillInField := Value;
end;

procedure TfrmList.SetOnFilterList(const Value: TFilterList);
begin
  FOnFilterList := Value;
end;

procedure TfrmList.SetOnIndexFilter(const Value: TIndexFilter);
begin
  FOnIndexFilter := Value;
end;

procedure TfrmList.SetOnNewRegister(const Value: TNewRegister);
begin
  FOnNewRegister := Value;
end;

{ TEditHelper }

function TEditHelper.TextLength: Integer;
begin
  Result := Length(Text);
end;

end.
