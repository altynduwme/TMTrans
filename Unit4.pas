unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.Menus, Vcl.Buttons;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
redm:=false;
form3.Show;
end;

procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
if form2.Showing then
  begin
    form2.Edit3.Text:=adotable1.Fields[1].AsString+' ['+adotable1.Fields[0].AsString+']';
    form4.Close;
  end else
   begin
redm:=true;
form3.Show;
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

procedure TForm4.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var t,t2,t3,filtr:string;
begin
 ADOTable1.Filtered := false;

  t := birinji2(trim(edit1.Text));
  t2 := ikinji2(trim(edit1.Text), t3);
  if t3 = '' then
  begin
    if (t <> '') and (t2 <> '') then
    begin
      filtr := '(mus LIKE ''%' + t + '%'' AND mus LIKE ''%' + t2 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end
    else if t <> '' then
    begin
      filtr := '(mus LIKE ''%' + t + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end;
  end
  else
  begin
    if (t <> '') and (t2 <> '') then
    begin
      filtr := '(mus LIKE ''%' + t + '%'' AND mus LIKE ''%' + t2 +
        '%'' AND mus LIKE ''%' + t3 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end
    else if t <> '' then
    begin
      filtr := '(mus LIKE ''%' + t + '%'' AND mus LIKE ''%' + t3 + '%'')';
      ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
    end;
  end;

end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
edit1.Text:='';
adotable1.Filter:='';
adotable1.Filtered:=false;
adotable1.Open;
end;

procedure TForm4.Redaktirle1Click(Sender: TObject);
begin
redm:=true;
form3.Show;
end;

end.
