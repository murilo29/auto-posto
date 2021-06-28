unit View.List.Tax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.List.Base, Data.DB,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmListTax = class(TfrmList)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Register.Tax;

{$R *.dfm}

end.
