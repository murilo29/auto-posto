unit View.List.ToFuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.List.Base, Data.DB,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TShowReport = procedure of object;

type
  TfrmListToFuel = class(TfrmList)
    btnReport: TButton;
    actReport: TAction;
    procedure edtValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actReportExecute(Sender: TObject);
  private
    FOnShowReport: TShowReport;
    procedure SetOnShowReport(const Value: TShowReport);
    { Private declarations }
  public
    property OnShowReport: TShowReport read FOnShowReport write SetOnShowReport;
  end;

implementation

uses
  Model.Register.ToFuel;

{$R *.dfm}

procedure TfrmListToFuel.actReportExecute(Sender: TObject);
begin
  inherited;
  OnShowReport;
end;

procedure TfrmListToFuel.edtValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    OnFilterList(FFilterField[cbbFilterField.ItemIndex], edtValue.Text);
end;

procedure TfrmListToFuel.SetOnShowReport(const Value: TShowReport);
begin
  FOnShowReport := Value;
end;

end.
