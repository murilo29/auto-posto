unit View.Register.Tax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmRegisterTax = class(TfrmRegister)
    Label1: TLabel;
    dbedtdescription: TDBEdit;
    Label2: TLabel;
    dbedtvalue: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.tax;

{$R *.dfm}

end.
