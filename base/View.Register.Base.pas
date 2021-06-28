unit View.Register.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSaveRegister = procedure of object;
  TCancelRegister = procedure of object;

type
  TfrmRegister = class(TfrmBase)
    pnlOptions: TPanel;
    btnEditItem: TButton;
    btnNewItem: TButton;
    actSave: TAction;
    actCancel: TAction;
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    FOnCancelRegister: TCancelRegister;
    FOnSaveRegister: TSaveRegister;
    procedure SetOnCancelRegister(const Value: TCancelRegister);
    procedure SetOnSaveRegister(const Value: TSaveRegister);
    { Private declarations }
  public
    property OnSaveRegister: TSaveRegister read FOnSaveRegister
      write SetOnSaveRegister;
    property OnCancelRegister: TCancelRegister read FOnCancelRegister
      write SetOnCancelRegister;
  end;

implementation

{$R *.dfm}

procedure TfrmRegister.actCancelExecute(Sender: TObject);
begin
  inherited;
  try
    OnCancelRegister;
    Close;
  except
    on E: Exception do
      MessageDlg(E.Message, TMsgDlgType.mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRegister.actSaveExecute(Sender: TObject);
begin
  inherited;
  try
    OnSaveRegister;
    Close;
  except
    on E: Exception do
      MessageDlg(E.Message, TMsgDlgType.mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmRegister.SetOnCancelRegister(const Value: TCancelRegister);
begin
  FOnCancelRegister := Value;
end;

procedure TfrmRegister.SetOnSaveRegister(const Value: TSaveRegister);
begin
  FOnSaveRegister := Value;
end;

end.
