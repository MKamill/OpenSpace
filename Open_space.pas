unit Open_space;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, mmsystem, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Menus, Vcl.MPlayer, Vcl.Imaging.GIFImg;

type
  TForm2 = class(TForm)
    main_image: TImage;
    Image14: TImage;
    Image7: TImage;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N1: TMenuItem;
    N41: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
    MediaPlayer2: TMediaPlayer;
    Timer2: TTimer;
    Timer3: TTimer;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure main_imageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure main_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure main_imageClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nx,ny:integer;
  end;

var
  Form2: TForm2;

implementation

uses text_editor,photo_view_,video, LW9, paint, about, gifimage;

{$R *.dfm}

procedure CheckFocus;
begin
  while True do
  begin
    if ((video_form.Focused)or(photo_view.focused)) then
    begin
       ShowMessage('focused');
    end
    else sleep(1000);
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  Comp : TComponent;
begin
  (image8.Picture.Graphic as TGIFImage).Animate := True;
  (image9.Picture.Graphic as TGIFImage).Animate := True;
  n6.Checked:=true;
  MediaPlayer1.FileName:='C:\Users\79876\Desktop\OpenSpace\Sounds\ss.wav';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
  Form2.Brush.Style := bsClear;
  Form2.BorderStyle := bsNone;
  Form2.TransparentColorValue := clgray;
  Form2.transparentcolor := true;
  Form2.Color := clgray;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var lowerLeft: TPoint;
begin
  if key=83 then
  begin
    mediaplayer1.Stop;
    n7.Checked:=true;
    n6.Checked:=false;
  end;
  if key=80 then
  begin
    mediaplayer1.play;
    n6.Checked:=true;
    n7.Checked:=false;
  end;
  if key=77 then
  begin
    lowerLeft := Point(Image7.Left+Image7.Width+20,Image7.Top);
    lowerLeft := ClientToScreen(lowerLeft);
    PopupMenu1.Popup(lowerLeft.X, lowerLeft.Y);
  end;
  if key=69 then
  begin
    application.Terminate;
  end;
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #77 then Key := #0;
end;

procedure TForm2.Image14Click(Sender: TObject);
var buttonSelected: integer;
begin
  if paintform.Showing or form1.Showing then
  begin
    buttonSelected := MessageDlg('�� ������� � ���, ��� ������ ����� �� ���������� Office?'+#10+'� ��� ������ ����������� ��� ��������� ��������, ��������� �� ����������!',mtWarning , mbOKCancel, 0);
    if buttonSelected = mrOK     then
      begin
        application.Terminate;
      end;
    if buttonSelected = mrCancel then
      begin
        //to do
      end;
  end
  else application.Terminate;

end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  video_form.Show;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
  photo_view.Show;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
  DBForm.Show;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
  PaintForm.Show;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
  aboutform.ShowModal;
end;

procedure TForm2.Image7Click(Sender: TObject);
var lowerLeft: TPoint;
begin
  lowerLeft := Point(Image7.Left+Image7.Width+20,Image7.Top);
  lowerLeft := ClientToScreen(lowerLeft);
  PopupMenu1.Popup(lowerLeft.X, lowerLeft.Y);
end;

procedure TForm2.main_imageClick(Sender: TObject);
begin
  SetForegroundWindow(FindWindow('TForm2','���������'));
end;

procedure TForm2.main_imageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  nx:=x;ny:=y;
end;

procedure TForm2.main_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssleft in shift then begin
    Form2.Top:= Form2.Top+y-ny;
    Form2.Left:= Form2.Left+x-nx;
  end;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
  Aboutform.ShowModal;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
  MediaPlayer1.Play;
  n6.Checked:=true;
  n7.Checked:=false;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
  MediaPlayer1.stop;
  n7.Checked:=true;
  n6.Checked:=false;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  with Photo_view do
      begin
        if photo_view.active or video_form.Active then
        begin
          MediaPlayer1.stop;
        end
        else
        begin
          if form2.N6.Checked then MediaPlayer1.play;
        end;
      end;
end;

end.
