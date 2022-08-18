unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox3: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
implementation

{$R *.dfm}

uses Unit2;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
form6.Close;
end;

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

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
form2.yk.InsertRow(duzet(edit1.Text)+' '+combobox3.Items[combobox3.ItemIndex],edit2.Text,true);
form6.Close;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
edit1.Text:='0,00';
edit2.Text:='';
edit1.SetFocus;
end;

end.
