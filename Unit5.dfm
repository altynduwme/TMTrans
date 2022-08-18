object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Kurslar'
  ClientHeight = 343
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 268
    Top = 317
    Width = 57
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '20'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 201
    Height = 343
    Align = alClient
    Caption = '1 $ ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label3: TLabel
      Left = 119
      Top = 31
      Width = 40
      Height = 19
      Caption = 'man.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label1: TLabel
      Left = 119
      Top = 79
      Width = 39
      Height = 19
      Caption = #253'uan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label2: TLabel
      Left = 119
      Top = 127
      Width = 32
      Height = 19
      Caption = 'rubl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label4: TLabel
      Left = 119
      Top = 175
      Width = 57
      Height = 19
      Caption = 'dirhem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label5: TLabel
      Left = 119
      Top = 223
      Width = 50
      Height = 19
      Caption = #253'ewro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Edit2: TEdit
      Left = 16
      Top = 28
      Width = 97
      Height = 27
      TabOrder = 0
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 16
      Top = 76
      Width = 97
      Height = 27
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit4: TEdit
      Left = 16
      Top = 124
      Width = 97
      Height = 27
      TabOrder = 2
      Text = 'Edit2'
    end
    object Edit5: TEdit
      Left = 16
      Top = 172
      Width = 97
      Height = 27
      TabOrder = 3
      Text = 'Edit2'
    end
    object Edit6: TEdit
      Left = 16
      Top = 220
      Width = 97
      Height = 27
      TabOrder = 4
      Text = 'Edit2'
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 270
      Width = 160
      Height = 46
      Caption = #221'atda sakla'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
end
