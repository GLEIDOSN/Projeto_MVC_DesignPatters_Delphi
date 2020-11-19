program Integracao_API;

uses
  Vcl.Forms,
  Integracao_API.View.Principal in 'View\Integracao_API.View.Principal.pas' {frmPrincipal},
  Integracao_API.Model.Interfaces in 'Model\Integracao_API.Model.Interfaces.pas',
  Integracao_API.DAO.Interfaces in 'DAO\Integracao_API.DAO.Interfaces.pas',
  Integracao_API.DAO.Usuario in 'DAO\Integracao_API.DAO.Usuario.pas',
  Integracao_API.Model.ConexaoFD in 'Model\Conexao\Integracao_API.Model.ConexaoFD.pas',
  Integracao_API.Utils.Helpers in 'Utils\Integracao_API.Utils.Helpers.pas',
  Integracao_API.Controller.Interfaces in 'Controller\Integracao_API.Controller.Interfaces.pas',
  Integracao_API.Controller.Usuarios in 'Controller\Integracao_API.Controller.Usuarios.pas',
  Integracao_API.Model.Usuario in 'Model\Integracao_API.Model.Usuario.pas',
  Integracao_API.Model.Comments in 'Model\Integracao_API.Model.Comments.pas',
  Integracao_API.DAO.Comments in 'DAO\Integracao_API.DAO.Comments.pas',
  Integracao_API.Controller.Comments in 'Controller\Integracao_API.Controller.Comments.pas',
  Integracao_API.Model.ConexaoAPI in 'Model\ConexaoAPI\Integracao_API.Model.ConexaoAPI.pas',
  Integracao_API.View.Login in 'View\Integracao_API.View.Login.pas' {frmLogin},
  Integracao_API.View.SincronizaAPI in 'View\Integracao_API.View.SincronizaAPI.pas' {frmSincronizaWEB},
  Integracao_API.View.CRUDBasic in 'View\Integracao_API.View.CRUDBasic.pas' {frmCRUDBasic},
  Integracao_API.View.Comentarios in 'View\Integracao_API.View.Comentarios.pas' {frmCDComentarios};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
