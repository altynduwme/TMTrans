unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,dateutils,
  Vcl.Grids, Vcl.ValEdit, Data.Win.ADODB, Data.DB, comobj;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    ComboBox3: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    yk: TValueListEditor;
    Label12: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    BitBtn3: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOCommand1: TADOCommand;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
    red:boolean;
    defid:string;
implementation

{$R *.dfm}

uses Unit1, Unit4, Unit42, Unit6;

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

function makeid:string;
begin
  result:=chr(65+random(26))+inttostr(random(maxint));
end;

function getkurslar:string;
var ts:Tstringlist;
nm:string;   i:integer;
begin
nm:='kurs.mag';
ts:=Tstringlist.Create;
ts.LoadFromFile(nm);
result:='';
for i := 0 to 4 do
  result:=result+ts.Strings[i]+';';
freeandnil(ts);
end;

procedure getjem(var dol,man,yuan,dirhem,euro,rubl:real; var stg:string);
var res,st,muk:string;
  I,k,p: Integer;
begin
dol:=0; yuan:=0; man:=0; dirhem:=0; euro:=0; rubl:=0;
stg:='';
 k:=form2.yk.RowCount-1;
 for I := 1 to k do
    begin
      st:=form2.yk.Cells[0,i];
       p:=pos(' ',st);
         muk:=copy(st,1,p-1);
         delete(st,1,p);

      if st='$' then dol:=dol+strtofloat(muk);
      if st='manat' then man:=man+strtofloat(muk);
      if st='Ýuan' then yuan:=yuan+strtofloat(muk);
      if st='Dirhem' then dirhem:=dirhem+strtofloat(muk);
      if st='Ýewro' then euro:=euro+strtofloat(muk);
      if st='Rubl' then rubl:=rubl+strtofloat(muk);

    end;
if dol<>0 then stg:=floattostrf(dol,fffixed,8,2)+'$';
if man<>0 then stg:=stg+'; '+floattostrf(man,fffixed,8,2)+' m.';
if yuan<>0 then stg:=stg+'; '+floattostrf(yuan,fffixed,8,2)+' yuan';
if dirhem<>0 then stg:=stg+'; '+floattostrf(dirhem,fffixed,8,2)+' dirhem';
if euro<>0 then stg:=stg+'; '+floattostrf(euro,fffixed,8,2)+' euro';
if rubl<>0 then stg:=stg+'; '+floattostrf(rubl,fffixed,8,2)+' rub';
  if stg='' then stg:='0,00';
end;

function getmid:string;
var r:string;
k:integer;
begin
  r:=form2.Edit3.Text;
  k:=pos('[',r);
  delete(r,1,k);
  delete(r,length(r),1);
  result:=r;
end;

function getaid:string;
var r:string;
k:integer;
begin
  r:=form2.Edit5.Text;
  k:=pos('[',r);
  delete(r,1,k);
  delete(r,length(r),1);
  result:=r;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var muk,st,nm,a,stg:string;
cat:olevariant;
  I,k,p: Integer;
  dol,man,yuan,dirhem,euro,rubl:real;
begin
if edit3.Text='' then
 begin
   messagedlg('Müşderi görkezilmedik.',mterror,[mbok],1);
   exit;
 end;

if edit5.Text='' then
 begin
   messagedlg('Agentstwa görkezilmedik.',mterror,[mbok],1);
   exit;
 end;


if not directoryexists(extractfilepath(application.ExeName) +'Cyk') then
createdirectory(pchar(extractfilepath(application.ExeName) +'Cyk'),nil);
if not directoryexists(extractfilepath(application.ExeName) +'A') then
createdirectory(pchar(extractfilepath(application.ExeName) +'A'),nil);
if not directoryexists(extractfilepath(application.ExeName) +'B') then
createdirectory(pchar(extractfilepath(application.ExeName) +'B'),nil);

if not red then
  begin
    nm := extractfilepath(application.ExeName) +'A\'+ getmid+'.mdb';
   ADOConnection1.connectionstring :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm +
      ';Persist Security Info=False';
    if not fileexists(nm) then
  begin
    cat := createoleobject('ADOX.Catalog');
    cat.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm + ';');
    cat := NULL;
    ADOConnection1.LoginPrompt := false;
    ADOConnection1.Connected := true;


    a := 'CREATE TABLE ' + 'algy' +
      '([wagt] string,[amal] string,[moc] string,[mob] string,[bel] string,[fakt] string,[kurs] string,[ati1] string,[ati2] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;


    ADOConnection1.Connected := false;
  end;

   nm := extractfilepath(application.ExeName) +'B\'+ getaid+'.mdb';
   ADOConnection1.connectionstring :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm +
      ';Persist Security Info=False';
    if not fileexists(nm) then
  begin
    cat := createoleobject('ADOX.Catalog');
    cat.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm + ';');
    cat := NULL;
    ADOConnection1.LoginPrompt := false;
    ADOConnection1.Connected := true;


      a := 'CREATE TABLE ' + 'bergi' +
      '([wagt] string,[amal] string,[moc] string,[mob] string,[bel] string,[fakt] string,[kurs] string,[ati1] string,[ati2] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;


    ADOConnection1.Connected := false;
  end;

  end;
