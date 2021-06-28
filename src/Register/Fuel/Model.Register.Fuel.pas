unit Model.Register.Fuel;

interface

uses
  System.SysUtils, System.Classes, Model.Register.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmdlFuel = class(TdtmdlRegister)
    fdqryListid: TStringField;
    fdqryListdes_fuel: TStringField;
    fdqryListfuel_value: TBCDField;
    fdqryListdes_tax: TStringField;
    fdqryListtax_value: TBCDField;
    fdqryTax: TFDQuery;
    fdqryTaxid: TStringField;
    fdqryTaxdes: TWideStringField;
    fdqryRegisterid: TStringField;
    fdqryRegisterid_tax: TStringField;
    fdqryRegisterdescription: TStringField;
    fdqryRegistervalue: TBCDField;
    fdqryRegisterTax: TStringField;
    fdqryRegisterTotalTax: TFloatField;
    fdqryTaxvalue: TBCDField;
    fdqryListfuel_total: TFloatField;
    procedure fdqryRegisterCalcFields(DataSet: TDataSet);
    procedure fdqryListCalcFields(DataSet: TDataSet);
  private
    function CalculateTax(AFuel, ATax: Double): Double;
  protected
    procedure CloseDetail; override;

  public

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TdtmdlFuel.CalculateTax(AFuel, ATax: Double): Double;
begin
  Result := AFuel + ((ATax / 100) * AFuel);
end;

procedure TdtmdlFuel.CloseDetail;
begin
  inherited;
  fdqryTax.Close;
end;

procedure TdtmdlFuel.fdqryListCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdqryListfuel_total.AsFloat := CalculateTax(fdqryListfuel_value.AsFloat,
    fdqryListtax_value.AsFloat);
end;

procedure TdtmdlFuel.fdqryRegisterCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdqryRegisterTotalTax.AsFloat := CalculateTax(fdqryRegistervalue.AsFloat,
    fdqryTaxvalue.AsFloat);
end;

end.
