unit Model.Register.Tax;

interface

uses
  System.SysUtils, System.Classes, Model.Register.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmdlTax = class(TdtmdlRegister)
    fdqryListid: TStringField;
    fdqryListdescription: TStringField;
    fdqryListvalue: TBCDField;
    fdqryRegisterid: TStringField;
    fdqryRegisterdescription: TStringField;
    fdqryRegistervalue: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
