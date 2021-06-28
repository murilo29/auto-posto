unit View.Register.Tank.Bomb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TfrmRegisterTankBomb = class(TfrmRegister)
    Label1: TLabel;
    Label2: TLabel;
    dblkcbbTank: TDBLookupComboBox;
    dblkcbbBomb: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.Tank.Bomb;

{$R *.dfm}

end.
