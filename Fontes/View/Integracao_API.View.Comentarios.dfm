inherited frmCDComentarios: TfrmCDComentarios
  Caption = 'Cadastro de Coment'#225'rios'
  ClientHeight = 380
  ClientWidth = 729
  OnCreate = FormCreate
  ExplicitWidth = 745
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCRUD: TPageControl
    Width = 729
    Height = 380
    ExplicitWidth = 729
    ExplicitHeight = 380
    inherited tbConsulta: TTabSheet
      ExplicitWidth = 721
      ExplicitHeight = 350
      inherited pnlTopo: TPanel
        Width = 721
        ExplicitWidth = 721
        inherited cbPesquisa: TComboBox
          ItemIndex = 0
          Text = 'PostID'
          Items.Strings = (
            'PostID'
            'ID'
            'Name'
            'Email'
            'Body')
        end
      end
      inherited dbgrCRUD: TDBGrid
        Width = 721
        Height = 251
        Columns = <
          item
            Expanded = False
            FieldName = 'PostID'
            Title.Caption = 'C'#243'd. Post'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = 'Nome'
            Width = 301
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Width = 295
            Visible = True
          end>
      end
      inherited pnlRodape: TPanel
        Top = 304
        Width = 721
        ExplicitTop = 304
        ExplicitWidth = 721
        inherited btnExcluir: TButton
          Left = 240
          Top = 6
          ExplicitLeft = 240
          ExplicitTop = 6
        end
      end
    end
    inherited tbCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 721
      ExplicitHeight = 350
      object Label2: TLabel [0]
        Left = 16
        Top = 19
        Width = 111
        Height = 15
        Caption = 'C'#243'digo da Postagem'
      end
      object Label3: TLabel [1]
        Left = 152
        Top = 19
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel [2]
        Left = 279
        Top = 19
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Label5: TLabel [3]
        Left = 16
        Top = 75
        Width = 29
        Height = 15
        Caption = 'Email'
      end
      object Label6: TLabel [4]
        Left = 16
        Top = 131
        Width = 63
        Height = 15
        Caption = 'Coment'#225'rio'
      end
      object edtCodPostagem: TEdit [5]
        Left = 16
        Top = 35
        Width = 121
        Height = 23
        NumbersOnly = True
        TabOrder = 0
      end
      object edtCodigo: TEdit [6]
        Left = 152
        Top = 35
        Width = 121
        Height = 23
        NumbersOnly = True
        TabOrder = 1
      end
      object edtNome: TEdit [7]
        Left = 279
        Top = 35
        Width = 393
        Height = 23
        TabOrder = 2
      end
      object mmBody: TMemo [8]
        Left = 16
        Top = 147
        Width = 656
        Height = 150
        TabOrder = 3
      end
      object edtEmail: TEdit [9]
        Left = 16
        Top = 91
        Width = 393
        Height = 23
        TabOrder = 4
      end
      inherited pnlRodapeCadastro: TPanel
        Top = 304
        Width = 721
        TabOrder = 5
        ExplicitTop = 304
        ExplicitWidth = 721
        inherited btnSalvar: TButton
          Left = 16
          ExplicitLeft = 16
        end
        inherited btnCancelar: TButton
          Left = 136
          ExplicitLeft = 136
        end
        inherited btnVoltar: TButton
          Left = 248
          ExplicitLeft = 248
        end
      end
    end
  end
  inherited dsCRUD: TDataSource
    Left = 644
  end
end