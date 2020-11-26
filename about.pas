unit about;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TAboutForm = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    Image2: TImage;
    Image3: TImage;
    Image8: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  AboutForm.Brush.Style := bsClear;
  AboutForm.BorderStyle := bsNone;
  AboutForm.TransparentColorValue := clblue;
  AboutForm.transparentcolor := true;
  AboutForm.Color := clblue;
end;

procedure TAboutForm.Image2Click(Sender: TObject);
begin
  AboutForm.Close;
end;

procedure TAboutForm.Image3Click(Sender: TObject);
begin
  AboutForm.WindowState:=wsMinimized;
end;

procedure TAboutForm.Image8Click(Sender: TObject);
begin
  AboutForm.Close;
end;

end.
