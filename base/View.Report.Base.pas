unit View.Report.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, RLReport, RLFilters, RLPDFFilter;

type
  TfrmReportBase = class(TfrmBase)
    rlrprtReport: TRLReport;
    rlbndtitle: TRLBand;
    rlbltitle: TRLLabel;
    RLBand1: TRLBand;
    rlsystmnfDate: TRLSystemInfo;
    rldrw1: TRLDraw;
    rlbl1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
  private
    { Private declarations }
  public
    procedure ShowReport;
  end;

implementation

{$R *.dfm}

{ TfrmReportBase }

procedure TfrmReportBase.ShowReport;
begin
  rlrprtReport.Preview();
end;

end.
