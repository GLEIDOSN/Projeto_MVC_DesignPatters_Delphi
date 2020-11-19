unit Integracao_API.Controller.Interfaces;

interface

uses
  Integracao_API.Model.Interfaces, System.Generics.Collections,
  Integracao_API.DAO.Interfaces, Data.DB;

type
  IControllerUsuario = interface
    ['{C7CA2CD7-50EC-4622-BFB1-00883319699B}']
    function Salvar(aAcao: TTipoAcao; aObj: IModelUsuario): Boolean;
    function Excluir(aID: Integer): Boolean;
    function Buscar(aID: Integer): IModelUsuario;
    function BuscarTodos(aDataSource: TDataSource): IControllerUsuario;
    function Login(aObj: IModelUsuario): Boolean;
  end;

  IControllerComments = interface
    ['{7BB3E03D-5861-4E50-88F5-8FBB8BFA282A}']
    function Salvar(aAcao: TTipoAcao; aObj: IModelComments): Boolean;
    function Excluir(aPOSTID, aID: Integer): Boolean;
    function Buscar(aPOSTID, aID: Integer): IModelComments;
    function BuscarTodos(aDataSource: TDataSource): IControllerComments;
  end;

implementation

end.
