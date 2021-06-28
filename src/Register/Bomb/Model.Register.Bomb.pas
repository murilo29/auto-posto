unit Model.Register.Bomb;

interface

uses
  System.SysUtils, System.Classes, Model.Register.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmdlBomb = class(TdtmdlRegister)
    fdqryListid: TStringField;
    fdqryListbomb_des: TStringField;
    fdqryListfuel_des: TStringField;
    fdqryListfuel_value: TFloatField;
    fdqryRegisterid: TStringField;
    fdqryRegisterid_fuel: TStringField;
    fdqryRegisterdescription: TStringField;
    fdqryFuel: TFDQuery;
    fdqryFuelid: TStringField;
    fdqryFuelfuel_des: TWideStringField;
    fdqryRegisterFuel: TStringField;
  private

  protected
    procedure CloseDetail; override;

  public
    { Public declarations }
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdtmdlBomb }

procedure TdtmdlBomb.CloseDetail;
begin
  inherited;
  fdqryFuel.Close;
end;

end.
