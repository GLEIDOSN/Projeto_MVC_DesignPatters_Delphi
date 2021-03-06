unit Integracao_API.Model.Usuario;

interface

uses Integracao_API.Model.Interfaces;

type
  TUsuario = class(TInterfacedObject, IModelUsuario)
  private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FNumero: Integer;
    FBairro: string;
    FCidade: string;
    FCEP: string;
    FUF: string;
    FCPF: string;
    FLogin: string;
    FSenha: string;

    function GetNome: string;
    function GetEndereco: string;
    function GetNumero: Integer;
    function GetBairro: string;
    function GetCidade: string;
    function GetCEP: string;
    function GetUF: string;
    function GetCPF: string;
    function GetCodigo:Integer;
    function GetLogin: string;
    function GetSenha: string;

    procedure SetCodigo(aValue: Integer);
    procedure SetNome(aValue: string);
    procedure SetEndereco(aValue: string);
    procedure SetNumero(aValue: Integer);
    procedure SetBairro(aValue: string);
    procedure SetCidade(aValue: string);
    procedure SetCEP(aValue: string);
    procedure SetUF(aValue: string);
    procedure SetCPF(aValue: string);
    procedure SetLogin(aValue: string);
    procedure SetSenha(aValue: string);
  public
    constructor Create();
    destructor Destroy; Override;
    class function New: IModelUsuario;
    function ObjToJSON: string;
    function JSONToObj(aValue: string): IModelUsuario;

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Login: string read GetLogin write SetLogin;
    property Senha: string read GetSenha write SetSenha;
    property Nome: string read GetNome write SetNome;
    property Endereco: string read GetEndereco write SetEndereco;
    property Numero: Integer read GetNumero write SetNumero;
    property Bairro: string read GetBairro write SetBairro;
    property Cidade: string read GetCidade write SetCidade;
    property CEP: string read GetCEP write SetCEP;
    property UF: string read GetUF write SetUF;
    property CPF: string read GetCPF write SetCPF;
  end;

implementation

uses
  System.JSON, System.SysUtils;
  //REST.JSON;

{ TUsuario }

constructor TUsuario.Create;
begin

end;

destructor TUsuario.Destroy;
begin

  inherited;
end;

function TUsuario.GetBairro: string;
begin
  Result := FBairro;
end;

function TUsuario.GetCEP: string;
begin
  Result := FCEP;
end;

function TUsuario.GetCidade: string;
begin
  Result := FCidade;
end;

function TUsuario.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TUsuario.GetCPF: string;
begin
  Result := FCPF;
end;

function TUsuario.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TUsuario.GetLogin: string;
begin
  Result := FLogin;
end;

function TUsuario.GetNome: string;
begin
  Result := FNome;
end;

function TUsuario.GetNumero: Integer;
begin
  Result := FNumero;
end;

function TUsuario.GetSenha: string;
begin
  Result := FSenha;
end;

function TUsuario.GetUF: string;
begin
  Result := FUF;
end;

function TUsuario.JSONToObj(aValue: string): IModelUsuario;
var
  objUsuario: TJSONObject;
begin
  Result := Self;
  //Result := TJSON.JsonToObject<TUsuario>(aValue);
  if (Trim(aValue) <> EmptyStr) then
  begin
    objUsuario := TJSONObject.ParseJSONValue(aValue) as TJSONObject;
    try
      Self.FCodigo    := objUsuario.GetValue<Integer>('Codigo');
      Self.FNome      := objUsuario.GetValue<string>('Nome');
      Self.FEndereco  := objUsuario.GetValue<string>('Endereco');
      Self.FNumero    := objUsuario.GetValue<Integer>('Numero');
      Self.FBairro    := objUsuario.GetValue<string>('Bairro');
      Self.FCidade    := objUsuario.GetValue<string>('Cidade');
      Self.FCEP       := objUsuario.GetValue<string>('CEP');
      Self.FLogin     := objUsuario.GetValue<string>('Login');
      Self.FSenha     := objUsuario.GetValue<string>('Senha');
    finally
      FreeAndNil(objUsuario);
    end;
  end;
end;

class function TUsuario.New: IModelUsuario;
begin
  Result := Self.Create;
end;

function TUsuario.ObjToJSON: string;
var
  objJSON: TJSONObject;
begin
  objJSON := TJSONObject.Create;
  try
    objJSON.AddPair('Codigo', IntToStr(FCodigo));
    objJSON.AddPair('Nome', FNome);
    objJSON.AddPair('Endereco', FEndereco);
    objJSON.AddPair('Numero', IntToStr(FNumero));
    objJSON.AddPair('Bairro', FBairro);
    objJSON.AddPair('Cidade', FCidade);
    objJSON.AddPair('CEP', FCEP);
    objJSON.AddPair('Login', FLogin);
    objJSON.AddPair('Senha', FSenha);
    Result := objJSON.ToJSON();
    //Result := TJSON.ObjectToJsonString(Self);
  finally
    FreeAndNil(objJSON);
  end;
end;

procedure TUsuario.SetBairro(aValue: string);
begin
  FBairro := aValue;
end;

procedure TUsuario.SetCEP(aValue: string);
begin
  FCEP := aValue;
end;

procedure TUsuario.SetCidade(aValue: string);
begin
  FCidade := aValue;
end;

procedure TUsuario.SetCodigo(aValue: Integer);
begin
  FCodigo :=  aValue;
end;

procedure TUsuario.SetCPF(aValue: string);
begin
  FCPF := aValue;
end;

procedure TUsuario.SetEndereco(aValue: string);
begin
  FEndereco := aValue;
end;

procedure TUsuario.SetLogin(aValue: string);
begin
  FLogin := aValue;
end;

procedure TUsuario.SetNome(aValue: string);
begin
  FNome := aValue;
end;

procedure TUsuario.SetNumero(aValue: Integer);
begin
  FNumero := aValue;
end;

procedure TUsuario.SetSenha(aValue: string);
begin
  FSenha := aValue;
end;

procedure TUsuario.SetUF(aValue: string);
begin
  FUF := aValue;
end;

end.
