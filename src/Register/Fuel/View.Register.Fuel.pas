unit View.Register.Fuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TfrmRegisterFuel = class(TfrmRegister)
    lbl1: TLabel;
    dbedtdescription: TDBEdit;
    lbl2: TLabel;
    dbedtvalue: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtTotalTax: TDBEdit;
    dblkcbbTax: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.Fuel;

{$R *.dfm}

end.
