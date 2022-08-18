object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'T'#228'ze sargyt/ Sargyt redaktor'
  ClientHeight = 607
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 12
    Width = 170
    Height = 19
    Caption = 'Transporty'#328' g'#246'rn'#252#351'i:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 424
    Top = 277
    Width = 79
    Height = 19
    Caption = 'G'#246'wr'#252'mi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 487
    Top = 312
    Width = 47
    Height = 19
    Caption = 'tonna'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 356
    Width = 153
    Height = 19
    Caption = #221#252'klenmeli senesi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 200
    Top = 356
    Width = 138
    Height = 19
    Caption = #221#252'klenen senesi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 284
    Width = 107
    Height = 19
    Caption = 'Harydy'#328' ady:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 77
    Width = 70
    Height = 19
    Caption = 'M'#252#351'deri:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 213
    Width = 210
    Height = 19
    Caption = 'Tranzit '#253'urtlary'#328' kartasy:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 146
    Width = 94
    Height = 19
    Caption = 'Agentstwa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 548
    Top = 14
    Width = 93
    Height = 19
    Caption = #199'ykdajylar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 24
    Top = 436
    Width = 116
    Height = 19
    Caption = 'Klient bahasy:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 21
    Top = 12
    Width = 144
    Height = 19
    Caption = 'Transport belgisi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 44
    Width = 177
    Height = 27
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = 'Wagon'
    Items.Strings = (
      'Wagon'
      'Konte'#253'ner'
      'U'#231'ar'
      'Be'#253'leki')
  end
  object Edit1: TEdit
    Left = 424
    Top = 309
    Width = 57
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '20'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 388
    Width = 153
    Height = 27
    Date = 44300.509713645840000000
    Time = 44300.509713645840000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DateTimePicker2: TDateTimePicker
    Left = 200
    Top = 388
    Width = 153
    Height = 27
    Date = 44300.509713645840000000
    Time = 44300.509713645840000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 359
    Top = 388
    Width = 153
    Height = 25
    Caption = 'Heniz '#253#252'klenmedi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object Edit2: TEdit
    Left = 24
    Top = 310
    Width = 394
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 24
    Top = 103
    Width = 457
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Button1: TButton
    Left = 482
    Top = 103
    Width = 37
    Height = 27
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 24
    Top = 239
    Width = 488
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 24
    Top = 172
    Width = 457
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Button2: TButton
    Left = 482
    Top = 172
    Width = 37
    Height = 27
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object Edit7: TEdit
    Left = 24
    Top = 468
    Width = 113
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = '0'
  end
  object ComboBox3: TComboBox
    Left = 143
    Top = 468
    Width = 98
    Height = 27
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 1
    ParentFont = False
    TabOrder = 12
    Text = '$'
    Items.Strings = (
      'manat'
      '$'
      #221'uan'
      'Dirhem'
      #221'ewro'
      'Rubl')
  end
  object BitBtn1: TBitBtn
    Left = 747
    Top = 556
    Width = 107
    Height = 33
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 863
    Top = 556
    Width = 111
    Height = 33
    Caption = 'Bes et'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn2Click
  end
  object yk: TValueListEditor
    Left = 548
    Top = 44
    Width = 426
    Height = 502
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
    TabOrder = 15
    TitleCaptions.Strings = (
      #199'ykdajy'
      'Bellik')
    ColWidths = (
      102
      318)
  end
  object Edit6: TEdit
    Left = 21
    Top = 44
    Width = 173
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object Button3: TButton
    Left = 832
    Top = 13
    Width = 142
    Height = 25
    Caption = 'T'#228'ze '#231'ykdajy go'#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Button3Click
  end
  object BitBtn3: TBitBtn
    Left = 747
    Top = 13
    Width = 79
    Height = 25
    Caption = 'Boz'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 18
    OnClick = BitBtn3Click
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Left = 600
    Top = 176
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'cyk'
    Left = 712
    Top = 176
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 712
    Top = 312
  end
end
