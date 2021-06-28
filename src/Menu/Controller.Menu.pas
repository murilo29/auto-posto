unit Controller.Menu;

interface

uses
  Controller.Singleton.Base, Enumerated.Menu;

type
  TMenu = class(TSingleton<TMenu>)
  public
    procedure ShowMenu(AIndex: Integer);
  end;

implementation

uses
  Controller.Register.Tax, Controller.Register.Fuel, Controller.Register.Tank,
  Controller.Register.Bomb,
  Controller.Register.Tank.Bomb, Controller.Register.ToFuel;

{ TMenu }

procedure TMenu.ShowMenu(AIndex: Integer);
begin
  case EMenu(AIndex) of
    eTax:
      TTax.New.ShowList;
    eFuel:
      TFuel.New.ShowList;
    eTank:
      TTank.New.ShowList;
    eBomb:
      TBomb.New.ShowList;
    eTankBomb:
      TTankBomb.New.ShowList;
    eToFuel:
      TToFuel.New.ShowList;
  end;
end;

end.
