program AutoPost;

uses
  Vcl.Forms,
  View.Base in 'base\View.Base.pas' {frmBase} ,
  View.Principal in 'src\View.Principal.pas' {frmMain} ,
  Model.Base in 'base\Model.Base.pas' {dtmdlBase: TDataModule} ,
  Model.Connection
    in 'src\Model.Connection.pas' {dtmdlConnection: TDataModule} ,
  Vcl.Dialogs {dtmdlConnection: TDataModule} ,
  Controller.Singleton.Base in 'Singleton\Controller.Singleton.Base.pas',
  Model.Register.Base
    in 'base\Model.Register.Base.pas' {dtmdlRegister: TDataModule} ,
  View.List.Base in 'base\View.List.Base.pas' {frmList} ,
  Methods.Anonymous in 'Util\Methods.Anonymous.pas',
  View.Register.Base in 'base\View.Register.Base.pas' {frmRegister} ,
  Controller.Register.Base in 'Singleton\Controller.Register.Base.pas',
  Controller.Menu in 'src\Menu\Controller.Menu.pas',
  Enumerated.Menu in 'Util\Enumerated.Menu.pas',
  Controller.Register.Tax in 'src\Register\Tax\Controller.Register.Tax.pas',
  Model.Register.Tax
    in 'src\Register\Tax\Model.Register.Tax.pas' {dtmdlTax: TDataModule} ,
  View.List.Tax in 'src\Register\Tax\View.List.Tax.pas' {frmListTax} ,
  View.Register.Tax
    in 'src\Register\Tax\View.Register.Tax.pas' {frmRegisterTax} ,
  Controller.Register.Fuel in 'src\Register\Fuel\Controller.Register.Fuel.pas',
  Model.Register.Fuel
    in 'src\Register\Fuel\Model.Register.Fuel.pas' {dtmdlFuel: TDataModule} ,
  View.List.Fuel in 'src\Register\Fuel\View.List.Fuel.pas' {frmListFuel} ,
  View.Register.Fuel
    in 'src\Register\Fuel\View.Register.Fuel.pas' {frmRegisterFuel} ,
  Model.Register.Tank
    in 'src\Register\tank\Model.Register.Tank.pas' {dtmdlTank: TDataModule} ,
  View.List.Tank in 'src\Register\tank\View.List.Tank.pas' {frmListtank} ,
  View.Register.Tank
    in 'src\Register\tank\View.Register.Tank.pas' {frmRegisterTank} ,
  Controller.Register.Tank in 'src\Register\tank\Controller.Register.Tank.pas',
  Model.Register.Bomb
    in 'src\Register\Bomb\Model.Register.Bomb.pas' {dtmdlBomb: TDataModule} ,
  View.List.Bomb in 'src\Register\Bomb\View.List.Bomb.pas' {frmListBomb} ,
  View.Register.Bomb
    in 'src\Register\Bomb\View.Register.Bomb.pas' {frmRegisterBomb} ,
  Controller.Register.Bomb in 'src\Register\Bomb\Controller.Register.Bomb.pas',
  Model.Register.Tank.Bomb
    in 'src\Register\TankBomb\Model.Register.Tank.Bomb.pas' {dtmdlTankBomb: TDataModule} ,
  View.List.Tank.Bomb
    in 'src\Register\TankBomb\View.List.Tank.Bomb.pas' {frmListTankBomb} ,
  View.Register.Tank.Bomb
    in 'src\Register\TankBomb\View.Register.Tank.Bomb.pas' {frmRegisterTankBomb} ,
  Controller.Register.Tank.Bomb
    in 'src\Register\TankBomb\Controller.Register.Tank.Bomb.pas',
  Model.Register.ToFuel
    in 'src\Register\ToFuel\Model.Register.ToFuel.pas' {dtmdlToFuel: TDataModule} ,
  View.List.ToFuel
    in 'src\Register\ToFuel\View.List.ToFuel.pas' {frmListToFuel} ,
  View.Register.ToFuel
    in 'src\Register\ToFuel\View.Register.ToFuel.pas' {frmRegisterToFuel} ,
  Controller.Register.ToFuel
    in 'src\Register\ToFuel\Controller.Register.ToFuel.pas',
  View.Report.Base in 'base\View.Report.Base.pas' {frmReportBase} ,
  View.Report.ToFuel in 'src\Report\View.Report.ToFuel.pas' {frmReportToFuel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  try
    Application.CreateForm(TdtmdlConnection, dtmdlConnection);
    Application.CreateForm(TfrmMain, frmMain);
    dtmdlConnection.CreateBaseScript;
    frmMain.OnShowMenu := TMenu.New.ShowMenu;

    Application.Run;
  except
    ShowMessage('Something went wrong');
    Application.Terminate;
  end;

end.