//------------------------------------------------------------------------------------------------
 nm := extractfilepath(application.ExeName) +'Cyk\'+ defid+'.mdb';
   ADOConnection1.connectionstring :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm +
      ';Persist Security Info=False';

  if not fileexists(nm) then
  begin
    cat := createoleobject('ADOX.Catalog');
    cat.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm + ';');
    cat := NULL;
    ADOConnection1.LoginPrompt := false;
    ADOConnection1.Connected := true;


    a := 'CREATE TABLE ' + 'cyk' +
      '([cyk] string,[cob] string,[bel] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;


    ADOConnection1.Connected := false;
  end;
  adoconnection1.Connected:=true;
   adotable1.Open;
   while adotable1.RecordCount>0 do adotable1.Delete;

   k:=yk.RowCount-1;
   for I := 1 to k do
       begin
         adotable1.Append;
         st:=yk.Cells[0,i];
         p:=pos(' ',st);
         muk:=copy(st,1,p-1);
         delete(st,1,p);
         adotable1.Fields[0].AsString:=muk;
         adotable1.Fields[1].AsString:=st;
         adotable1.Fields[2].AsString:=yk.Cells[1,i];
         adotable1.Post;
       end;
    adotable1.Close;
    adoconnection1.Connected:=false;
{  a := 'CREATE TABLE ' + 'Trans' +
      '([ID] string,[Haryt] string,[Mus] string,[Ag] string,[karta] string,[tg] string,[gowrum] string,[ys] string,[yns] string,'
      + '[cyk] string,[cob] string,[baha] string,[bob] string,[sas] string)';
}
edit1.Text:=duzet(edit1.Text);
edit7.Text:=duzet(edit7.Text);
with form1 do
begin
if not red then adotable1.Append else adotable1.Edit;
if not red then
adotable1.Fields[0].AsString:=defid;
adotable1.Fields[1].AsString:=form2.edit2.text;
adotable1.Fields[2].AsString:=form2.edit3.text;
adotable1.Fields[3].AsString:=form2.edit5.text;
adotable1.Fields[4].AsString:=form2.edit4.text;
adotable1.Fields[5].AsString:=form2.combobox1.Items[form2.combobox1.ItemIndex];
adotable1.Fields[6].AsString:=form2.edit1.text;
adotable1.Fields[7].AsString:=datetostr(datetimepicker1.Date);
if not checkbox1.Checked then
adotable1.Fields[8].AsString:=datetostr(datetimepicker2.Date) else
adotable1.Fields[8].AsString:='Ýüklenmedik';
getjem(dol,man,yuan,dirhem,euro,rubl,stg);
adotable1.Fields[9].AsString:=stg;
adotable1.Fields[10].AsString:=form2.Edit6.Text;
adotable1.Fields[11].AsString:=form2.edit7.text;
adotable1.Fields[12].AsString:=form2.combobox3.Items[form2.combobox3.ItemIndex];
if not red then
 begin
adotable1.Fields[13].AsString:=datetimetostr(now);
adotable1.Fields[14].AsString:=getkurslar;
 end;

  adotable1.Post;

  if not red then
  messagedlg('Täze sargyt döredildi!',mtinformation,[mbok],1) else
  messagedlg('Düzedişler girizildi',mtinformation,[mbok],1);
  form2.Close;
end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var r:integer;
begin
r:=yk.Row;
if r>0 then
if messagedlg('Siz hakykatdan hem bu çykdajy setirini bozmakçymy?',mtconfirmation,mbyesno,1)=mryes then
yk.DeleteRow(r);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form42.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form6.Show;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
var s:boolean;
begin
s:=checkbox1.Checked;
datetimepicker2.Enabled:=not s;
end;

procedure TForm2.FormShow(Sender: TObject);
var
  I,k: Integer;
  nm:string;
begin
yk.Strings.Clear;
if not red then
  begin
    edit1.Text:='20';
    edit2.Text:='';
    edit3.Text:='';
    edit4.Text:='';
    edit5.Text:='';
    edit6.Text:='';
    edit7.Text:='0';
    combobox3.ItemIndex:=1;
    combobox1.ItemIndex:=0;
    checkbox1.Checked:=true;
    CheckBox1Click(nil);
    datetimepicker1.Date:=today;
    datetimepicker2.Date:=today+7;
    form2.Caption:='Täze sargyt döretmek';
    bitbtn1.Caption:='Döret';
    defid:=makeid;
    edit6.SetFocus;
  end else
  begin
  defid:= form1.adotable1.Fields[0].AsString;
  form2.Caption:='Sargyt redaktor #'+defid;
    bitbtn1.Caption:='Düzet';


edit1.Text:=form1.adotable1.Fields[6].AsString;
edit2.Text:=form1.adotable1.Fields[1].AsString;
edit3.Text:=form1.adotable1.Fields[2].AsString;
edit4.Text:=form1.adotable1.Fields[4].AsString;
edit5.Text:=form1.adotable1.Fields[3].AsString;
edit6.Text:=form1.adotable1.Fields[10].AsString;
edit7.Text:=form1.adotable1.Fields[11].AsString;
combobox1.ItemIndex:=combobox1.Items.IndexOf(form1.ADOTable1.Fields[5].AsString);
combobox3.ItemIndex:=combobox3.Items.IndexOf(form1.ADOTable1.Fields[12].AsString);
datetimepicker1.Date:=strtodate(form1.ADOTable1.Fields[7].AsString);
if form1.ADOTable1.Fields[8].AsString='Ýüklenmedik' then checkbox1.Checked:=true else
begin
checkbox1.Checked:=false;
datetimepicker2.Date:=strtodate(form1.ADOTable1.Fields[8].AsString);
end;
  CheckBox1Click(nil);


  nm := extractfilepath(application.ExeName) +'Cyk\'+ defid+'.mdb';
   ADOConnection1.connectionstring :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + nm +
      ';Persist Security Info=False';
  adotable1.Open;
  k:=adotable1.RecordCount;
  adotable1.First;
  for I := 1 to k do
   begin
     yk.InsertRow(adotable1.Fields[0].asstring+' '+adotable1.Fields[1].asstring,
     adotable1.Fields[2].asstring,true);
     adotable1.Next;
   end;
  adotable1.Close;
  end;
end;

end.
