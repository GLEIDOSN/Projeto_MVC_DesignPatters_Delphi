object frmSincronizaWEB: TfrmSincronizaWEB
  Left = 0
  Top = 0
  Anchors = [akRight, akBottom]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Sincronizar Dados da WEB'
  ClientHeight = 155
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object gbxOpcoes: TGroupBox
    Left = 0
    Top = 0
    Width = 380
    Height = 114
    Align = alClient
    Caption = 'Dados a Serem Sincronizados '
    TabOrder = 0
    ExplicitWidth = 688
    ExplicitHeight = 169
    object chkComentarios: TCheckBox
      Left = 11
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Coment'#225'rios'
      TabOrder = 0
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 114
    Width = 380
    Height = 41
    Align = alBottom
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 166
    ExplicitWidth = 447
    DesignSize = (
      380
      41)
    object pnlBotao: TPanel
      Left = 244
      Top = 3
      Width = 129
      Height = 35
      Anchors = [akTop, akBottom]
      Color = 1284928
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object btnSincronizar: TSpeedButton
        Left = 1
        Top = 1
        Width = 127
        Height = 33
        Align = alClient
        Caption = 'Sincronizar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSincronizarClick
        ExplicitTop = 6
        ExplicitWidth = 175
        ExplicitHeight = 39
      end
    end
  end
end
