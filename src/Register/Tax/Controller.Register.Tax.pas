unit Controller.Register.Tax;

interface

uses
  Model.Register.Tax, View.List.Tax, View.Register.Tax,
  Controller.Register.Base;

type
  TTax = class(TRegister<TTax, TdtmdlTax, TfrmListTax, TfrmRegisterTax>);

implementation

end.
