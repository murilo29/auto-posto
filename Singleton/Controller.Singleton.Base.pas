unit Controller.Singleton.Base;

interface

uses
  System.Classes, Vcl.Forms;

type
  TSingleton<T: class> = class(TComponent)
  private
    class var FIntance: T;
  public
    class function New: T;
  end;

implementation

{ TSingleton<T> }

class function TSingleton<T>.New: T;
begin
  if not(Assigned(FIntance)) then
    FIntance := TComponentClass(T).Create(Application) as T;
  Result := FIntance;
end;

end.
