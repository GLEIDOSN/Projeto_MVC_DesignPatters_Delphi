unit Integracao_API.DAO.Interfaces;

interface

uses
  Integracao_API.Model.Interfaces, System.Generics.Collections, Data.DB;

type
  TTipoAcao = (tpInsert, tpUpdate, tpDelete);

  IDAOLog = interface
    ['{9FB2B149-F795-4291-B011-62C0D69F1BF8}']
    procedure GravaLog(aTipoAlteracao: TTipoAcao; aTabela: string;
      aDados: string);
  end;

  IDAOUsuario = interface(IDAOLog)
    ['{83A1EF72-7057-470C-857B-26D8E65A8A98}']
    function Salvar(aAcao: TTipoAcao; aObj: IModelUsuario): Boolean;
    function Excluir(aID: Integer): Boolean;
    function Buscar(aID: Integer): IModelUsuario;
    function BuscarTodos(aDataSource: TDataSource): IDAOUsuario;
    function Login(aLogin, aSenha: string): Boolean;
  end;

  IDAOComments = interface(IDAOLog)
    ['{1EF9B946-0DC0-45D6-BF53-E43CCD7E1083}']
    function Salvar(aAcao: TTipoAcao; aObj: IModelComments): Boolean;
    function Excluir(aPOSTID, aID: Integer): Boolean;
    function Buscar(aPOSTID, aID: Integer): IModelComments;
    function BuscarTodos(aDataSource: TDataSource): IDAOComments;
    function ExisteRegistro(aPOSTID, aID: Integer): Boolean;
  end;

implementation

end.
