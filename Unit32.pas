unit Unit32;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm32 = class(TForm)
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
  Form32: TForm32;
  reda:boolean;
implementation

{$R *.dfm}

uses Unit42;

function makeid:string;
begin
  result:=chr(65+random(26))+inttostr(random(maxint));
end;

procedure TForm32.BitBtn1Click(Sender: TObject);
begin
 if not form42.Showing then form42.ADOTable1.Open;
if not reda then form42.ADOTable1.Append else form42.ADOTable1.Edit;
if not reda then form42.ADOTable1.Fields[0].AsString:=makeid;
form42.ADOTable1.Fields[1].AsString:=edit2.Text;
form42.ADOTable1.Fields[2].AsString:=edit1.Text;
form42.ADOTable1.Fields[3].AsString:=edit3.Text;
form42.ADOTable1.Fields[4].AsString:=edit4.Text;
form42.ADOTable1.Post;
 if not form42.Showing then form42.ADOTable1.close;
if not reda then
  messagedlg('Täze agentstwa goşuldy!',mtinformation,[mbok],1) else
  messagedlg('Düzedişler girizildi',mtinformation,[mbok],1);
  form32.Close;
end;

procedure TForm32.FormShow(Sender: TObject);
begin
if not reda then
 begin
   edit1.Text:='';
   edit2.Text:='';
   edit3.Text:='';
   edit4.Text:='';
   form32.Caption:='Täze agentstwa goşmak';
   bitbtn1.Caption:='Goşmak';
 end else
 begin
   edit2.Text:=form42.ADOTable1.Fields[1].AsString;
   edit1.Text:=form42.ADOTable1.Fields[2].AsString;
   edit3.Text:=form42.ADOTable1.Fields[3].AsString;
   edit4.Text:=form42.ADOTable1.Fields[4].AsString;
   form32.Caption:='Agentstwa redaktirlemek';
   bitbtn1.Caption:='Düzet';
 end;


 
end;

end.
