unit View.List.Bomb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.List.Base, Data.DB,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmListBomb = class(TfrmList)
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
