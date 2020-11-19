unit Integracao_API.Controller.Usuarios;

interface

uses Integracao_API.Controller.Interfaces, Integracao_API.Model.Interfaces,
  Integracao_API.DAO.Interfaces, System.Generics.Collections,
  Integracao_API.Model.ConexaoFD, Integracao_API.DAO.Usuario,
  Integracao_API.Model.Usuario, Data.DB;

type
  TControllerUsuario = class(TInterfacedObject, IControllerUsuario)
  private
     FDAOUsuario: IDAOUsuario;
  public
    constructor Create;
    destructor Destroy; Override;
    class function New: IControllerUsuario;
    function Salvar(aAcao: TTipoAcao; aObj: IModelUsuario): Boolean;
    function Excluir(aID: Integer): Boolean;
    function Buscar(aID: Integer): IModelUsuario;
    function BuscarTodos(aDataSource: TDataSource): IControllerUsuario;
    function Login(aObj: IModelUsuario): Boolean;
  end;

implementation

{ TControllerUsuario }

function TControllerUsuario.Buscar(aID: Integer): IModelUsuario;
begin
  FDAOUsuario := TDAOUsuario.Create(TConexaoFireDAC.Instancia.ConexaoBD);
  Result := FDAOUsuario.Buscar(aID);
end;

function TControllerUsuario.BuscarTodos(aDataSource: TDataSource): IControllerUsuario;
begin
  Result := Self;
  FDAOUsuario.BuscarTodos(aDataSource);
end;

constructor TControllerUsuario.Create;
begin

end;

destructor TControllerUsuario.Destroy;
begin

  inherited;
end;

function TControllerUsuario.Excluir(aID: Integer): Boolean;
begin
  FDAOUsuario := TDAOUsuario.Create(TConexaoFireDAC.Instancia.ConexaoBD);
  Result := FDAOUsuario.Excluir(aID);
end;

function TControllerUsuario.Login(aObj: IModelUsuario): Boolean;
begin
  FDAOUsuario := TDAOUsuario.Create(TConexaoFireDAC.Instancia.ConexaoBD);
  Result := FDAOUsuario.Login(aObj.Login, aObj.Senha);
end;

class function TControllerUsuario.New: IControllerUsuario;
begin
  Result := Self.Create;
end;

function TControllerUsuario.Salvar(aAcao: TTipoAcao;
  aObj: IModelUsuario): Boolean;
begin
  Result := False;
  FDAOUsuario := TDAOUsuario.Create(TConexaoFireDAC.Instancia.ConexaoBD);
  case aAcao of
    tpInsert: Result := FDAOUsuario.Salvar(tpInsert, aObj);
    tpUpdate: Result := FDAOUsuario.Salvar(tpUpdate, aObj);
  end;
end;

end.
