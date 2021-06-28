unit Model.Register.ToFuel;

interface

uses
  System.SysUtils, System.Classes, Model.Register.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmdlToFuel = class(TdtmdlRegister)
    fdqryListid: TStringField;
    fdqryListtank_desc: TStringField;
    fdqryListbomb_desc: TStringField;
    fdqryListdate: TDateTimeField;
    fdqryListliters: TIntegerField;
    fdqryListliter_value: TBCDField;
    fdqryListtax: TBCDField;
    fdqryRegisterid: TStringField;
    fdqryRegisterid_tank_bomb: TStringField;
    fdqryRegisterdate: TDateTimeField;
    fdqryRegisterliters: TIntegerField;
    fdqryRegisterliter_value: TBCDField;
    fdqryRegistertax: TBCDField;
    fdqryBomb: TFDQuery;
    fdqryBombdescription: TStringField;
    fdqryBombfuel_value: TBCDField;
    fdqryBombtax_value: TBCDField;
    fdqryBombtotal: TFloatField;
    fdqryBombid: TStringField;
    fdqryRegisterBomb: TStringField;
    dsBomb: TDataSource;
    fdqryRegisterTotal: TFloatField;
    fdqryListliter_tax: TFloatField;
    fdqryListtotal: TFloatField;
    fdqryReportToFuel: TFDQuery;
    dsReportToFuel: TDataSource;
    fdqryReportToFuelid: TStringField;
    fdqryReportToFueltank_desc: TStringField;
    fdqryReportToFuelbomb_desc: TStringField;
    fdqryReportToFuelliters: TIntegerField;
    fdqryReportToFuelliter_value: TBCDField;
    fdqryReportToFueltax: TBCDField;
    fdqryReportToFuelliter_tax: TFloatField;
    fdqryReportToFueltotal: TFloatField;
    fdqryReportToFueldate: TDateTimeField;
    procedure fdqryRegisterNewRecord(DataSet: TDataSet);
    procedure fdqryRegisterBeforePost(DataSet: TDataSet);
    procedure fdqryRegisterCalcFields(DataSet: TDataSet);
  private

  public
    procedure OpenReport;
    procedure NewRegister; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdtmdlToFuel.fdqryRegisterBeforePost(DataSet: TDataSet);
begin
  inherited;
  try
    if fdqryRegisterliters.AsInteger <= 0 then
      raise Exception.Create('Liters must be more than zero');

    fdqryRegistertax.AsFloat := fdqryBombtax_value.AsFloat;
    fdqryRegisterliter_value.AsFloat := fdqryBombfuel_value.AsFloat;
  except
    raise;
  end;
end;

procedure TdtmdlToFuel.fdqryRegisterCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdqryRegisterTotal.AsFloat := fdqryRegisterliters.AsInteger *
    fdqryBombtotal.AsFloat;
end;

procedure TdtmdlToFuel.fdqryRegisterNewRecord(DataSet: TDataSet);
begin
  inherited;
  fdqryRegisterliters.AsInteger := 1;
  fdqryRegisterdate.AsString := FormatDateTime('dd/mm/yyyy', Now());
end;

procedure TdtmdlToFuel.NewRegister;
begin
  inherited;
  fdqryRegister.Append;
  fdqryRegisterid_tank_bomb.AsString := fdqryBombid.AsString;
  fdqryRegister.Post;
end;

procedure TdtmdlToFuel.OpenReport;
begin
  fdqryReportToFuel.Close;
  fdqryReportToFuel.Open();
end;

end.
