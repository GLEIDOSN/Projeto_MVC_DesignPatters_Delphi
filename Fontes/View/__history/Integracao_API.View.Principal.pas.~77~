unit Integracao_API.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Forms, Integracao_API.View.Login, Vcl.Menus,
  Integracao_API.View.SincronizaAPI, Integracao_API.View.Comentarios;
type
  TfrmPrincipal = class(TForm)
    mmMenu: TMainMenu;
    C1: TMenuItem;
    F1: TMenuItem;
    S1: TMenuItem;
    C2: TMenuItem;
    A1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.C2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmCDComentarios, frmCDComentarios);
    frmCDComentarios.ShowModal;
  finally
    FreeAndNil(frmCDComentarios);
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmLogin, frmLogin);
    frmLogin.ShowModal;
  finally
    FreeAndNil(frmLogin);
  end;
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin
  frmSincronizaWEB := TfrmSincronizaWEB.Create(nil);
  try
    frmSincronizaWEB.ShowModal;
  finally
    FreeAndNil(frmSincronizaWEB);
  end;
end;

procedure TfrmPrincipal.S2Click(Sender: TObject);
begin
  Application.MessageBox('Projeto de duas noites inteiras que foi de muito aprendizado e teste de minhas habilidades,'+
                         'havia muita coisa para se fazer ainda mas pelo tempo não deu para fazer tudo,'+
                         'espero que gostem e aguardo feedbacks.'+#13+
                         'Gleidson Freitas - (85) 98658-5162.', 'Aviso Importante', MB_OK + MB_ICONWARNING);
end;

procedure TfrmPrincipal.S3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
