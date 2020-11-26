unit SUFPaint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TSUFPaintForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SUFPaintForm: TSUFPaintForm;

implementation

uses paint;

{$R *.dfm}

procedure TSUFPaintForm.BitBtn1Click(Sender: TObject);
begin
  sufpaintForm.Visible := false;
  paintForm.Img1.height := strtoint(sufpaintForm.edit2.Text);
  paintForm.Img1.width := strtoint(sufpaintForm.edit1.Text);
  paintForm.img1.Picture := nil;
  paintForm.img1.Canvas.FillRect(paintForm.img1.Canvas.ClipRect);
end;

procedure TSUFPaintForm.FormCreate(Sender: TObject);
begin
  sufpaintForm.edit2.Text:=inttostr(paintForm.Img1.height);
  sufpaintForm.edit1.Text:=inttostr(paintForm.Img1.width);
end;

end.
