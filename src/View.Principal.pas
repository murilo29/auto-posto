unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Menus, Enumerated.Menu;

type
  TShowMenu = procedure(AIndex: Integer) of object;

type
  TfrmMain = class(TfrmBase)
    mmMenu: TMainMenu;
    Detail1: TMenuItem;
    Version1: TMenuItem;
    Exit1: TMenuItem;
    actVersion: TAction;
    actExit: TAction;
    actTax: TAction;
    Register1: TMenuItem;
    ax1: TMenuItem;
    actFuel: TAction;
    Fuel1: TMenuItem;
    actTank: TAction;
    ank1: TMenuItem;
    actBomb: TAction;
    actTankBomb: TAction;
    actToFuel: TAction;
    Bomb1: TMenuItem;
    ankBomb1: TMenuItem;
    oFuel1: TMenuItem;
    procedure actVersionExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actTaxExecute(Sender: TObject);
  private
    FOnShowMenu: TShowMenu;
    procedure SetOnShowMenu(const Value: TShowMenu);

    function AssignMenu(AMenu: EMenu): Integer;
  public
    property OnShowMenu: TShowMenu read FOnShowMenu write SetOnShowMenu;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Close System', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0,
    mbNo) = mrYes then
    Close;
end;

procedure TfrmMain.actTaxExecute(Sender: TObject);
begin
  inherited;
  if TAction(Sender).Tag < 0 then
    raise Exception.Create('Menu Not Assigned');

  OnShowMenu(TAction(Sender).Tag);
end;

procedure TfrmMain.actVersionExecute(Sender: TObject);
begin
  inherited;
  MessageDlg('Auto Post Version 1.0', TMsgDlgType.mtInformation, [mbOK], 0);
end;

function TfrmMain.AssignMenu(AMenu: EMenu): Integer;
begin
  Result := -1;
  case AMenu of
    eTax:
      Result := 0;
    eFuel:
      Result := 1;
    eTank:
      Result := 2;
    eBomb:
      Result := 3;
    eTankBomb:
      Result := 4;
    eToFuel:
      Result := 5;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  actTax.Tag := AssignMenu(eTax);
  actFuel.Tag := AssignMenu(eFuel);
  actTank.Tag := AssignMenu(eTank);
  actBomb.Tag := AssignMenu(eBomb);
  actTankBomb.Tag := AssignMenu(eTankBomb);
  actToFuel.Tag := AssignMenu(eToFuel);
end;

procedure TfrmMain.SetOnShowMenu(const Value: TShowMenu);
begin
  FOnShowMenu := Value;
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
