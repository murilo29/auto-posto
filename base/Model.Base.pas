unit Model.Base;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client;

type
  TdtmdlBase = class(TDataModule)
  private

  protected
    procedure InsertException(E: Exception); virtual;

  public

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdtmdlBase }

procedure TdtmdlBase.InsertException(E: Exception);
const
  INSERT_EXCEPT = 'insert into exception values(%s,%s,%s,%s)';
var
  LCon: TFDConnection;
begin
  LCon := FindComponent('conConnection') as TFDConnection;

  if LCon = nil then
    Exit;

  LCon.ExecSQL(Format(INSERT_EXCEPT, [QuotedStr(TGUID.NewGuid.ToString),
    QuotedStr(E.ClassName), QuotedStr(E.Message),
    QuotedStr(FormatDateTime('dd/mm/yyyy hh:mm:ss', Now))]));
end;

end.
