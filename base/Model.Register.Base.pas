unit Model.Register.Base;

interface

uses
  System.SysUtils, System.Classes, Model.Base, Model.Connection,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Methods.Anonymous;

type
  TdtmdlRegister = class(TdtmdlBase)
    fdqryList: TFDQuery;
    dsList: TDataSource;
    fdqryRegister: TFDQuery;
    dsRegister: TDataSource;
    procedure fdqryRegisterNewRecord(DataSet: TDataSet);
  private
    function GetIsListActive: Boolean;

  protected
    procedure SaveDetail; virtual;
    procedure OpenDetail; virtual;
    procedure CloseDetail; virtual;
    procedure CancelDetail; virtual;
    procedure CachedUpdates; virtual;

  public
    property IsListActive: Boolean read GetIsListActive;

    procedure NewRegister; virtual;
    procedure EditRegister; virtual;
    procedure SaveRegister; virtual;
    procedure CancelRegister; virtual;
    procedure IndexFilter(AField: string);
    procedure FilterList(AField, AValue: string);
    procedure FillInField(AProc: TProc<string, string>);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmdlRegister.CachedUpdates;
begin
  if fdqryRegister.CachedUpdates then
  begin
    fdqryRegister.ApplyUpdates(0);
    fdqryRegister.CommitUpdates;
  end;
end;

procedure TdtmdlRegister.CancelDetail;
begin

end;

procedure TdtmdlRegister.CancelRegister;
begin
  CancelDetail;

  if fdqryList.State in dsEditModes then
    fdqryList.Cancel;

  CloseDetail;
  fdqryRegister.Close;
end;

procedure TdtmdlRegister.CloseDetail;
begin

end;

procedure TdtmdlRegister.EditRegister;
begin
  fdqryRegister.Close;
  fdqryRegister.Params[0].AsString := fdqryList.FieldByName('id').AsString;
  fdqryRegister.Open();

  OpenDetail;
end;

procedure TdtmdlRegister.fdqryRegisterNewRecord(DataSet: TDataSet);
var
  LFieldId: TField;
begin
  inherited;
  LFieldId := DataSet.FindField('id');
  if LFieldId = nil then
    raise Exception.Create('id not found');
  LFieldId.AsString := TGUID.NewGuid.ToString;
end;

procedure TdtmdlRegister.FillInField(AProc: TProc<string, string>);
var
  LField: TField;
begin
  for LField in fdqryList.Fields do
  begin
    if (LField.Visible) and (LField.DataType in [ftMemo, ftString, ftFmtMemo,
      ftFixedChar, ftWideString, ftFixedWideChar, ftWideMemo]) then
      AProc(LField.FieldName, LField.DisplayLabel);
  end;
end;

procedure TdtmdlRegister.FilterList(AField, AValue: string);
const
  FILTER = 'where %s like %s';
var
  LField: TField;
begin
  LField := fdqryList.FindField(AField);
  if LField = nil then
    raise Exception.Create('Filter field not found');

  fdqryList.Close;
  fdqryList.MacroByName('where').AsRaw :=
    Format(FILTER, [AField, QuotedStr('%' + AValue + '%')]);
  fdqryList.Open();
end;

function TdtmdlRegister.GetIsListActive: Boolean;
begin
  Result := fdqryList.Active;
end;

procedure TdtmdlRegister.IndexFilter(AField: string);
begin
  fdqryList.IndexFieldNames := AField;
end;

procedure TdtmdlRegister.NewRegister;
begin
  fdqryRegister.Close;
  fdqryRegister.Params[0].AsString := '-1';
  fdqryRegister.Open();

  OpenDetail;
end;

procedure TdtmdlRegister.OpenDetail;
begin

end;

procedure TdtmdlRegister.SaveRegister;
begin
  if fdqryRegister.State in dsEditModes then
    fdqryRegister.Post;

  CachedUpdates;
  SaveDetail;

  CloseDetail;
  fdqryRegister.Close;

  fdqryList.Close;
  fdqryList.MacroByName('where').AsRaw := EmptyStr;
  fdqryList.Open();
end;

procedure TdtmdlRegister.SaveDetail;
begin

end;

end.
