unit Integracao_API.View.CRUDBasic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TpOperacao = (TpInclusao, TpEdicao, TpExclusao, TpConsultaDados, TpConsultaRegistro);

  TfrmCRUDBasic = class(TForm)
    pgCRUD: TPageControl;
    tbConsulta: TTabSheet;
    pnlTopo: TPanel;
    dbgrCRUD: TDBGrid;
    pnlRodape: TPanel;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    tbCadastro: TTabSheet;
    btnConsultar: TButton;
    dsCRUD: TDataSource;
    Label1: TLabel;
    cbPesquisa: TComboBox;
    edtPesquisa: TEdit;
    btnPesquisar: TButton;
    pnlRodapeCadastro: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnVoltar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure ControleBotoes(aTpOperacao: TpOperacao);
  public
    FEstadoInsercao: Boolean;
  end;

var
  frmCRUDBasic: TfrmCRUDBasic;

implementation

{$R *.dfm}

{ TfrmCRUDBasic }

procedure TfrmCRUDBasic.btnAdicionarClick(Sender: TObject);
begin
  FEstadoInsercao := True;
  ControleBotoes(TpInclusao);
  pgCRUD.ActivePage := tbCadastro;
end;

procedure TfrmCRUDBasic.btnCancelarClick(Sender: TObject);
begin
  ControleBotoes(TpConsultaDados);
end;

procedure TfrmCRUDBasic.btnConsultarClick(Sender: TObject);
begin
  ControleBotoes(tpConsultaRegistro);
  pgCRUD.ActivePage := tbCadastro;
end;

procedure TfrmCRUDBasic.btnEditarClick(Sender: TObject);
begin
  FEstadoInsercao := False;
  ControleBotoes(TpEdicao);
  pgCRUD.ActivePage := tbCadastro;
end;

procedure TfrmCRUDBasic.btnExcluirClick(Sender: TObject);
begin
  ControleBotoes(TpExclusao);
end;

procedure TfrmCRUDBasic.btnPesquisarClick(Sender: TObject);
begin
  ControleBotoes(TpConsultaDados);
end;

procedure TfrmCRUDBasic.btnSalvarClick(Sender: TObject);
begin
  FEstadoInsercao := False;
end;

procedure TfrmCRUDBasic.btnVoltarClick(Sender: TObject);
begin
  pgCRUD.ActivePage := tbConsulta;
end;

procedure TfrmCRUDBasic.ControleBotoes(aTpOperacao: TpOperacao);
begin
  btnAdicionar.Enabled := aTpOperacao = TpConsultaDados;
  btnEditar.Enabled := btnAdicionar.Enabled;
  btnExcluir.Enabled := btnEditar.Enabled;
  btnConsultar.Enabled := btnExcluir.Enabled;

  btnSalvar.Enabled := aTpOperacao in [TpInclusao, TpEdicao];
  btnCancelar.Enabled := btnSalvar.Enabled;
  btnVoltar.Enabled := aTpOperacao = tpConsultaRegistro;
end;

procedure TfrmCRUDBasic.FormShow(Sender: TObject);
begin
  pgCRUD.ActivePage := tbConsulta;
end;

end.
