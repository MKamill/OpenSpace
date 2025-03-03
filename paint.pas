﻿unit paint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ColorGrd,math, ComCtrls,PNGImage, Jpeg, ClipBrd, StdCtrls, Buttons, ExtCtrls, Menus, ExtDlgs,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.StdActns;

type
  TPaintForm = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn7: TSpeedButton;
    btn8: TSpeedButton;
    lbl1: TLabel;
    btn6: TSpeedButton;
    edt1: TEdit;
    ud1: TUpDown;
    rb1: TRadioButton;
    rb2: TRadioButton;
    stat1: TStatusBar;
    scrlbx1: TScrollBox;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    dlgOPic1: TOpenPictureDialog;
    dlg1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenPictureDialog2: TOpenPictureDialog;
    OpenPictureDialog3: TOpenPictureDialog;
    Image1: TImage;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    PopupMenu2: TPopupMenu;
    N19: TMenuItem;
    N20: TMenuItem;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    N21: TMenuItem;
    BMPJPG1: TMenuItem;
    BMPPNG1: TMenuItem;
    PNGBMP1: TMenuItem;
    PNGJPG1: TMenuItem;
    PNGJPG2: TMenuItem;
    JPGBMP2: TMenuItem;
    pnl2: TPanel;
    bvl1: TBevel;
    pnl4: TPanel;
    clrgrd1: TColorGrid;
    Panel3: TPanel;
    N1: TMenuItem;
    ColorDialog1: TColorDialog;
    L2: TMenuItem;
    Image4: TImage;
    Image11: TImage;
    Image10: TImage;
    Image12: TImage;
    Image13: TImage;
    Image5: TImage;
    Image2: TImage;
    Image3: TImage;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ImageList12: TImageList;
    ActionList1: TActionList;
    EditUndo1: TEditUndo;
    UpDown1: TUpDown;
    ActionList2: TActionList;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edt1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure clrgrd1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edt1Change(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure clrgrd1Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure jpg1Click(Sender: TObject);
    procedure bmptopng1Click(Sender: TObject);
    procedure pngtobmp1Click(Sender: TObject);
    procedure PNGtoJPG1Click(Sender: TObject);
    procedure JPGPNG1Click(Sender: TObject);
    procedure JPGBMP1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure clrgrd1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nx,ny:integer;
    x1,y1,x2,y2, fat: integer;
    mb: char;
    flag,front: integer;
    fname: string;
    backp,nextp,fopen,fsave: boolean;
  end;                                                                                                                                                                                                                                                                                                                                              var PaintForm: TPaintForm; fsave: boolean;

implementation

uses SUFPaint,Open_space, TUFPaint,text_editor,photo_view_,video, LW9;

{$R *.dfm}

procedure TPaintForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent:= GetDesktopWindow;
end;

procedure TPaintForm.FormCreate(Sender: TObject);
begin
  image2.left:=panel1.Width-160;
  image3.left:=panel1.Width-50;
  fsave := true;
  img1.Canvas.FillRect(img1.Canvas.ClipRect);
  img2.Canvas.FillRect(img2.Canvas.ClipRect);
  img3.Canvas.FillRect(img3.Canvas.ClipRect);
  pnl4.Color := clrgrd1.ForegroundColor;
  panel3.color := clrgrd1.BackgroundColor;
  PaintForm.Img1.height := 500;
  PaintForm.Img1.width := 750;
  PaintForm.Brush.Style := bsClear;
  PaintForm.BorderStyle := bsNone;
  PaintForm.TransparentColorValue :=clMoneyGreen ;
  PaintForm.transparentcolor := true;
  PaintForm.Color := clMoneyGreen ;
end;

procedure TPaintForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=68 then
    begin
      if backp = true then
        begin
          img3.picture.Assign(img1.Picture);
          img1.picture.Assign(img2.Picture);
          nextp := true;
        end;
        backp := false;
    end;
end;

procedure TPaintForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image2.left:=panel1.Width-160;
  image3.left:=panel1.Width-50;
  PaintForm.width:=PaintForm.width-10;
  PaintForm.Height:=ceil(PaintForm.width*0.6875);
  panel1.width:=PaintForm.width-140;
  panel1.Height:=ceil(PaintForm.width*0.5175);
end;

procedure TPaintForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  image2.left:=panel1.Width-160;
  image3.left:=panel1.Width-50;
  PaintForm.width:=PaintForm.width+10;
  PaintForm.Height:=ceil(PaintForm.width*0.6875);
  panel1.width:=PaintForm.width-140;
  panel1.Height:=ceil(PaintForm.width*0.5275);
end;

procedure TPaintForm.Image10Click(Sender: TObject);
begin
  if (not Assigned(Form1)) then Form1:=TForm1.Create(Self);
  Form1.Show;
end;

procedure TPaintForm.Image11Click(Sender: TObject);
begin
  Application.BringToFront;
end;

procedure TPaintForm.Image12Click(Sender: TObject);
begin
  if (not Assigned(photo_view)) then photo_view:=Tphoto_view.Create(Self);
  photo_view.Show;
end;

procedure TPaintForm.Image13Click(Sender: TObject);
begin
  if (not Assigned(dbform)) then dbform:=Tdbform.Create(Self);
  dbform.Show;
end;

procedure TPaintForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  nx:=x;ny:=y;
end;

procedure TPaintForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssleft in shift then begin
    PaintForm.Top:= PaintForm.Top+y-ny;
    PaintForm.Left:= PaintForm.Left+x-nx;
  end;
end;

procedure TPaintForm.Image2Click(Sender: TObject);
begin
  PaintForm.WindowState:=wsMinimized;
end;

procedure TPaintForm.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if btn2.Down then
    begin
      if button = mbRight then
        Img1.Canvas.brush.color := pnl4.Color
        //Img1.Canvas.brush.color := clrgrd1.BackgroundColor
      else
        Img1.Canvas.brush.color := panel3.Color;
        //Img1.Canvas.brush.color :=clrgrd1.BackgroundColor;
        Img1.Canvas.FloodFill(x, y,Img1.Canvas.Pixels[x,y], fssurface);
    end;
  if btn3.Down then
    begin
      if button = mbRight then
        panel3.Color := Img2.Canvas.pixels[x,y]
      else
        pnl4.color := Img2.Canvas.pixels[x,y];
    end;
end;

procedure TPaintForm.Image3Click(Sender: TObject);
var buttonSelected: integer;
begin
  buttonSelected := MessageDlg('Вы уверены в том, что хотите выйти из приложения MyPaint?'+#10+'Изменения не будут сохранены!',mtWarning , mbOKCancel, 0);
  if buttonSelected = mrOK     then
  begin
    img1.Picture := nil;
    img1.Canvas.FillRect(img1.Canvas.ClipRect);
    img2.Picture := nil;
    img2.Canvas.FillRect(img2.Canvas.ClipRect);
    img3.Picture := nil;
    img3.Canvas.FillRect(img3.Canvas.ClipRect);
    backp := false;
    nextp := false;
    PaintForm.Close;
  end;
  if buttonSelected = mrCancel then
  begin
    //to do
  end;
end;

procedure TPaintForm.Image4Click(Sender: TObject);
begin
  form2.visible:=false;
  if fsave <> true then
                   begin
                     TUFPaintForm.ShowModal;
                   end;
  if fsave = true then
                  begin
                    PaintForm.Close;
                    form2.visible:=true;
                    form2.SetFocus;
                  end;
end;

procedure TPaintForm.Image5Click(Sender: TObject);
begin
  if (not Assigned(video_form)) then video_form:=Tvideo_form.Create(Self);
  video_form.Show;
end;

procedure TPaintForm.Action1Execute(Sender: TObject);
begin
  if backp = true then
  begin
    img3.picture.Assign(img1.Picture);
    img1.picture.Assign(img2.Picture);
    nextp := true;
  end;
  backp := false;
end;

procedure TPaintForm.bmptopng1Click(Sender: TObject);
var
 png: TPNGObject;
 Bitmap: TBitmap;
 today: TDateTime;
 time,name: string;
begin
  form2.visible:=false;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',
                          [rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog2.Execute then
    begin
      name:=OpenPictureDialog2.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  Bitmap := TBitmap.Create;
  if name<>'' then
              begin
                try
                  Bitmap.LoadfromFile(name+'.bmp');
                  png := TPNGObject.create;
                  try
                    png.assign(Bitmap);
                    png.SavetoFile(name+time+'.png'); //сохраняем png
                    ShowMessage('Конвертация прошла успешно!');
                  finally
                    png.free
                  end;
                finally
                  Bitmap.free
                end;
              end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.btn1Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := false;
  rb2.Visible := false;
  img1.Canvas.Brush.Color:=clwhite;
end;

procedure TPaintForm.btn2Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := false;
  rb2.Visible := false;
end;

procedure TPaintForm.btn3Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := false;
  rb2.Visible := false;
end;

procedure TPaintForm.btn4Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := false;
  rb2.Visible := false;
end;

procedure TPaintForm.btn5Click(Sender: TObject);
begin
  img1.Canvas.Pen.Width := 1;
  lbl1.Visible := false;
  edt1.Visible := false;
  rb1.Visible := false;
  rb2.Visible := false;
end;

procedure TPaintForm.btn6Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := false;
  rb2.Visible := false;
end;

procedure TPaintForm.btn7Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := true;
  rb2.Visible := true;
end;

procedure TPaintForm.btn8Click(Sender: TObject);
begin
  lbl1.Visible := true;
  edt1.Visible := true;
  ud1.Visible := true;
  rb1.Visible := true;
  rb2.Visible := true;
end;

procedure TPaintForm.btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Стирание части рисунка с помощью '+
                           'ластика выбраного цвета';
end;

procedure TPaintForm.btn2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Заполнение области одним из текущих цветов';
end;

procedure TPaintForm.btn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].text := 'Выбор цветов из имеющихся на рисунке';
end;

procedure TPaintForm.btn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.panels[0].text := 'Проведение прямой линии выбраной толщины';
end;

procedure TPaintForm.btn5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Проведение произвольной линии толщиной в одну точку';
end;

procedure TPaintForm.btn6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.panels[0].text := 'Рисование кистью выброной толщины';
end;

procedure TPaintForm.btn7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Рисование эллипса';
end;

procedure TPaintForm.btn8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].text := 'Рисование прямоугольника';
end;

procedure TPaintForm.Button1Click(Sender: TObject);
var lowerLeft: TPoint;
begin
  lowerLeft := Point(Panel1.Left+3+Button4.Width+Button3.Width++Button2.Width, Panel1.Top+36);
  lowerLeft := ClientToScreen(lowerLeft);
  PopupMenu4.Popup(lowerLeft.X, lowerLeft.Y);
end;

procedure TPaintForm.Button2Click(Sender: TObject);
var lowerLeft: TPoint;
begin
  lowerLeft := Point(Panel1.Left+3+Button4.Width+Button3.Width, Panel1.Top+36);
  lowerLeft := ClientToScreen(lowerLeft);
  PopupMenu3.Popup(lowerLeft.X, lowerLeft.Y);
end;

procedure TPaintForm.Button3Click(Sender: TObject);
var lowerLeft: TPoint;
begin
  lowerLeft := Point(Panel1.Left+3+Button4.Width, Panel1.Top+36);
  lowerLeft := ClientToScreen(lowerLeft);
  PopupMenu2.Popup(lowerLeft.X, lowerLeft.Y);
end;

procedure TPaintForm.Button4Click(Sender: TObject);
var lowerLeft: TPoint;
begin
  lowerLeft := Point(Panel1.Left+3, Panel1.Top+36);
  lowerLeft := ClientToScreen(lowerLeft);
  PopupMenu1.Popup(lowerLeft.X, lowerLeft.Y);
end;

procedure TPaintForm.edt1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].text := 'Выбор толщины ';
end;

