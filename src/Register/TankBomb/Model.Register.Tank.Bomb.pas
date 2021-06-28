unit Model.Register.Tank.Bomb;

interface

uses
  System.SysUtils, System.Classes, Model.Register.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmdlTankBomb = class(TdtmdlRegister)
    fdqryListid: TStringField;
    fdqryListtank_desc: TStringField;
    fdqryListbomb_desc: TStringField;
    fdqryTank: TFDQuery;
    fdqryBomb: TFDQuery;
    fdqryTankid: TStringField;
    fdqryTankdescription: TStringField;
    fdqryRegisterid: TStringField;
    fdqryRegisterid_tank: TStringField;
    fdqryRegisterid_bomb: TStringField;
    fdqryRegisterTank: TStringField;
    fdqryRegisterBomb: TStringField;
  private

  protected
    procedure CloseDetail; override;

  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdtmdlTankBomb }

procedure TdtmdlTankBomb.CloseDetail;
begin
  inherited;
  fdqryTank.Close;
  fdqryBomb.Close;
end;

end.
