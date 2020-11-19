object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Avalia'#231#227'o T'#233'cnica 2 para Desenvolvedor - Gleidson Freitas'
  ClientHeight = 375
  ClientWidth = 645
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object mmMenu: TMainMenu
    Left = 8
    object C1: TMenuItem
      Caption = 'Cadastros'
      object C2: TMenuItem
        Caption = 'Coment'#225'rios'
        OnClick = C2Click
      end
    end
    object F1: TMenuItem
      Caption = 'Ferramentas'
      object S1: TMenuItem
        Caption = 'Sicronizar dados da WEB'
        OnClick = S1Click
      end
    end
    object A1: TMenuItem
      Caption = 'Ajuda'
      object S2: TMenuItem
        Caption = 'Sobre...'
        OnClick = S2Click
      end
    end
    object S3: TMenuItem
      Caption = 'Sair'
      OnClick = S3Click
    end
  end
end
