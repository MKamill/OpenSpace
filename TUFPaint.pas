unit TUFPaint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TTUFPaintForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TUFPaintForm: TTUFPaintForm;

implementation

uses paint, open_space;

{$R *.dfm}

procedure TTUFPaintForm.Button1Click(Sender: TObject);
begin
  paintForm.N11Click(sender);
  fsave := true;
  tufpaintform.close;
  PaintForm.img1.Picture := nil;
  PaintForm.img1.Canvas.FillRect(PaintForm.img1.Canvas.ClipRect);
  PaintForm.img2.Picture := nil;
  PaintForm.img2.Canvas.FillRect(PaintForm.img2.Canvas.ClipRect);
  PaintForm.img3.Picture := nil;
  PaintForm.img3.Canvas.FillRect(PaintForm.img3.Canvas.ClipRect);
  PaintForm.backp := false;
  PaintForm.nextp := false;
end;

procedure TTUFPaintForm.Button2Click(Sender: TObject);
begin
  //paintForm.N7Click(Sender);
  fsave := true;
  tufpaintform.close;
  PaintForm.img1.Picture := nil;
  PaintForm.img1.Canvas.FillRect(PaintForm.img1.Canvas.ClipRect);
  PaintForm.img2.Picture := nil;
  PaintForm.img2.Canvas.FillRect(PaintForm.img2.Canvas.ClipRect);
  PaintForm.img3.Picture := nil;
  PaintForm.img3.Canvas.FillRect(PaintForm.img3.Canvas.ClipRect);
  PaintForm.backp := false;
  PaintForm.nextp := false;
  PaintForm.Close;
  form2.visible:=true;
  form2.SetFocus;
end;

procedure TTUFPaintForm.Button3Click(Sender: TObject);
begin
  tufpaintform.close;
end;

end.
