unit View.Register.Tank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmRegisterTank = class(TfrmRegister)
    lbl1: TLabel;
    dbedtdescription: TDBEdit;
    lbl2: TLabel;
    dbedtliter: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.Tank;

{$R *.dfm}

end.
