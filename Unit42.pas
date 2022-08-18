unit Unit42;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.Menus, Vcl.Buttons;

type
  Tform42 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Redaktirle1: TMenuItem;
    BitBtn1: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Redaktirle1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form42: Tform42;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit32;

procedure Tform42.BitBtn1Click(Sender: TObject);
begin
reda:=false;
form32.Show;
end;

procedure Tform42.DBGrid1DblClick(Sender: TObject);
begin
if form2.Showing then
  begin
    form2.Edit5.Text:=adotable1.Fields[1].AsString+' ['+adotable1.Fields[0].AsString+']';
    form42.Close;
  end else
   begin
reda:=true;
form32.Show;
   end;
end;

function birinji2(s: string): string;
begin
  if pos(' ', s) <> 0 then
    s := copy(s, 1, pos(' ', s) - 1);
  result := s;
end;

function ikinji2(sset: string; var uc: string): string;
var
  k: integer;
begin
  k := pos(' ', sset);
  delete(sset, 1, k);
  k := pos(' ', sset);
  uc := '';
  if k <> 0 then
  begin
    uc := copy(sset, k + 1, length(sset));
    sset := copy(sset, 1, k - 1);
  end;
  result := sset;
end;

procedure Tform42.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var t,t2,t3,filtr:string;
begin
 ADOTable1.Filtered := false;

  t := birinji2(trim(edit1.Text));
  t2 := ikinji2(trim(edit1.Text), t3);
  if t3 = '' then
  begin
    if (t <> '') and (t2 <> '') then
    begin
      filtr := '(agent LIKE ''%' + t + '%'' AND agent LIKE ''%' + t2 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end
    else if t <> '' then
    begin
      filtr := '(agent LIKE ''%' + t + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end;
  end
  else
  begin
    if (t <> '') and (t2 <> '') then
    begin
      filtr := '(agent LIKE ''%' + t + '%'' AND agent LIKE ''%' + t2 +
        '%'' AND agent LIKE ''%' + t3 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end
    else if t <> '' then
    begin
      filtr := '(agent LIKE ''%' + t + '%'' AND agent LIKE ''%' + t3 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end;
  end;

end;

procedure Tform42.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
end;

procedure Tform42.FormShow(Sender: TObject);
begin
edit1.Text:='';
adotable1.Filter:='';
adotable1.Filtered:=false;
adotable1.Open;
end;

procedure Tform42.Redaktirle1Click(Sender: TObject);
begin
reda:=true;
form32.Show;
end;

end.
