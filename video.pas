﻿unit video;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  DirectShow9, math, ActiveX, Vcl.Imaging.pngimage;

type
  TPlayerMode = (Stop, Play, Paused); // режим воспроизведения
  Tvideo_form = class(TForm)
    main_panel: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    TrackBar1: TTrackBar;
    ListBox2: TListBox;
    OpenDialog1: TOpenDialog;
    tim: TTimer;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    Panel4: TPanel;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Image7: TImage;
    Timer_form: TTimer;
    Label1: TLabel;
    Label6: TLabel;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Panel5: TPanel;
    procedure Initializ;
    procedure Player;
    procedure AddPlayList;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure timTimer(Sender: TObject);
    procedure ProgressBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1Resize(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox2MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure ListBox2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer_formTimer(Sender: TObject);
    procedure Close_labelClick(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image10Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nx,ny:integer;
    pCurrent, pDuration: Double;// Текужее положение и длительность фильма
    Mode: TPlayerMode; // режим воспроизведения
    Rate: Double;// нормальная скорость воспроизведения
    FileName: string;//имя файла
    xn, yn : integer; //для хранения координат мыши
    mouse: tmouse; //координаты мыши
    //интерфейсы для построения и управления графом
    pGraphBuilder        : IGraphBuilder; //сам граф
    pMediaControl        : IMediaControl; //управление графом
    pMediaEvent          : IMediaEvent; //обработчик событий
    pVideoWindow         : IVideoWindow; //задает окно для вывода
    pMediaPosition       : IMediaPosition; //позиция проигрывания
    pBasicAudio          : IBasicAudio; //управление звуком
  end;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             var video_form: Tvideo_form; hr: HRESULT = 1; i: integer = 0;// счетчик загруженных файлов

implementation
uses text_editor, Open_space, photo_view_, LW9, paint;

{$R *.dfm}

procedure Tvideo_form.Image10Click(Sender: TObject);
begin
   if (not Assigned(Form1)) then Form1:=TForm1.Create(Self);
   Form1.Show;
end;

procedure Tvideo_form.Image11Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure Tvideo_form.Image12Click(Sender: TObject);
begin
  if (not Assigned(photo_view)) then photo_view:=Tphoto_view.Create(Self);
  photo_view.Show;
end;

procedure Tvideo_form.Image13Click(Sender: TObject);
begin
  if (not Assigned(dbform)) then dbform:=Tdbform.Create(self);
  dbform.Show;
end;

procedure Tvideo_form.Image14Click(Sender: TObject);
begin
  video_form.Close;
end;

procedure Tvideo_form.Image15Click(Sender: TObject);
begin
  if (not Assigned(paintform)) then paintform:=Tpaintform.Create(Self);
  paintform.Show;
end;

procedure Tvideo_form.Image4Click(Sender: TObject);
begin
  if mode=play then
               begin
                 if ProgressBar1.Position>=15 then pMediaPosition.put_CurrentPosition(ProgressBar1.Position-15);
               end;
end;

procedure Tvideo_form.Image5Click(Sender: TObject);
begin
  if mode=play then
               begin
                 if ProgressBar1.Position+15<=ProgressBar1.Max then pMediaPosition.put_CurrentPosition(ProgressBar1.Position+15);
               end;
end;

procedure Tvideo_form.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent:= GetDesktopWindow;
end;

procedure Tvideo_form.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  nx:=x;ny:=y;
end;

procedure Tvideo_form.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssleft in shift then begin
                          video_form.Top:= video_form.Top+y-ny;
                          video_form.Left:= video_form.Left+x-nx;
  end;
end;

procedure Tvideo_form.Image8Click(Sender: TObject);
begin
  if mode=play then
               begin
                 pMediaControl.Stop;
                 mode:=Stop;//устанавливаем playmode -> стоп
                 pMediaPosition.put_CurrentPosition(0); //задаем начальное положение проигравания
               end;
  video_form.Close;
end;

procedure Tvideo_form.Image9Click(Sender: TObject);
begin
  video_form.WindowState:=wsMinimized;
end;

procedure Tvideo_form.Initializ; //процедура построения графа
begin
  //освобождаем подключенные интерфейсы
  if Assigned(pMediaPosition) then pMediaPosition := nil;
  if Assigned(pBasicAudio) then pBasicAudio  := nil;
  if Assigned(pVideoWindow) then pVideoWindow := nil;
  if Assigned(pMediaEvent) then pMediaEvent := nil;
  if Assigned(pMediaControl) then pMediaControl := nil;
  if Assigned(pGraphBuilder) then pGraphBuilder := nil;
  //получаем интерфейс построения графа
  hr := CoCreateInstance(CLSID_FilterGraph, nil, CLSCTX_INPROC_SERVER, IID_IGraphBuilder, pGraphBuilder);
  if hr<>0 then
           begin
             ShowMessage('Не удается создать граф');
             exit;
           end;
  //получаем интерфейс управления
  hr := pGraphBuilder.QueryInterface(IID_IMediaControl, pMediaControl);
  if hr<>0 then
           begin
             ShowMessage('Не удается получить интерфейс IMediaControl');
             exit;
           end;
  //получаем интерфейс событий
  hr := pGraphBuilder.QueryInterface(IID_IMediaEvent, pMediaEvent);
  if hr<>0 then
           begin
             ShowMessage('Не удается получить интерфейс событий');
             exit;
           end;
  //получаем интерфейс управления окном вывода видео
  hr := pGraphBuilder.QueryInterface(IID_IVideoWindow, pVideoWindow);
  if hr<>0 then
           begin
             ShowMessage('Не удается получить IVideoWindow');
             exit;
           end;
  //получаем интерфейс управления звуком
  hr := pGraphBuilder.QueryInterface(IBasicAudio, pBasicAudio);
  if hr<>0 then
           begin
             ShowMessage('Не удается получить аудио интерфейс');
             exit;
           end;
  //получаем интерфейс  управления позицией проигрывания
  hr := pGraphBuilder.QueryInterface(IID_IMediaPosition, pMediaPosition);
  if hr<>0 then
           begin
             ShowMessage('Не удается получить интерфейс управления позицией');
             exit;
           end;
  //загружаем файл для проигрывания
  hr := pGraphBuilder.RenderFile(StringToOleStr(PChar(filename)), '');
  if hr<>0 then
           begin
             ShowMessage('Не удается прорендерить файл');
             exit;
           end;
  //располагаем окошко с видео на панель
  pVideoWindow.Put_Owner(Panel1.Handle);//Устанавливаем "владельца" окна, в нашем случае Panel1
  pVideoWindow.Put_WindowStyle(WS_CHILD OR WS_CLIPSIBLINGS);//Стиль окна
  pVideoWindow.put_MessageDrain(Panel1.Handle);//указываем что Panel1 будет получать сообщения видео окна
  pVideoWindow.SetWindowPosition(0,0,Panel1.ClientRect.Right,Panel1.ClientRect.Bottom); //размеры
end;

procedure Tvideo_form.Player; //процедура проигрывания файла
begin
  if mode<>paused then
                  begin
                    //проверяем существует ли файл загружаемый из PlayList
                    //если файл не существует, то выходим
                    if not FileExists(FileName) then
                                                begin
                                                  ShowMessage('Файл не существует');
                                                  exit;
                                                end;
                    //освобождаем канал воспроизведения
                    Initializ;
                  end;
  //Запускаем процедуру проигрывания
  pMediaControl.Run;
  //получаем скорость врспроизведения
  pMediaPosition.get_Rate(Rate);
  //присваеваем заголовку формы имя проигрываемого файла
  video_form.Caption:=ExtractFileName(FileName);
  //Устанавливаем режим воспроизведения PlayMode - play
  mode:=play;
end;

procedure Tvideo_form.AddPlayList;//процедура зугрузки файлов в плейлист
var
 j: Integer;
begin
  OpenDialog1.Options:=[ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  OpenDialog1.Title  := 'Открытие файлов';
  //фильтр для файлов
  OpenDialog1.Filter := 'Файлы мультимедиа |*.mp3;*.wma;*.wav;*.vob;*.avi;*.mpg;*.mp4;*.mov;*.mpeg;*.flv;*.wmv;*.qt;|Все файлы|*.*';
  //проверяем если PlayList не пустой то запоминаем номер текущей записи
  //иначе устанавливаем номер записи 0 (первая позиция в PlayList)
  if listbox2.Count<>0 then i:=ListBox2.ItemIndex else i:=0;
  //Диалог открытия файла
  if not OpenDialog1.Execute then exit;
  Begin
    For j:=0 to OpenDialog1.Files.Count -1 do
      Begin
        ListBox2.Items.Add(ExtractFileName(OpenDialog1.Files.Strings[j]));
        ListBox1.Items.Add(OpenDialog1.Files.Strings[j]);
      End;
  End;
  //запоминаем имя файла текущей записи в плейлисте
  Filename:=ListBox1.Items.Strings[i];
  //Выделяем эту запись в PlayList
  ListBox1.ItemIndex:=i;
  ListBox2.ItemIndex:=i;
end;

procedure Tvideo_form.Close_labelClick(Sender: TObject);
begin
  video_form.Close;
end;

procedure Tvideo_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mode=play then
    begin
      pMediaControl.Stop;
      mode:=Stop;//устанавливаем playmode -> стоп
      pMediaPosition.put_CurrentPosition(0);
    end;
end;

procedure Tvideo_form.FormCreate(Sender: TObject);
begin
  video_form.Visible:=false;
  image9.left:=main_panel.Width-170;
  image8.left:=main_panel.Width-60;
  video_form.Brush.Style := bsClear;
  video_form.BorderStyle := bsNone;
  video_form.TransparentColorValue := clblue;
  video_form.transparentcolor := true;
  video_form.Color := clblue;
  CoInitialize(nil);// инициализировать OLE
end;

procedure Tvideo_form.FormDestroy(Sender: TObject);
begin
  CoUninitialize;// деинициализировать OLE
end;

procedure Tvideo_form.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if mode<>play then
  begin
    image9.left:=main_panel.Width-170;
    image8.left:=main_panel.Width-60;
    video_form.width:=video_form.width-10;
    video_form.Height:=ceil(video_form.width*0.6875);
    main_panel.width:=main_panel.width-10;
    main_panel.Height:=ceil(main_panel.width*0.5875);
  end
  else
  begin
    image9.left:=main_panel.Width-170;
    image8.left:=main_panel.Width-60;
    video_form.width:=video_form.width-10;
    video_form.Height:=ceil(video_form.width*0.6875);
    main_panel.width:=main_panel.width-10;
    main_panel.Height:=ceil(main_panel.width*0.5875);
    panel1.Width:=main_panel.Width;
    pVideoWindow.SetWindowPosition(0,0,Panel1.ClientRect.Right,Panel1.ClientRect.Bottom);
  end;
end;

procedure Tvideo_form.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if mode<>play then
  begin
    image9.left:=main_panel.Width-170;
    image8.left:=main_panel.Width-60;
    video_form.width:=video_form.width+10;
    video_form.Height:=ceil(video_form.width*0.6875);
    main_panel.width:=main_panel.width+10;
    main_panel.Height:=ceil(main_panel.width*0.5875);
  end
  else
  begin
    image9.left:=main_panel.Width-170;
    image8.left:=main_panel.Width-60;
    video_form.width:=video_form.width+10;
    video_form.Height:=ceil(video_form.width*0.6875);
    main_panel.width:=main_panel.width+10;
    main_panel.Height:=ceil(main_panel.width*0.5875);
    panel1.Width:=main_panel.Width;
    pVideoWindow.SetWindowPosition(0,0,Panel1.ClientRect.Right,Panel1.ClientRect.Bottom);
  end;
end;

procedure Tvideo_form.ListBox2Click(Sender: TObject);
begin
  //устанавливаем одинаковую позицию в плейлистах при выборе
  i:=ListBox2.Itemindex;
  ListBox1.Itemindex:=i;
end;

procedure Tvideo_form.ListBox2DblClick(Sender: TObject);
begin
  //выбираем файл из плейлиста при двойном клике для воспроизведения
  i:=ListBox2.Itemindex;
  ListBox1.Itemindex:=i;
  Filename:=ListBox1.Items.Strings[i];
  mode:=stop;
  //вызываем процедуру проигрывания файла
  player;
end;

//процедура вызова PopupMenu при нажатии правой кнопкой мыши на плейлисте (ListBox)
procedure Tvideo_form.ListBox2MouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
var
point : TPoint;
begin
  if (Button = mbRight) then
  // нажата правая мышь
  begin
    point.X := X;
    point.Y := Y;
    i := ListBox2.ItemAtPos(point, true);
    // выделяем строку
    ListBox1.ItemIndex:=i;
    ListBox2.ItemIndex:=i;
      if i >= 0 then
    // если щелкнули по полям списка
    begin
    // поднимаем меню
     PopupMenu1.Popup(ListBox2.ClientOrigin.X + X, ListBox2.ClientOrigin.Y + Y);
    end;
  end;
end;

//процедура удаления записей в плейлисте
procedure Tvideo_form.N1Click(Sender: TObject);
begin
  //очистка плейлиста
  ListBox1.Clear;
  ListBox2.Clear;
end;

procedure Tvideo_form.N2Click(Sender: TObject);
//удаление записи
begin
  ListBox1.DeleteSelected;
  ListBox2.DeleteSelected;
end;

procedure Tvideo_form.N3Click(Sender: TObject);
begin
  //вызываем процедуру загрузки плейлиста
  AddPlayList;
end;

//Процедура изменения размеов окна проигрывания при изменении размеров панели
procedure Tvideo_form.Panel1Resize(Sender: TObject);
begin
 if mode=play then
              begin
                pVideoWindow.SetWindowPosition(0,0,Panel1.ClientRect.Right,Panel1.ClientRect.Bottom);
              end;
end;

//процедура изменения позиции проигрывания при изменении позиции ProgressBar (перемотка)
procedure Tvideo_form.ProgressBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  p: real;
begin
  if hr = 0 then  begin
    if ssleft in shift then //если нажата левая кнопка мыши
    begin
      p:=ProgressBar1.Max/ProgressBar1.Width;
      ProgressBar1.Position:=round(x*p);
      pMediaControl.Stop;
      pMediaPosition.put_CurrentPosition(ProgressBar1.Position);
      pMediaControl.Run;
      mode:=play;
    end;
  end;
end;

//процедура воспроизведения
procedure Tvideo_form.SpeedButton1Click(Sender: TObject);
begin
  //Проверяем если воспроизведение уже идет то устанавливаем
  //нормальную скорость воспроизведения и выходим
  if mode=play then
               begin
                 image1.Tag:=1;
                 pMediaPosition.put_Rate(Rate);
                 exit;
               end;
  Player;
end;

//процедура паузы
procedure Tvideo_form.SpeedButton2Click(Sender: TObject);
begin
 //Проверяем идет ли воспроизведение
  if mode=play then
               begin
                 pMediaControl.Pause;
                 mode:=paused;//устанавливаем playmode -> пауза
               end;
end;

//процедура остановки
procedure Tvideo_form.SpeedButton3Click(Sender: TObject);
begin
//Проверяем идет ли воспроизведение
  if mode=play then
               begin
                 pMediaControl.Stop;
                 mode:=Stop;//устанавливаем playmode -> стоп
                 pMediaPosition.put_CurrentPosition(0); //задаем начальное положение проигравания
               end;
end;

procedure Tvideo_form.SpeedButton6Click(Sender: TObject);
begin
  Form2.WindowState:=wsMinimized;
  AddPlayList;
  Form2.WindowState:=wsNormal;
  video_form.SetFocus;
end;

procedure Tvideo_form.timTimer(Sender: TObject);
var
  TrackLen, TrackPos: Double;
  ValPos: Double;
  ValLen: Double;
  plVolume:Longint;
  db  : integer;
begin
  //проверяем режим воспроизведения, если не Play то выходим
  if hr <> 0 then Exit;
  //время проигрывания фильма
  //считываем всю длину фильма в секундах
  pMediaPosition.get_Duration(pDuration);
  //задаем максимальное положение ProgressBar
  ProgressBar1.Max:=round(pDuration);
  //считаваем сколько секунд прошло от начала воспроизведения
  pMediaPosition.get_CurrentPosition(pCurrent);
  //задаем текущее положение ProgressBar
  ProgressBar1.Position:=round(pCurrent);
  //воспроизведение следующего фильма
  //если время проигрывания равно длине фильма по времени,
  if pCurrent=pDuration then
                        begin
                          //то выбираем следующую запись из плейлиста
                          if i<ListBox2.Items.Count-1 then
                                                      begin
                                                        inc(i);
                                                        Filename:=ListBox1.Items.Strings[i];
                                                        ListBox1.ItemIndex:=i;
                                                        ListBox2.ItemIndex:=i;
                                                        mode:=stop;
                                                        player;
                                                      end
                          //если лист закончился - выходим
                          else exit;
                        end;
  //Установка громкости, громкость задается от -10000 до 0
  //к сожелению при таком регулировании звук начинает заметно прибавляться только в конце шкалы
  //pBasicAudio.put_Volume(TrackBar1.Position*100-10000);
  //еще один вариант регулирования громкости. Более плавное регулирование звука
  plVolume:= (65535 * TrackBar1.Position) div 100;
  //нормируем характеристику уровня громкости
  db:= trunc(33.22 * 100 * ln((plVolume+1e-6)/65535)/ln(10));
  pBasicAudio.put_Volume(db);
  //делаем вычисление времени
  TrackLen:=pDuration;
  TrackPos:=pCurrent;
  //переводим секунды в часы
  ValPos:=TrackPos / (24 * 3600);
  ValLen:=TrackLen / (24 * 3600);
  //Выводим данные о времени на форму в Label1 и Label2
  Label2.Caption:=FormatDateTime('hh:mm:ss',ValPos);
  Label3.Caption:=FormatDateTime('hh:mm:ss',ValLen);
end;

procedure Tvideo_form.Timer_formTimer(Sender: TObject);
begin
  video_form.Visible:=true;
  video_form.AlphaBlendValue:= video_form.AlphaBlendValue+5;
  if video_form.AlphaBlendValue>=250 then
                                     begin
                                       timer_form.Destroy;
                                       exit;
                                     end;
end;

end.

