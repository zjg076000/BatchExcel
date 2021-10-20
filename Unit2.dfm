object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #25209#37327#22788#29702#25991#20214#24037#20855
  ClientHeight = 686
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 49
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 818
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 36
      Height = 12
      Caption = #25991#20214#22841
    end
    object btnOpen: TSpeedButton
      Left = 423
      Top = 10
      Width = 66
      Height = 21
      Caption = #36873#21462#30446#24405
      OnClick = btnOpenClick
    end
    object btnTest: TSpeedButton
      Left = 715
      Top = 18
      Width = 70
      Height = 23
      Caption = #27979#35797
      Visible = False
      OnClick = btnTestClick
    end
    object btnInsertCol: TSpeedButton
      Left = 519
      Top = 7
      Width = 95
      Height = 25
      Caption = #25209#37327#26356#26032#25968#25454
      OnClick = btnInsertColClick
    end
    object edtPath: TEdit
      Left = 80
      Top = 13
      Width = 337
      Height = 21
      BevelEdges = [beRight, beBottom]
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      TabOrder = 0
      Text = 'D:\'#20010#20154#24037#20316#36164#26009'\data\data\2001\'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 409
    Height = 637
    Align = alLeft
    BevelEdges = [beLeft, beRight, beBottom]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 405
      Height = 36
      Align = alTop
      BevelEdges = [beLeft]
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = -4
      ExplicitTop = -4
      object Label2: TLabel
        Left = 9
        Top = 11
        Width = 96
        Height = 12
        Caption = #24453#22788#29702#30340#25991#20214#21015#34920
      end
      object lbl_file: TLabel
        Left = 138
        Top = 10
        Width = 126
        Height = 12
        Caption = #27491#22312#22788#29702#30340#25991#20214'.......'
        Font.Charset = GB2312_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 36
      Width = 405
      Height = 599
      Align = alClient
      BevelEdges = [beTop]
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 1
      object RichEdit1: TRichEdit
        Left = 0
        Top = 0
        Width = 405
        Height = 597
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = 254
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        Zoom = 100
      end
    end
  end
  object Panel5: TPanel
    Left = 409
    Top = 49
    Width = 409
    Height = 637
    Align = alLeft
    BevelEdges = [beRight, beBottom]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 407
      Height = 36
      Align = alTop
      BevelEdges = [beLeft]
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = -8
      ExplicitTop = 6
      object Label3: TLabel
        Left = 10
        Top = 11
        Width = 96
        Height = 12
        Caption = #24050#22788#29702#30340#25991#20214#21015#34920
      end
      object Label4: TLabel
        Left = 202
        Top = 10
        Width = 108
        Height = 12
        Caption = #24050#22788#29702#23436#25104#25991#20214#25968#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl_count: TLabel
        Left = 316
        Top = 8
        Width = 9
        Height = 16
        Caption = '0'
        Font.Charset = GB2312_CHARSET
        Font.Color = clFuchsia
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 36
      Width = 407
      Height = 599
      Align = alClient
      BevelEdges = [beTop]
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 1
      object RichEdit2: TRichEdit
        Left = 0
        Top = 0
        Width = 407
        Height = 597
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = 254
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        Zoom = 100
        ExplicitLeft = 4
        ExplicitTop = 4
      end
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 400
    Top = 104
  end
end
