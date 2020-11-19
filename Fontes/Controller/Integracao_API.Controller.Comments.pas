unit Integracao_API.Controller.Comments;

interface

uses Integracao_API.Controller.Interfaces, Integracao_API.Model.Interfaces,
  Integracao_API.DAO.Interfaces, System.Generics.Collections,
  Integracao_API.DAO.Comments, Integracao_API.Model.ConexaoFD, Data.DB;

type
  TControllerComments = class(TInterfacedObject, IControllerComments)
  private
    FDAOComments: IDAOComments;

  public
    constructor Create;
    destructor Destroy; Override;
    class function New: IControllerComments;

    function Salvar(aAcao: TTipoAcao; aObj: IModelComments): Boolean;
    function Excluir(aPOSTID, aID: Integer): Boolean;
    function Buscar(aPOSTID, aID: Integer): IModelComments;
    function BuscarTodos(aDataSource: TDataSource): IControllerComments;
  end;

implementation

{ TControllerComments }

function TControllerComments.Buscar(aPOSTID, aID: Integer): IModelComments;
begin
  Result := FDAOComments.Buscar(aPOSTID, aID);
end;

function TControllerComments.BuscarTodos(aDataSource: TDataSource): IControllerComments;
begin
  Result := Self;
  FDAOComments.BuscarTodos(aDataSource);
end;

constructor TControllerComments.Create;
begin
  FDAOComments := TDAOComments.Create(TConexaoFireDAC.Instancia.ConexaoBD);
end;

destructor TControllerComments.Destroy;
begin

  inherited;
end;

function TControllerComments.Excluir(aPOSTID, aID: Integer): Boolean;
begin
  Result := FDAOComments.Excluir(aPOSTID, aID);
end;

class function TControllerComments.New: IControllerComments;
begin
  Result := Self.Create;
end;

function TControllerComments.Salvar(aAcao: TTipoAcao;
  aObj: IModelComments): Boolean;
begin
  Result :=  False;
  case aAcao of
    tpInsert: Result := FDAOComments.Salvar(tpInsert, aObj);
    tpUpdate: Result := FDAOComments.Salvar(tpUpdate, aObj);
  end;
end;

end.
