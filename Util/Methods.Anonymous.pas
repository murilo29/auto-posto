unit Methods.Anonymous;

interface

type
  TProc<AField, ADisplayer> = reference to procedure(Field: AField;
    Displayer: ADisplayer);

implementation

end.
