unit View.Register.Bomb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Register.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TfrmRegisterBomb = class(TfrmRegister)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dblkcbbFuel: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.Bomb;

{$R *.dfm}

end.
