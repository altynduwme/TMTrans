unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids,comobj, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, dateutils;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Sarygytlar1: TMenuItem;
    zesargytdret1: TMenuItem;
    Sargytredaktor1: TMenuItem;
    Agenstwalar1: TMenuItem;
    zeagentstwa1: TMenuItem;
    Agentstwaredaktor1: TMenuItem;
    Mderiler1: TMenuItem;
    zemderi1: TMenuItem;
    Mderiredaktor1: TMenuItem;
    Algydepderesi1: TMenuItem;
    Bergidepderesi1: TMenuItem;
    zebergidar1: TMenuItem;
    Bergidarredaktor1: TMenuItem;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOCommand1: TADOCommand;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label9: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Dzet1: TMenuItem;
    Arhiwegeir1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Sazlamalar1: TMenuItem;
    Kurslar1: TMenuItem;
    Bizbarada1: TMenuItem;
    Bizbarada2: TMenuItem;
    procedure zesargytdret1Click(Sender: TObject);
    procedure Sargytredaktor1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Dzet1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Mderiredaktor1Click(Sender: TObject);
    procedure zemderi1Click(Sender: TObject);
    procedure zeagentstwa1Click(Sender: TObject);
    procedure Agentstwaredaktor1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Kurslar1Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit3, Unit42, Unit32, Unit5;

procedure TForm1.Agentstwaredaktor1Click(Sender: TObject);
begin
form42.show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var suf:string;
begin
  ADOTable1.Filtered := false;
     suf:='ys';
     adotable1.Filter:= '('+suf+' LIKE ''%' + datetostr(datetimepicker1.Date) + '%'')';
     adotable1.Filtered:=true;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var suf:string;
begin
  ADOTable1.Filtered := false;
     suf:='ys';
     adotable1.Filter:= '('+suf+' LIKE ''%' + datetostr(datetimepicker2.Date) + '%'')';
     adotable1.Filtered:=true;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
adotable1.Filtered:=false;
 edit1.Text:='';edit2.Text:='';edit3.Text:='';edit4.Text:=''; edit5.Text:='';
 checkbox1.Checked:=false;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var suf:string;
begin
  ADOTable1.Filtered := false;
  if checkbox1.Checked then
   begin
     suf:='yns';
     adotable1.Filter:= '('+suf+' LIKE ''%' + 'ýüklenmedik' + '%'')';
     adotable1.Filtered:=true;
   end;
end;

procedure TForm1.ComboBox1CloseUp(Sender: TObject);
var suf:string;
begin
  ADOTable1.Filtered := false;
     suf:='tg';
     adotable1.Filter:= '('+suf+' LIKE ''%' + combobox1.Items[combobox1.ItemIndex] + '%'')';
     adotable1.Filtered:=true;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
red:=true;
form2.Show;
end;

procedure TForm1.Dzet1Click(Sender: TObject);
begin
  red:=true;
form2.Show;
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

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var t,t2,t3,filtr,suf:string;
begin
 ADOTable1.Filtered := false;
  suf:=(sender as Tedit).Hint;
  t := birinji2(trim((sender as Tedit).text));
  t2 := ikinji2(trim((sender as Tedit).text), t3);
  if t3 = '' then
  begin
    if (t <> '') and (t2 <> '') then
      filtr := '('+suf+' LIKE ''%' + t + '%'' AND '+suf+' LIKE ''%' + t2 + '%'')'
    else if t <> '' then
      filtr := '('+suf+' LIKE ''%' + t + '%'')';
  end
  else
  begin
    if (t <> '') and (t2 <> '') then
      filtr := '('+suf+' LIKE ''%' + t + '%'' AND '+suf+' LIKE ''%' + t2 +
        '%'' AND '+suf+' LIKE ''%' + t3 + '%'')'
    else if t <> '' then
      filtr := '('+suf+' LIKE ''%' + t + '%'' AND '+suf+' LIKE ''%' + t3 + '%'')';
  end;

  ADOTable1.Filter := filtr;
      ADOTable1.Filtered := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
var nm,a:string;
cat:olevariant;
begin
 nm := extractfilepath(application.ExeName) + 'BazaT.mdb';
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
    a := 'CREATE TABLE ' + 'Trans' +
      '([ID] string,[Haryt] string,[Mus] string,[Ag] string,[karta] string,[tg] string,[gowrum] string,[ys] string,[yns] string,'
      + '[cyk] string,[cob] string,[baha] string,[bob] string,[sas] string,[kurslar] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;

    a := 'CREATE TABLE ' + 'Mush' +
      '([ID] string,[mus] string,[tel] string,[salgy] string,[bellik] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;

     a := 'CREATE TABLE ' + 'ag' +
      '([ID] string,[agent] string,[tel] string,[salgy] string,[bellik] string)';
    ADOCommand1.CommandText := a;
    ADOCommand1.execute;


    ADOConnection1.Connected := false;
  end;
   adotable1.Open;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=today;
datetimepicker2.Date:=today;
end;

procedure TForm1.Kurslar1Click(Sender: TObject);
begin
form5.Show;
end;

procedure TForm1.Mderiredaktor1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.Sargytredaktor1Click(Sender: TObject);
begin
red:=true;
form2.Show;
end;

procedure TForm1.zeagentstwa1Click(Sender: TObject);
begin
form32.show;
end;

procedure TForm1.zemderi1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.zesargytdret1Click(Sender: TObject);
begin
red:=false;
form2.Show;
end;

end.
