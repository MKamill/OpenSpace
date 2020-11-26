object SUFPaintForm: TSUFPaintForm
  Left = 671
  Top = 434
  BorderStyle = bsToolWindow
  Caption = 'SUFPaintForm'
  ClientHeight = 138
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 23
    Width = 70
    Height = 20
    Caption = #1064#1080#1088#1080#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 50
    Width = 60
    Height = 20
    Caption = #1044#1083#1080#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 84
    Top = 22
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 80
    Width = 237
    Height = 50
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Edit2: TEdit
    Left = 84
    Top = 49
    Width = 161
    Height = 21
    TabOrder = 1
  end
end
