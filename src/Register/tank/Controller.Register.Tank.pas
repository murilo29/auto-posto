unit Controller.Register.Tank;

interface

uses
  Model.Register.Tank, View.List.Tank, View.Register.Tank,
  Controller.Register.Base;

type
  TTank = class(TRegister<TTank, TdtmdlTank, TfrmListtank, TfrmRegisterTank>);

implementation

end.
