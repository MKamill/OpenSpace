unit photo_view_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,JPEG, math, MMSystem, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.pngimage, Vcl.MPlayer;

type
  TPhoto_view = class(TForm)
    main_ph_image: TImage;
    main_ph_panel: TPanel;
    view: TImage;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    play: TButton;
    path: TEdit;
    history: TMemo;
    timer: TTimer;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    Image2: TImage;
    Image6: TImage;
    Image5: TImage;
    Image10: TImage;
    Image3: TImage;
    Image4: TImage;
    Image15: TImage;
    mp1: TMediaPlayer;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    procedure openImage;
    procedure ListFileDir(Path: string; Memo: TMemo);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure playClick(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image5Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure main_ph_imageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure main_ph_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    nx,ny:integer;
    indexImage: integer;
  end;

var
  Photo_view: TPhoto_view;

implementation
uses Open_space, video, text_editor,LW9, paint;
{$R *.dfm}

procedure TPhoto_view.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent:= GetDesktopWindow;
end;

procedure TPhoto_view.ListFileDir(Path: string; memo: TMemo);
 var
   SR: TSearchRec;
begin
  if FindFirst(Path + '\*.*', faAnyFile, SR) = 0 then
    begin
      repeat
        if (SR.Attr <> faDirectory) then
          begin
            history.Lines.Add(Path+'\'+SR.Name);
          end;
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
end;

procedure TPhoto_view.main_ph_imageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  nx:=x;ny:=y;
end;

procedure TPhoto_view.main_ph_imageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then begin
    Photo_view.Top:= Photo_view.Top+y-ny;
    Photo_view.Left:= Photo_view.Left+x-nx;
  end;
end;

procedure TPhoto_view.openImage;
begin
  Photo_view.path.Text:='Изображение: "'+Photo_view.history.Lines[Photo_view.indexImage]+'"';
  Photo_view.view.Picture.LoadFromFile(Photo_view.history.Lines[Photo_view.indexImage]);
end;

procedure TPhoto_view.Button1Click(Sender: TObject);
begin
  if indexImage >0 then
    begin
      indexImage:=indexImage-1;
      Photo_view.openImage;
    end;
end;

procedure TPhoto_view.Button2Click(Sender: TObject);
begin
  if indexImage < history.Lines.Count-1 then
    begin
      indexImage:=indexImage+1;
      Photo_view.openImage;
    end;
end;

procedure TPhoto_view.Button3Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  if OpenPictureDialog1.FileName<>'' then
    begin
      path.Text:='Изображение: "'+OpenPictureDialog1.FileName+'"';
      view.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      history.Lines.Add(OpenPictureDialog1.FileName);
      indexImage:=history.Lines.Count-1;
    end
    else
    begin
      path.Text:='Изображение не выбрано'
    end;
end;

procedure TPhoto_view.Button4Click(Sender: TObject);
begin
  mp1.Stop;
end;

procedure TPhoto_view.Button5Click(Sender: TObject);
begin
  mp1.Play;
end;

procedure TPhoto_view.playClick(Sender: TObject);
var l:integer;
begin
  if timer.Enabled then
    begin
      timer.Enabled:=false;
      play.Caption:='Слайдшоу >';
      mp1.stop;
    end
    else
    begin
      timer.Enabled:=true;
      play.Caption:='Слайдшоу ||';
      mp1.play;
    end;
end;

procedure TPhoto_view.Timer1Timer(Sender: TObject);
begin
  if play.Caption='Слайдшоу ||' then
  begin
    button4.Enabled:=true;
    button5.Enabled:=true;
  end
  else if play.Caption='Слайдшоу >' then
       begin
         button4.Enabled:=false;
         button5.Enabled:=false;
       end;
end;

procedure TPhoto_view.timerTimer(Sender: TObject);
begin
  if indexImage < history.Lines.Count then
    begin
      Photo_view.openImage;
      indexImage:=indexImage+1;
    end
    else
    begin
      indexImage:=0;
    end;
end;

procedure TPhoto_view.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  timer.Enabled:=false;
  play.Caption:='Слайдшоу >';
  mp1.Stop;
  Form2.MediaPlayer1.Play;
end;

procedure TPhoto_view.FormCreate(Sender: TObject);
begin
  mp1.FileName:='C:\Users\79876\Desktop\os\Sounds\birds2.wav';
  mp1.open;
  image2.left:=main_ph_panel.Width-160;
  image1.left:=main_ph_panel.Width-50;
  Photo_view.Brush.Style := bsClear;
  Photo_view.BorderStyle := bsNone;
  Photo_view.TransparentColorValue := clblue;
  Photo_view.transparentcolor := true;
  Photo_view.Color := clblue;
  indexImage:=0;
  ListFileDir('C:\Users\79876\Desktop\OpenOfficeProgram\Gallery',history)
end;

procedure TPhoto_view.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image2.left:=main_ph_panel.Width-160;
  image1.left:=main_ph_panel.Width-50;
  photo_view.width:=photo_view.width-10;
  photo_view.Height:=ceil(photo_view.width*0.6875);
  main_ph_panel.width:=main_ph_panel.width-10;
  main_ph_panel.Height:=ceil(main_ph_panel.width*0.5875);
end;

procedure TPhoto_view.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image2.left:=main_ph_panel.Width-160;
  image1.left:=main_ph_panel.Width-50;
  photo_view.width:=photo_view.width+10;
  photo_view.Height:=ceil(photo_view.width*0.6875);
  main_ph_panel.width:=main_ph_panel.width+10;
  main_ph_panel.Height:=ceil(main_ph_panel.width*0.5875);
end;

procedure TPhoto_view.Image10Click(Sender: TObject);
begin
  if (not Assigned(Form1)) then Form1:=TForm1.Create(Self);
  Form1.Show;
end;

procedure TPhoto_view.Image15Click(Sender: TObject);
begin
  if (not Assigned(paintform)) then paintform:=Tpaintform.Create(Self);
  paintform.Show;
end;

procedure TPhoto_view.Image1Click(Sender: TObject);
begin
  photo_view.Close;
end;

procedure TPhoto_view.Image2Click(Sender: TObject);
begin
  photo_view.WindowState:=wsMinimized;
end;

procedure TPhoto_view.Image3Click(Sender: TObject);
begin
  if (not Assigned(dbform)) then   // проверка существования Формы (если нет, то
       dbform:=Tdbform.Create(Self);    // создание Формы)
  dbform.Show;
end;

procedure TPhoto_view.Image4Click(Sender: TObject);
begin
  Photo_view.Close;
end;

procedure TPhoto_view.Image5Click(Sender: TObject);
begin
  if (not Assigned(video_form)) then   // проверка существования Формы (если нет, то
       video_form:=Tvideo_form.Create(Self);    // создание Формы)
  video_form.Show;
end;

procedure TPhoto_view.Image6Click(Sender: TObject);
begin
  Form2.SetFocus;
end;

end.
