unit Model.Connection;

interface

uses
  System.SysUtils, System.Classes, Model.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  Vcl.AppEvnts, FireDAC.VCLUI.Wait;

type
  TdtmdlConnection = class(TdtmdlBase)
    conConnection: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    Driver: TFDPhysSQLiteDriverLink;
    fdscrptScript: TFDScript;
    aplctnvntsExcept: TApplicationEvents;
    procedure aplctnvntsExceptException(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    procedure CreateBaseScript;
  end;

var
  dtmdlConnection: TdtmdlConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmdlConnection.aplctnvntsExceptException(Sender: TObject;
  E: Exception);
begin
  inherited;
  InsertException(E);
end;

procedure TdtmdlConnection.CreateBaseScript;
var
  I: Integer;
begin
  try
    for I := 0 to Pred(fdscrptScript.SQLScripts.Count) do
      conConnection.ExecSQL(fdscrptScript.SQLScripts.Items[I].SQL.Text);
  except
    on E: Exception do
    begin
      InsertException(E);
      raise;
    end;
  end;
end;

procedure TdtmdlConnection.DataModuleCreate(Sender: TObject);
begin
  inherited;
  conConnection.Params.Values['DataBase'] := ExtractFilePath(ParamStr(0)) +
    'AutoPosto.s3db';
end;

end.
