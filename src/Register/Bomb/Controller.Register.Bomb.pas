unit Controller.Register.Bomb;

interface

uses
  Model.Register.Bomb, View.List.Bomb, View.Register.Bomb,
  Controller.Register.Base;

type
  TBomb = class(TRegister<TBomb, TdtmdlBomb, TfrmListBomb, TfrmRegisterBomb>);

implementation

end.
