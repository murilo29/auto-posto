unit View.Report.ToFuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Report.Base, RLFilters,
  RLPDFFilter, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  RLReport;

type
  TfrmReportToFuel = class(TfrmReportBase)
    rlbndTitleGroup: TRLBand;
    rldbtxtDate: TRLDBText;
    rlbl2: TRLLabel;
    rlgrpGroup: TRLGroup;
    rlbndColumn: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    rlbndDetail: TRLBand;
    rldbtxttank_desc: TRLDBText;
    rldbtxtbomb_desc: TRLDBText;
    rldbtxtliters: TRLDBText;
    rldbtxtliter_value: TRLDBText;
    rldbtxttax: TRLDBText;
    rldbtxtliter_tax: TRLDBText;
    rldbtxttotal: TRLDBText;
    rlbndResult: TRLBand;
    RLLabel9: TRLLabel;
    rldbrsltGrandTotal: TRLDBResult;
    RLDraw2: TRLDraw;
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