procedure TPaintForm.clrgrd1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Выбор цветов';
end;

procedure TPaintForm.pngtobmp1Click(Sender: TObject);
var
 png: TPNGObject;
 Bitmap: TBitmap;
 today: TDateTime;
 time,name: string;
begin
  form2.visible:=false;
  png := TPNGObject.create;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',
                          [rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog3.Execute then
    begin
      name:=OpenPictureDialog3.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  if name<>'' then
    begin
      try
        png.LoadfromFile(name+'.png');
        Bitmap := TBitmap.Create;
        try
          Bitmap.assign(png);
          Bitmap.SavetoFile(name+time+'.bmp'); //сохраняем png
          ShowMessage('Конвертация прошла успешно!');
        finally
          Bitmap.free
        end;
      finally
        png.free
      end;
    end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.PNGtoJPG1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  PNG: TPNGObject;
  Jpg: TJpegImage;
  today: TdateTime;
  name,time: string;
begin
  form2.visible:=false;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',[rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog3.Execute then
    begin
      name:=OpenPictureDialog3.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  PNG := TPNGObject.Create;
  Bitmap := TBitmap.Create;
  if name<>'' then
  begin
    try
      PNG.LoadFromFile(name+'.png');
      Bitmap.Assign(PNG);
      Jpg := TJpegImage.Create;
      Jpg.CompressionQuality:=100;
      Jpg.Assign(Bitmap);
      Jpg.SaveToFile(name+time+'.jpg');
      ShowMessage('Конвертация прошла успешно!');
    finally
      jpg.free;
      PNG.Free;
      Bitmap.Free;
    end;
  end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Цвет правой кнопки мыши';
end;

procedure TPaintForm.pnl4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  stat1.Panels[0].Text := 'Цвет левой кнопки мыши';
end;

procedure TPaintForm.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  stat1.Panels[0].Text := 'Рисование цилиндра';
end;

procedure TPaintForm.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  stat1.Panels[0].Text := 'Рисование параллелепипеда';
end;

procedure TPaintForm.SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  stat1.Panels[0].Text := 'Рисование наклонной пирамиды';
end;

procedure TPaintForm.SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  stat1.Panels[0].Text := 'Очистить лист';
end;

procedure TPaintForm.Timer1Timer(Sender: TObject);
begin
  if SUFPaintForm.Active then
  begin
    SUFPaintForm.SetFocus;
  end
  else
  begin
    form2.Visible:=true;
    PaintForm.Setfocus;
    timer1.Enabled:=false;
  end
end;

procedure TPaintForm.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var l:integer;
begin
  stat1.Panels[0].Text := 'Область для рисования';
  stat1.Panels[1].text := 'x:'+inttostr(x)+ ' y:'+inttostr(y);
  if ((ssRight in Shift) or (ssLeft in Shift)) then
    begin
      fsave := false;
      backp := true;
      nextp := false;
      if btn1.Down then
        begin
          //Цвет ластика:
          //img1.Canvas.Pen.color:=panel3.Color;
          img1.Canvas.Pen.color:=clwhite;
          img1.Canvas.pen.Width:=strtoint((edt1.text));
          Img1.Canvas.lineto(x,y);
        end;
      if btn5.down then
        begin
          if mb = 'l' then
            img1.Canvas.Pen.Color := pnl4.Color
          else
            img1.Canvas.Pen.Color := panel3.Color;
            img1.Canvas.LineTo(x,y);
        end;
      if btn6.Down then
        begin
          img1.canvas.Pen.Width := strtoint(edt1.Text);
          if mb = 'l' then
           img1.Canvas.Pen.Color := pnl4.Color
          else
           img1.Canvas.Pen.Color := panel3.Color;
          img1.canvas.lineto(x,y);
        end;
      if btn4.down then
        begin
          img1.picture.Assign(img2.picture);
          if mb = 'l' then
            Img1.Canvas.Pen.color := pnl4.Color
          else
            Img1.Canvas.Pen.color := panel3.Color;
            Img1.Canvas.Pen.width := strtoint(edt1.text);
            Img1.Canvas.moveto(x,y);
            Img1.Canvas.lineto(x1,y1);
        end;
      if speedbutton3.Down then
      begin
        begin
          img1.picture.Assign(img2.picture);
          if mb = 'l' then
            Img1.Canvas.Pen.color := pnl4.Color
          else
            Img1.Canvas.Pen.color := panel3.Color;
            Img1.Canvas.Pen.width := strtoint(edt1.text);
            Img1.Canvas.moveto(x,y);
            Img1.Canvas.lineto(x1,y1);
            Img1.Canvas.moveto(x+200,y-60);
            Img1.Canvas.lineto(x1+200,y1-60);
            Img1.Canvas.moveto(x1,y1);
            Img1.Canvas.lineto(x1+200,y1-60);
            Img1.Canvas.moveto(x,y);
            Img1.Canvas.lineto(x+200,y-60);
            Img1.Canvas.moveto(x,y-230);
            Img1.Canvas.lineto(x1+200,y1-60);
            Img1.Canvas.moveto(x,y-230);
            Img1.Canvas.lineto(x1,y1);
            Img1.Canvas.moveto(x,y-230);
            Img1.Canvas.lineto(x,y);
            Img1.Canvas.moveto(x,y-230);
            Img1.Canvas.lineto(x+200,y-60);
        end;
      end;
      if btn7.Down then
        begin
          img1.picture.Assign(img2.picture);
          img1.Canvas.pen.Width := strtoint(edt1.text);
          Img1.Canvas.Brush.color := panel3.color;
          img1.Canvas.Pen.color := pnl4.Color;
          if rb1.checked = true then
            img1.Canvas.Brush.Style := bsClear
          else
            img1.Canvas.Brush.Style := bsSolid;
            Img1.Canvas.ellipse(x,y,x1,y1);
        end;
      if speedbutton1.down then
        begin
          img1.picture.Assign(img2.picture);
          img1.Canvas.pen.Width := strtoint(edt1.text);
          Img1.Canvas.Brush.color := panel3.color;
          img1.Canvas.Pen.color := pnl4.Color;
          if rb1.checked = true then
            img1.Canvas.Brush.Style := bsClear
          else
            img1.Canvas.Brush.Style := bsSolid;
            Img1.Canvas.ellipse(x,y,x1,y1);
            for l := 1 to 200 do
              begin
                if (l mod 200=0) then Img1.Canvas.ellipse(x+l,y,x1+l,y1)
              end;;
            Img1.Canvas.MoveTo(x1-round((x1-x)/2),y);
            Img1.Canvas.LineTo(x1+200-round((x1-x)/2),y);
            Img1.Canvas.MoveTo(x1-round((x1-x)/2),y1);
            Img1.Canvas.LineTo(x1+200-round((x1-x)/2),y1);
        end;
      if speedbutton2.down then
      begin
        img1.picture.Assign(img2.picture);
          img1.Canvas.pen.Width := strtoint(edt1.text);
          Img1.Canvas.Brush.color := panel3.color;
          img1.Canvas.Pen.color := pnl4.Color;
          if rb1.Checked = true then
            img1.Canvas.Brush.Style := bsClear
          else
            img1.Canvas.Brush.Style := bsSolid;
            img1.Canvas.Rectangle(x,y,x1,y1);
            img1.Canvas.Rectangle(x+200,y-60,x1+200,y1-60);
            Img1.Canvas.MoveTo(x1,y1);
            Img1.Canvas.LineTo(x1+200,y1-60);
            Img1.Canvas.MoveTo(x,y);
            Img1.Canvas.LineTo(x+200,y-60);
            Img1.Canvas.MoveTo(x1,y);
            Img1.Canvas.LineTo(x1+200,y-60);
            Img1.Canvas.MoveTo(x,y1);
            Img1.Canvas.LineTo(x+200,y1-60);
      end;
      if btn8.Down then
        begin
          img1.picture.Assign(img2.picture);
          img1.Canvas.pen.Width := strtoint(edt1.text);
          Img1.Canvas.Brush.color := panel3.color;
          img1.Canvas.Pen.color := pnl4.Color;
          if rb1.Checked = true then
            img1.Canvas.Brush.Style := bsClear
          else
            img1.Canvas.Brush.Style := bsSolid;
            img1.Canvas.Rectangle(x,y,x1,y1);
        end;
    end;
  x2 := x;
  y2 := y;
end;

procedure TPaintForm.img1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if btn2.Down then
    begin
      if button = mbRight then
        Img1.Canvas.brush.color := pnl4.Color
        //Img1.Canvas.brush.color := clrgrd1.BackgroundColor
      else
        Img1.Canvas.brush.color := panel3.Color;
        //Img1.Canvas.brush.color :=clrgrd1.BackgroundColor;
        Img1.Canvas.FloodFill(x, y,Img1.Canvas.Pixels[x,y], fssurface);
    end;
    if btn3.Down then
      begin
        if button = mbRight then
          panel3.Color := Img1.Canvas.pixels[x,y]
        else
          pnl4.color := Img1.Canvas.pixels[x,y];
      end;
end;

procedure TPaintForm.jpg1Click(Sender: TObject);
var
  JPEG: TJPEGImage;
  Bitmap: TBitmap;
  name,time: string;
  today : TDateTime;
begin
  form2.visible:=false;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',[rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog2.Execute then
    begin
      name:=OpenPictureDialog2.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  JPEG := TJPEGImage.Create;
  Bitmap := TBitmap.Create;
  if name<>'' then
    begin
      try
        Bitmap.LoadFromFile(name+'.bmp');
        JPEG.Assign(Bitmap);
        JPEG.SaveToFile(name+time+'.jpg');
        ShowMessage('Конвертация прошла успешно!');
      finally
        JPEG.Free;
        Bitmap.Free;
      end;
    end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.JPGBMP1Click(Sender: TObject);
var
  jpeg: TJPEGImage;
  bmp:  TBitmap;
  today: TDateTime;
  time,name: string;
begin
  form2.visible:=false;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',
                          [rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog1.Execute then
    begin
      name:=OpenPictureDialog1.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  if name<>'' then
    begin
      jpeg := TJPEGImage.Create;
      try
        jpeg.CompressionQuality := 100;
        jpeg.LoadFromFile(name+'.jpg');
        bmp := TBitmap.Create;
        try
          bmp.Assign(jpeg);
          bmp.SaveTofile(name+'.bmp');
          ShowMessage('Конвертация прошла успешно!');
        finally
          bmp.Free
        end;
      finally
        jpeg.Free
      end;
    end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.JPGPNG1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  PNG: TPNGObject;
  Jpg: TJpegImage;
  today: TdateTime;
  name,time: string;
begin
  form2.visible:=false;
  today := Now;
  time:=StringReplace(DateToStr(today), '.', '',[rfReplaceAll, rfIgnoreCase])+' '+StringReplace(TimeToStr(today), ':', '',[rfReplaceAll, rfIgnoreCase]);
  if OpenPictureDialog1.Execute then
    begin
      name:=OpenPictureDialog1.FileName;
      name:=copy(name,1,name.Length-4);
    end;
  PNG := TPNGObject.Create;
  Jpg := TJpegImage.Create;
  Bitmap := TBitmap.Create;
  if name<>'' then
    begin
      try
        Jpg.LoadFromFile(name+'.jpg');
        Bitmap.Assign(Jpg);
        PNG.Assign(Bitmap);
        PNG.SaveToFile(name+time+'.png');
        ShowMessage('Конвертация прошла успешно!');
      finally
        jpg.free;
        PNG.Free;
        Bitmap.Free;
      end;
    end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.L2Click(Sender: TObject);
begin
  form2.visible:=false;
  if ColorDialog1.Execute then
  begin
    panel3.Color:=ColorDialog1.Color;
  end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.img1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  img2.picture.Assign(img1.Picture);
  x1 := x;
  y1 := y;
  if button = mbRight then
   mb := 'r'
  else
   mb := 'l';
  img1.Canvas.MoveTo(x,y);
  Img1MouseMove(Sender,Shift,X,Y);
end;

procedure TPaintForm.edt1Change(Sender: TObject);
begin
  fat := strtoint(edt1.text);
  if edt1.text<>'' then
  begin
    if not btn5.Down then
      img1.Canvas.Pen.Width := fat;
  end;
end;

procedure TPaintForm.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if not btn5.Down then
  begin
    front := StrToInt(edt1.Text);
    if front <> 0 then
    begin
    if Button = btprev then
      begin
        dec(front);
        if front = 0 then
          front := 1;
        edt1.Text := IntToStr(front);
      end;
     if Button = btnext then
       begin
         Inc(front);
         edt1.Text := IntToStr(front);
       end;
    end;
  end;
end;

procedure TPaintForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if not btn5.Down then
  begin
    front := StrToInt(edt1.Text);
    if front <> 0 then
    begin
    if Button = btprev then
      begin
        front:=front-10;
        if front = 0 then
          front := 1;
        edt1.Text := IntToStr(front);
      end;
     if Button = btnext then
       begin
         front:=front+10;
         edt1.Text := IntToStr(front);
       end;
    end;
  end;
end;

procedure TPaintForm.clrgrd1Change(Sender: TObject);
begin
  pnl4.Color := clrgrd1.ForegroundColor;
  panel3.color := clrgrd1.BackgroundColor;
end;

procedure TPaintForm.clrgrd1Click(Sender: TObject);
begin
  pnl4.Color := clrgrd1.ForegroundColor;
  Panel3.Color := clrgrd1.BackgroundColor;
end;

procedure TPaintForm.N2Click(Sender: TObject);
begin
 if fsave <> true then
   begin
     TUFPaintForm.ShowModal;
   end
   else
   begin
     fopen := false;
     img1.Picture := nil;
     img1.Canvas.FillRect(img1.Canvas.ClipRect);
     img2.Picture := nil;
     img2.Canvas.FillRect(img2.Canvas.ClipRect);
     img3.Picture := nil;
     img3.Canvas.FillRect(img3.Canvas.ClipRect);
     backp := false;
     nextp := false;
   end;
end;

procedure TPaintForm.N3Click(Sender: TObject);
begin
   form2.visible:=false;
   img1.AutoSize := true;
   fopen := true;
   dlgOPic1.Execute;
   if dlgOPic1.FileName<>'' then img1.Picture.LoadFromFile(dlgOPic1.FileName);
   fname := dlgOPic1.FileName;
   img1.AutoSize := false;
   form2.visible:=true;
   PaintForm.SetFocus;
end;

procedure TPaintForm.N4Click(Sender: TObject);
var bmp:  TBitmap;
begin
  form2.visible:=false;
  if fopen then
   begin
      try
         bmp := TBitmap.Create;
         bmp.Assign(img1.Picture);
         bmp.SaveTofile(ChangeFileExt(fname, '.bmp'));
      finally
         bmp.Free;
      end;
   end
   else
   begin
     dlg1.Execute;
     try
        bmp := TBitmap.Create;
        bmp.Assign(img1.Picture);
        bmp.SaveTofile(ChangeFileExt(dlg1.FileName, '.bmp'));
     finally
        bmp.Free;
     end;
     fopen := true;
   end;
   fsave := true;
   form2.visible:=true;
   PaintForm.SetFocus;
end;

procedure TPaintForm.N11Click(Sender: TObject);
var bmp: TBitmap;
begin
  form2.visible:=false;
  dlg1.Execute;
  try
    bmp := TBitmap.Create;
    bmp.Assign(img1.Picture);
    bmp.SaveTofile(ChangeFileExt(dlg1.FileName, '.bmp'));
  finally
    bmp.Free;
  end;
  fsave := true;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.N13Click(Sender: TObject);
var buttonSelected: integer;
begin
  buttonSelected := MessageDlg('Вы уверены в том, что хотите создать новый файл?'+#10+'Изменения не будут сохранены!',mtWarning , mbOKCancel, 0);
  if buttonSelected = mrOK     then
  begin
    img1.Picture := nil;
    img1.Canvas.FillRect(img1.Canvas.ClipRect);
    img2.Picture := nil;
    img2.Canvas.FillRect(img2.Canvas.ClipRect);
    img3.Picture := nil;
    img3.Canvas.FillRect(img3.Canvas.ClipRect);
    backp := false;
    nextp := false;
  end;
  if buttonSelected = mrCancel then
  begin
    //to do
  end;
end;

procedure TPaintForm.N1Click(Sender: TObject);
begin
  form2.visible:=false;
  if ColorDialog1.Execute then
  begin
    pnl4.Color:=ColorDialog1.Color;
  end;
  form2.visible:=true;
  PaintForm.SetFocus;
end;

procedure TPaintForm.N5Click(Sender: TObject);
begin
  if fsave <> true then
                   begin
                     TUFPaintForm.ShowModal;
                   end;
  if fsave = true then PaintForm.Close;
end;

procedure TPaintForm.N7Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены в том, что хотите очистить лист?'+#10+'Изменения не будут сохранены!',mtWarning , mbOKCancel, 0);
  if buttonSelected = mrOK     then
  begin
    img1.Picture := nil;
    img1.Canvas.FillRect(img1.Canvas.ClipRect);
    img2.Picture := nil;
    img2.Canvas.FillRect(img2.Canvas.ClipRect);
    img3.Picture := nil;
    img3.Canvas.FillRect(img3.Canvas.ClipRect);
    backp := false;
    nextp := false;
  end;
  if buttonSelected = mrCancel then
  begin
    //to do
  end;

end;

procedure TPaintForm.N8Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены в том, что хотите изменить параметры листа?'+#10+'Изменения не будут сохранены!',mtWarning , mbOKCancel, 0);
  if buttonSelected = mrOK     then
  begin
    form2.visible:=false;
    SUFPaintForm.Show;
    timer1.Enabled:=true;
  end;
  if buttonSelected = mrCancel then
  begin
    //to do
  end;
end;

procedure TPaintForm.N10Click(Sender: TObject);
begin
  if backp = true then
  begin
    img3.picture.Assign(img1.Picture);
    img1.picture.Assign(img2.Picture);
    nextp := true;
  end;
  backp := false;
end;

end.


