unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm5 = class(TForm)
    Label3: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Edit4: TEdit;
    Label2: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

function duzet(g: string): string;
label 1, 2;
var
  ln, bb: integer;
begin
  if pos('.', g) <> 0 then
    g[pos('.', g)] := ',';

1:
  bb := 1;
2:
  if bb <= length(g) then
  begin
    if (not(g[bb] in ['0' .. '9'])) and (g[bb] <> ',') and (g[bb] <> '-') then
    begin
      delete(g, bb, 1);
      goto 1;
    end
    else
    begin
      inc(bb);
      goto 2;
    end;
  end;
  if g = '' then
    g := '0';

  duzet := g;
end;


procedure TForm5.BitBtn1Click(Sender: TObject);
var ts:Tstringlist;
nm:string;
begin
edit2.Text:=duzet(edit2.Text);
edit3.Text:=duzet(edit3.Text);
edit4.Text:=duzet(edit4.Text);
edit5.Text:=duzet(edit5.Text);
edit6.Text:=duzet(edit6.Text);
nm:='kurs.mag';
ts:=Tstringlist.Create;
ts.Add(edit2.Text);
ts.Add(edit3.Text);
ts.Add(edit4.Text);
ts.Add(edit5.Text);
ts.Add(edit6.Text);
ts.SaveToFile(nm);
freeandnil(ts);
end;

procedure TForm5.FormCreate(Sender: TObject);
var ts:Tstringlist;
nm:string;
begin
nm:='kurs.mag';
if not fileexists(nm) then
       begin
ts:=Tstringlist.Create;
ts.Add('3,50');
ts.Add('6,53');
ts.Add('75,76');
ts.Add('3,67');
ts.Add('0,84');
ts.SaveToFile(nm);
freeandnil(ts);
       end;

end;

procedure TForm5.FormShow(Sender: TObject);
var ts:Tstringlist;
nm:string;
begin
nm:='kurs.mag';
ts:=Tstringlist.Create;
ts.LoadFromFile(nm);
edit2.Text:=ts.Strings[0];
edit3.Text:=ts.Strings[1];
edit4.Text:=ts.Strings[2];
edit5.Text:=ts.Strings[3];
edit6.Text:=ts.Strings[4];
freeandnil(ts);
end;

end.
