unit Controller.Register.Tank.Bomb;

interface

uses
  Model.Register.Tank.Bomb, View.List.Tank.Bomb, View.Register.Tank.Bomb,
  Controller.Register.Base;

type
  TTankBomb = class(TRegister<TTankBomb, TdtmdlTankBomb, TfrmListTankBomb,
    TfrmRegisterTankBomb>);

implementation

end.
