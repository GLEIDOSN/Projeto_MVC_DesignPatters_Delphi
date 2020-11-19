unit Integracao_API.Model.Interfaces;

interface

type
  IModelPessoa = interface
    ['{FBB96666-EEF3-4773-A6E8-EA42C9DA7EC8}']
    function GetNome: string;
    function GetEndereco: string;
    function GetNumero: Integer;
    function GetBairro: string;
    function GetCidade: string;
    function GetCEP: string;
    function GetUF: string;
    function GetCPF: string;

    procedure SetNome(aValue: string);
    procedure SetEndereco(aValue: string);
    procedure SetNumero(aValue: Integer);
    procedure SetBairro(aValue: string);
    procedure SetCidade(aValue: string);
    procedure SetCEP(aValue: string);
    procedure SetUF(aValue: string);
    procedure SetCPF(aValue: string);

    property Nome: string read GetNome write SetNome;
    property Endereco: string read GetEndereco write SetEndereco;
    property Numero: Integer read GetNumero write SetNumero;
    property Bairro: string read GetBairro write SetBairro;
    property Cidade: string read GetCidade write SetCidade;
    property CEP: string read GetCEP write SetCEP;
    property UF: string read GetUF write SetUF;
    property CPF: string read GetCPF write SetCPF;
  end;

  IModelUsuario = interface(IModelPessoa)
    ['{E76E8621-2622-4504-A7EF-8968B3CC8F61}']
    function GetCodigo: Integer;
    function GetLogin: string;
    function GetSenha: string;

    procedure SetCodigo(aValue: Integer);
    procedure SetLogin(aValue: string);
    procedure SetSenha(aValue: string);

    function ObjToJSON: string;
    function JSONToObj(aValue: string): IModelUsuario;

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Login: string read GetLogin write SetLogin;
    property Senha: string read GetSenha write SetSenha;
  end;

  IModelComments = interface
    ['{6AAAD41F-E116-4540-99D9-B711AE96338F}']
    function GetPostID: Integer;
    function GetID: Integer;
    function GetName: string;
    function GetEmail: string;
    function GetBody: string;

    procedure SetPostID(aValue: Integer);
    procedure SetID(aValue: Integer);
    procedure SetName(aValue: string);
    procedure SetEmail(aValue: string);
    procedure SetBody(aValue: string);

    function ObjToJSON: string;
    function JSONToObj(aValue: string): IModelComments;

    property PostID: Integer read GetPostID write SetPostID;
    property ID: Integer read GetID write SetID;
    property Name: string read GetName write SetName;
    property Email: string read GetEmail write SetEmail;
    property Body: string read GetBody write SetBody;
  end;

implementation

end.
