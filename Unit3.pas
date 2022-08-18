unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Edit2: TEdit;
    Label6: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  redm:boolean;
implementation

{$R *.dfm}

uses Unit4;

function makeid:string;
begin
  result:=chr(65+random(26))+inttostr(random(maxint));
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
 if not form4.Showing then form4.ADOTable1.Open;
if not redm then form4.ADOTable1.Append else form4.ADOTable1.Edit;
if not redm then form4.ADOTable1.Fields[0].AsString:=makeid;
form4.ADOTable1.Fields[1].AsString:=edit2.Text;
form4.ADOTable1.Fields[2].AsString:=edit1.Text;
form4.ADOTable1.Fields[3].AsString:=edit3.Text;
form4.ADOTable1.Fields[4].AsString:=edit4.Text;
form4.ADOTable1.Post;
 if not form4.Showing then form4.ADOTable1.close;
if not redm then
  messagedlg('Täze müşderi goşuldy!',mtinformation,[mbok],1) else
  messagedlg('Düzedişler girizildi',mtinformation,[mbok],1);
  form3.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
if not redm then
 begin
   edit1.Text:='';
   edit2.Text:='';
   edit3.Text:='';
   edit4.Text:='';
   form3.Caption:='Täze müşderi goşmak';
   bitbtn1.Caption:='Goşmak';
 end else
 begin
   edit2.Text:=form4.ADOTable1.Fields[1].AsString;
   edit1.Text:=form4.ADOTable1.Fields[2].AsString;
   edit3.Text:=form4.ADOTable1.Fields[3].AsString;
   edit4.Text:=form4.ADOTable1.Fields[4].AsString;
   form3.Caption:='Müşderi redaktirlemek';
   bitbtn1.Caption:='Düzet';
 end;


 
end;

end.
