unit UntMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ImgFechar: TImage;
    ImgMinimizar: TImage;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crSizeAll;
   ReleaseCapture;
   Self.Perform(wm_nclbuttondown,HTCAPTION,0);
   Screen.Cursor := crDefault;
end;

end.
