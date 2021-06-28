unit Controller.Register.ToFuel;

interface

uses
  Model.Register.ToFuel, View.List.ToFuel, View.Register.ToFuel,
  Controller.Register.Base, View.Report.ToFuel, System.Classes;

type
  TToFuel = class(TRegister<TToFuel, TdtmdlToFuel, TfrmListToFuel,
    TfrmRegisterToFuel>)
  private
    FViewReport: TfrmReportToFuel;
    procedure ShowReport;

  protected
    procedure AssignPointer; override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{ TToFuel }

procedure TToFuel.AssignPointer;
begin
  inherited;
  List.OnShowReport := Self.ShowReport;
end;

constructor TToFuel.Create(AOwner: TComponent);
begin
  inherited;
  FViewReport := TfrmReportToFuel.Create(Self);
end;

destructor TToFuel.Destroy;
begin
  FViewReport.DisposeOf;
  inherited;
end;

procedure TToFuel.ShowReport;
begin
  Model.OpenReport;
  FViewReport.ShowReport;
end;

end.
