unit Controller.Register.Fuel;

interface

uses
  Model.Register.Fuel, View.List.Fuel, View.Register.Fuel,
  Controller.Register.Base;

type
  TFuel = class(TRegister<TFuel, TdtmdlFuel, TfrmListFuel, TfrmRegisterFuel>);

implementation

end.
