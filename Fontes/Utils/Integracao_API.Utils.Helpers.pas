unit Integracao_API.Utils.Helpers;

interface

uses
  FireDAC.Comp.Client;

type
  TQueryHelpers = class helper for TFDQuery
    procedure PreparaQuery;
  end;

implementation

{ TQueryHelpers }

procedure TQueryHelpers.PreparaQuery;
begin
  Self.Close;
  Self.SQL.Clear;
end;

end.
