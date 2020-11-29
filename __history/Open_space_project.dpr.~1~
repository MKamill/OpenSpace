program Open_space_project;

uses
  Vcl.Forms,
  Open_space in 'Open_space.pas' {Form2},
  text_editor in 'text_editor.pas' {Form1},
  video in 'video.pas' {video_form},
  photo_view_ in 'photo_view_.pas' {Photo_view},
  LW9 in 'LW9.pas' {DBForm},
  paint in 'paint.pas' {PaintForm},
  SUFPaint in 'SUFPaint.pas' {SUFPaintForm},
  TUFPaint in 'TUFPaint.pas' {TUFPaintForm},
  about in 'about.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tvideo_form, video_form);
  Application.CreateForm(TPhoto_view, Photo_view);
  Application.CreateForm(TDBForm, DBForm);
  Application.CreateForm(TPaintForm, PaintForm);
  Application.CreateForm(TSUFPaintForm, SUFPaintForm);
  Application.CreateForm(TTUFPaintForm, TUFPaintForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
