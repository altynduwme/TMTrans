object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'TmTrans'
  ClientHeight = 739
  ClientWidth = 1344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 150
    Width = 1338
    Height = 586
    Margins.Top = 150
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cob'
        Title.Caption = 'TR Belgi'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tg'
        Title.Caption = 'Transport'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mus'
        Title.Caption = 'M'#252#351'deri'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ag'
        Title.Caption = 'Agentstwa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'karta'
        Title.Caption = 'Karta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gowrum'
        Title.Caption = 'G'#246'wr'#252'mi'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ys'
        Title.Caption = #221#252'klenmeli'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yns'
        Title.Caption = #221#252'klenen'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cyk'
        Title.Caption = 'Jemi '#231'ykd.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'baha'
        Title.Caption = 'Baha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bob'
        Title.Caption = '.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'haryt'
        Title.Caption = 'Haryt'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sas'
        Title.Caption = 'D'#246'redildi'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 1161
    Height = 137
    Caption = 'Filtrasi'#253'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 28
      Width = 86
      Height = 18
      Caption = 'Haryt b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 28
      Width = 104
      Height = 18
      Caption = 'M'#252#351'deri b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 401
      Top = 28
      Width = 123
      Height = 18
      Caption = 'Agentstwa b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 593
      Top = 28
      Width = 85
      Height = 18
      Caption = 'Karta b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 785
      Top = 28
      Width = 117
      Height = 18
      Caption = 'Transport b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 939
      Top = 26
      Width = 121
      Height = 19
      Caption = 'G'#246'wr'#252'mi b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1008
      Top = 55
      Width = 47
      Height = 19
      Caption = 'tonna'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label8: TLabel
      Left = 14
      Top = 98
      Width = 195
      Height = 19
      Caption = #221#252'klenmeli senesi b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 413
      Top = 98
      Width = 180
      Height = 19
      Caption = #221#252'klenen senesi b/'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 14
      Top = 52
      Width = 179
      Height = 27
      Hint = 'haryt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyUp = Edit1KeyUp
    end
    object Edit2: TEdit
      Left = 207
      Top = 52
      Width = 178
      Height = 27
      Hint = 'mus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyUp = Edit1KeyUp
    end
    object Edit3: TEdit
      Left = 401
      Top = 52
      Width = 177
      Height = 27
      Hint = 'ag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyUp = Edit1KeyUp
    end
    object Edit4: TEdit
      Left = 593
      Top = 52
      Width = 177
      Height = 27
      Hint = 'karta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyUp = Edit1KeyUp
    end
    object ComboBox1: TComboBox
      Left = 785
      Top = 52
      Width = 117
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'Wagon'
      OnCloseUp = ComboBox1CloseUp
      Items.Strings = (
        'Wagon'
        'Konte'#253'ner'
        'U'#231'ar'
        'Be'#253'leki')
    end
    object Edit5: TEdit
      Left = 939
      Top = 52
      Width = 63
      Height = 27
      Hint = 'gowrum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyUp = Edit1KeyUp
    end
    object DateTimePicker1: TDateTimePicker
      Left = 212
      Top = 94
      Width = 140
      Height = 27
      Date = 44300.509713645840000000
      Time = 44300.509713645840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DateTimePicker2: TDateTimePicker
      Left = 598
      Top = 94
      Width = 140
      Height = 27
      Date = 44300.509713645840000000
      Time = 44300.509713645840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 805
      Top = 96
      Width = 243
      Height = 24
      Caption = 'Heniz '#253#252'klenmedikleri g'#246'rkez'
      TabOrder = 8
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 353
      Top = 95
      Width = 53
      Height = 25
      Caption = 'OK'
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
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 744
      Top = 95
      Width = 53
      Height = 25
      Caption = 'OK'
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
      TabOrder = 10
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 1096
      Top = 23
      Width = 60
      Height = 109
      Align = alRight
      Caption = 'Filtr '#253'ok'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 11
      WordWrap = True
      OnClick = BitBtn3Click
    end
  end
  object Button1: TButton
    Left = 1191
    Top = 17
    Width = 113
    Height = 37
    Caption = 'Eksport'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 376
    object Sarygytlar1: TMenuItem
      Caption = 'Esasy'
      object zesargytdret1: TMenuItem
        Caption = 'T'#228'ze sargyt d'#246'ret'
        OnClick = zesargytdret1Click
      end
      object Sargytredaktor1: TMenuItem
        Caption = 'Sargyt redaktor'
        OnClick = Sargytredaktor1Click
      end
      object Agenstwalar1: TMenuItem
        Caption = 'Agentstwalar'
        object zeagentstwa1: TMenuItem
          Caption = 'T'#228'ze agentstwa'
          OnClick = zeagentstwa1Click
        end
        object Agentstwaredaktor1: TMenuItem
          Caption = 'Agentstwa redaktor'
          OnClick = Agentstwaredaktor1Click
        end
      end
      object Mderiler1: TMenuItem
        Caption = 'M'#252#351'deriler/Bergidarlarym'
        object zemderi1: TMenuItem
          Caption = 'T'#228'ze m'#252#351'deri'
          OnClick = zemderi1Click
        end
        object Mderiredaktor1: TMenuItem
          Caption = 'M'#252#351'deriler'
          OnClick = Mderiredaktor1Click
        end
        object zebergidar1: TMenuItem
          Caption = 'T'#228'ze bergidar'
        end
        object Bergidarredaktor1: TMenuItem
          Caption = 'Bergidarlar'
        end
      end
      object Algydepderesi1: TMenuItem
        Caption = 'Algy depder'#231'esi'
      end
      object Bergidepderesi1: TMenuItem
        Caption = 'Bergi depder'#231'esi'
      end
    end
    object Sazlamalar1: TMenuItem
      Caption = 'Sazlamalar'
      object Kurslar1: TMenuItem
        Caption = 'Kurslar'
        OnClick = Kurslar1Click
      end
    end
    object Bizbarada1: TMenuItem
      Caption = 'Barada'
      object Bizbarada2: TMenuItem
        Caption = 'Biz barada'
      end
    end
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'Trans'
    Left = 440
    Top = 384
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Left = 328
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 536
    Top = 392
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 440
    Top = 520
  end
  object PopupMenu1: TPopupMenu
    Left = 792
    Top = 280
    object Dzet1: TMenuItem
      Caption = 'D'#252'zet'
      OnClick = Dzet1Click
    end
    object Arhiwegeir1: TMenuItem
      Caption = 'Arhiwe ge'#231'ir'
    end
  end
end
