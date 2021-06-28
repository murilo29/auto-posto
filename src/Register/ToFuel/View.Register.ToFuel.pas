unit View.Register.ToFuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TfrmRegisterToFuel = class(TfrmRegister)
    lbl1: TLabel;
    dbedtliters: TDBEdit;
    Label1: TLabel;
    dblkcbbBomb: TDBLookupComboBox;
    lbl2: TLabel;
    dbedttotal: TDBEdit;
    dbedtTotal1: TDBEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.ToFuel;

{$R *.dfm}

end.
