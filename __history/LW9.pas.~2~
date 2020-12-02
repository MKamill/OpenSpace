unit LW9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls,math, Vcl.Mask, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
 TDBForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    д: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Image5: TImage;
    Image7: TImage;
    Image10: TImage;
    Image8: TImage;
    Image15: TImage;
    constructor Create(Sender: TObject); overload;
    destructor Destroy(Sender: TObject); overload;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Image7Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image10Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADODataSet1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     nx,ny:integer;
  end;

var
  DBForm: TDBForm;

implementation
uses Open_space, video, text_editor, photo_view_, paint;

{$R *.dfm}

procedure TDBForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent:= GetDesktopWindow;
end;

procedure TDBForm.ADODataSet1AfterPost(DataSet: TDataSet);
begin
  ADODataSet1.Requery;
end;

procedure TDBForm.Button1Click(Sender: TObject);
begin
  Close;
end;

constructor TDBForm.Create(Sender: TObject);
begin
  ADOTable1.Open;
end;

destructor TDBForm.Destroy(Sender: TObject);
begin
  ADOTable1.Close;
end;

procedure TDBForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //tion := caFree;
end;

procedure TDBForm.FormCreate(Sender: TObject);
begin
  image4.left:=panel1.Width-170;
  image3.left:=panel1.Width-60;
  DBForm.Brush.Style := bsClear;
  DBForm.BorderStyle := bsNone;
  DBForm.TransparentColorValue := clBlue;
  DBForm.transparentcolor := true;
  DBForm.Color := clBlue;
end;

procedure TDBForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image4.left:=panel1.Width-170;
  image3.left:=panel1.Width-60;
  DBForm.width:=DBForm.width-10;
  DBForm.Height:=ceil(DBForm.width*0.6875);
  panel1.width:=panel1.width-10;
  panel1.Height:=ceil(panel1.width*0.5875);
end;

procedure TDBForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image4.left:=panel1.Width-170;
  image3.left:=panel1.Width-60;
  DBForm.width:=DBForm.width+10;
  DBForm.Height:=ceil(DBForm.width*0.6875);
  panel1.width:=panel1.width+10;
  panel1.Height:=ceil(panel1.width*0.5875);
end;

procedure TDBForm.Image10Click(Sender: TObject);
begin
  if (not Assigned(Form1)) then Form1:=TForm1.Create(Self);
  Form1.Show;
end;

procedure TDBForm.Image15Click(Sender: TObject);
begin
  if (not Assigned(paintform)) then paintform:=Tpaintform.Create(Self);
  paintform.Show;
end;

procedure TDBForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  nx:=x;ny:=y;
end;

procedure TDBForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if ssleft in shift then begin
    DBForm.Top:= DBForm.Top+y-ny;
    DBForm.Left:= DBForm.Left+x-nx;
  end;
end;

procedure TDBForm.Image3Click(Sender: TObject);
begin
  DBForm.close;
end;

procedure TDBForm.Image4Click(Sender: TObject);
begin
  DBForm.windowState:=wsminimized;
end;

procedure TDBForm.Image5Click(Sender: TObject);
begin
  if (not Assigned(video_form)) then video_form:=Tvideo_form.Create(Self);
  video_form.Show;
end;

procedure TDBForm.Image6Click(Sender: TObject);
begin
  Application.BringToFront;
end;

procedure TDBForm.Image7Click(Sender: TObject);
begin
  if (not Assigned(photo_view)) then photo_view:=Tphoto_view.Create(Self);
  photo_view.Show;
end;

procedure TDBForm.Image8Click(Sender: TObject);
begin
  DBForm.close;
end;

end.
