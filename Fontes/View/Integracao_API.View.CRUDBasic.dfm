object frmCRUDBasic: TfrmCRUDBasic
  Left = 0
  Top = 0
  ClientHeight = 383
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgCRUD: TPageControl
    Left = 0
    Top = 0
    Width = 754
    Height = 383
    ActivePage = tbConsulta
    Align = alClient
    TabOrder = 0
    object tbConsulta: TTabSheet
      Caption = 'Consulta'
      object pnlTopo: TPanel
        Left = 0
        Top = 0
        Width = 746
        Height = 53
        Align = alTop
        ShowCaption = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 74
          Height = 15
          Caption = 'Pesquisar Por:'
        end
        object cbPesquisa: TComboBox
          Left = 8
          Top = 25
          Width = 145
          Height = 23
          TabOrder = 0
          Text = 'cbPesquisa'
        end
        object edtPesquisa: TEdit
          Left = 159
          Top = 25
          Width = 450
          Height = 23
          TabOrder = 1
          TextHint = 'Digite para pesquisar'
        end
      end
      object dbgrCRUD: TDBGrid
        Left = 0
        Top = 53
        Width = 746
        Height = 254
        Align = alClient
        DataSource = dsCRUD
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object pnlRodape: TPanel
        Left = 0
        Top = 307
        Width = 746
        Height = 46
        Align = alBottom
        ShowCaption = False
        TabOrder = 2
        object btnAdicionar: TButton
          Left = 0
          Top = 8
          Width = 102
          Height = 33
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = btnAdicionarClick
        end
        object btnEditar: TButton
          Left = 120
          Top = 8
          Width = 97
          Height = 33
          Caption = 'Editar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnEditarClick
        end
        object btnExcluir: TButton
          Left = 232
          Top = 8
          Width = 106
          Height = 33
          Caption = 'Excluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnConsultar: TButton
          Left = 352
          Top = 8
          Width = 102
          Height = 33
          Caption = 'Consultar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnConsultarClick
        end
      end
      object btnPesquisar: TButton
        Left = 615
        Top = 23
        Width = 102
        Height = 28
        Caption = 'Pesquisar'
        TabOrder = 3
        OnClick = btnPesquisarClick
      end
    end
    object tbCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pnlRodapeCadastro: TPanel
        Left = 0
        Top = 307
        Width = 746
        Height = 46
        Align = alBottom
        ShowCaption = False
        TabOrder = 0
        object btnSalvar: TButton
          Left = 0
          Top = 8
          Width = 102
          Height = 33
          Caption = 'Salvar'
          Enabled = False
          TabOrder = 0
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 120
          Top = 8
          Width = 97
          Height = 33
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 1
          OnClick = btnCancelarClick
        end
        object btnVoltar: TButton
          Left = 232
          Top = 8
          Width = 102
          Height = 33
          Caption = 'Voltar'
          Enabled = False
          TabOrder = 2
          OnClick = btnVoltarClick
        end
      end
    end
  end
  object dsCRUD: TDataSource
    AutoEdit = False
    Left = 692
    Top = 90
  end
end
