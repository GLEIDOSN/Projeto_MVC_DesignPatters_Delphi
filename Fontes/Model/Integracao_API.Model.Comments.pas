unit Integracao_API.Model.Comments;

interface

uses Integracao_API.Model.Interfaces;

type
  TComments = class(TInterfacedObject, IModelComments)
  private
    FPostID: Integer;
    FID: Integer;
    FName: string;
    FEmail: string;
    FBody: string;

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
  public
    constructor Create;
    destructor Destroy; Override;
    class function New: IModelComments;

    function ObjToJSON: string;
    function JSONToObj(aValue: string): IModelComments;

    property PostID: Integer read GetPostID write SetPostID;
    property ID: Integer read GetID write SetID;
    property Name: string read GetName write SetName;
    property Email: string read GetEmail write SetEmail;
    property Body: string read GetBody write SetBody;
  end;

implementation

uses
  System.JSON, System.SysUtils;
  //REST.JSON;

{ TComments }

constructor TComments.Create;
begin

end;

destructor TComments.Destroy;
begin

  inherited;
end;

function TComments.GetBody: string;
begin
  Result := FBody;
end;

function TComments.GetEmail: string;
begin
  Result := FEmail;
end;

function TComments.GetID: Integer;
begin
  Result := FID;
end;

function TComments.GetName: string;
begin
  Result := FName;
end;

function TComments.GetPostID: Integer;
begin
  Result := FPostID;
end;

function TComments.JSONToObj(aValue: string): IModelComments;
var
  objUsuario: TJSONObject;
begin
  Result := Self;
  //Result := TJSON.JsonToObject<TUsuario>(aValue);
  if (Trim(aValue) <> EmptyStr) then
  begin
    objUsuario := TJSONObject.ParseJSONValue(aValue) as TJSONObject;
    try
      Self.FPostID := objUsuario.GetValue<Integer>('postId');
      Self.FID     := objUsuario.GetValue<Integer>('id');
      Self.Name    := objUsuario.GetValue<string>('name');
      Self.Email   := objUsuario.GetValue<string>('email');
      Self.Body    := objUsuario.GetValue<string>('body');
    finally
      FreeAndNil(objUsuario);
    end;
  end;
end;

class function TComments.New: IModelComments;
begin
  Result :=  Self.Create;
end;

function TComments.ObjToJSON: string;
var
  objJSON: TJSONObject;
begin
  objJSON := TJSONObject.Create;
  try
    objJSON.AddPair('POSTID', IntToStr(FPostID));
    objJSON.AddPair('ID', IntToStr(FID));
    objJSON.AddPair('Name', FName);
    objJSON.AddPair('Email', FEmail);
    objJSON.AddPair('Body', FBody);
    Result := objJSON.ToJSON();
    //Result := TJSON.ObjectToJsonString(Self);
  finally
    FreeAndNil(objJSON);
  end;
end;

procedure TComments.SetBody(aValue: string);
begin
  FBody := aValue;
end;

procedure TComments.SetEmail(aValue: string);
begin
  FEmail := aValue;
end;

procedure TComments.SetID(aValue: Integer);
begin
  FID := aValue;
end;

procedure TComments.SetName(aValue: string);
begin
  FName := aValue;
end;

procedure TComments.SetPostID(aValue: Integer);
begin
  FPostID := aValue;
end;

end.
