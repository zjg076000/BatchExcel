unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    FileOpenDialog1: TFileOpenDialog;
    Panel1: TPanel;
    Label1: TLabel;
    edtPath: TEdit;
    btnOpen: TSpeedButton;
    btnTest: TSpeedButton;
    btnInsertCol: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    RichEdit1: TRichEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    Panel7: TPanel;
    RichEdit2: TRichEdit;
    lbl_file: TLabel;
    Label4: TLabel;
    lbl_count: TLabel;
    procedure btnInsertColClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
  private
    // procedure searchfile(Astrs:TStrings;path:string);//注意,path后面要有'\';
    procedure searchfile(path: string); // 注意,path后面要有'\';
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses ComObj;
{$R *.dfm}

procedure TForm2.btnInsertColClick(Sender: TObject);
var

  ExcelApp, Sheet: Variant;
  i: integer;
begin

  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := False;
  // for I :=0 to richedit1.Lines.count-1  do
  for i := 0 to RichEdit1.Lines.Count - 1 do
  begin

    // 打开已存在的工作簿：
    ExcelApp.WorkBooks.Open(edtPath.text + RichEdit1.Lines[i]);

    lbl_file.Caption:=edtPath.text + RichEdit1.Lines[i];
    lbl_count.Caption:=inttostr(i+1);
    // showmessage(richedit1.Lines[i]);
    // 设置第一个工作表
    ExcelApp.WorkSheets[1].Activate;
    // Sheet:=  ExcelApp.WorkSheets[1];
    // 1.先删除一行再转格式为日期

  {   try
      ExcelApp.ActiveSheet.Columns[0].NumberFormat := 'yyyy-m-d;@';

    except
      continue;
    end;
               }




     var
    i_rec := ExcelApp.ActiveSheet.UsedRange.Rows.Count;
    ExcelApp.ActiveSheet.Rows[i_rec].Delete;


    ExcelApp.ActiveSheet.Columns[6].Insert;



    ExcelApp.DisplayAlerts := 0;
    ExcelApp.ActiveSheet.SaveAs(edtPath.text + RichEdit1.Lines[i]);
    // SHOWMESSAGE(edtPath.text +richedit1.Lines[i]);
    RichEdit2.Lines.Append(RichEdit1.Lines[i]);
    ExcelApp.WorkBooks.Close;



    // if i<1 then

    // ExcelApp.ActiveSheet.Cells[i+1,0].NumberFormat:='yyyy-m-d;@';

    // showmessage(inttostr(i));


    // ExcelApp.ActiveSheet.Range.NumberFormatLocal

    // 19) 删除一行或一列：

    // Sheet.UsedRange.Rows.Count
    // ExcelApp.ActiveWorkBook.Saved := True;

  end;
  ExcelApp.Quit;

  showmessage('转换成功');
  // ExcelApp.Disconnect;

end;

procedure TForm2.btnOpenClick(Sender: TObject);
var
  strlst: TStrings;
begin
  // strlst:=TStrings.create;
  searchfile(edtPath.text);

  // richedit1.Lines.AddStrings(strlst);

end;

// procedure  TForm2.searchfile(Astrs:TStrings;path:string);//注意,path后面要有'\';
procedure TForm2.searchfile(path: string); // 注意,path后面要有'\';
var // 取目录下的SQL文件到列表Astrs
  SearchRec: TSearchRec;
  found: integer;
  i_row: integer;
begin
  i_row := 0;
  RichEdit1.Lines.clear;
  RichEdit2.Lines.clear;
  lbl_file.Caption:='正在处理的文件.......';
  lbl_count.Caption:='0';
  found := FindFirst(path + '*.csv', faAnyFile, SearchRec);
  while found = 0 do
  begin
    if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') and
      (SearchRec.Attr <> faDirectory) then
    begin
      // ListBox1.Add(SearchRec.Name);
      // Astrs.Append(path+SearchRec.Name);

      i_row := i_row + 1;
      // ExcelApp.Quit;
      RichEdit1.Lines.Append(SearchRec.Name);
    end;
    found := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

procedure TForm2.btnTestClick(Sender: TObject);
var
  ExcelApp: Variant;
begin

  ExcelApp := CreateOleObject('Excel.Application');

  ExcelApp.Visible := False;

  // 打开已存在的工作簿：
  ExcelApp.WorkBooks.Open(edtPath.text + 'CES100.csv');
  // 设置第一个工作表
  ExcelApp.WorkSheets[1].Activate;
  // SHOWMESSAGE(edtPath.text + 'CES100.csv');
  // 或 ExcelApp.WorksSheets[ 'Sheet2' ].Activate;

  ExcelApp.ActiveSheet.Columns[6].Insert;
  var
  i := ExcelApp.ActiveSheet.UsedRange.Rows.Count;

  ExcelApp.ActiveSheet.Cells[i, 0].Value := formatdatetime('yyyy-m-d',
    strtodatetime(ExcelApp.ActiveSheet.Cells[i, 0].Value));

  showmessage(ExcelApp.ActiveSheet.Cells[i, 0].Value);
  // showmessage(inttostr(i));
  ExcelApp.ActiveSheet.Rows[i].Delete;


  // ExcelApp.ActiveSheet.Saved:= 1;
  // ExcelApp.DisplayAlerts:= 0;
  // ExcelApp.ActiveSheet.Close(SaveChanges:= 0);

  ExcelApp.ActiveSheet.SaveAs(edtPath.text + 'OK' + 'CES100.XLS', 39);

  // SHOWMESSAGE(edtPath.text +richedit1.Lines[i]);
  showmessage(edtPath.text + 'OK' + 'CES100.csv');
  // ExcelApp.

end;

end.
