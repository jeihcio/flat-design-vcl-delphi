unit UntMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ImgFechar: TImage;
    ImgMinimizar: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    Panel2: TPanel;
    Image1: TImage;
    ImgCancelar: TImage;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgMinimizarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgMinimizarMouseLeave(Sender: TObject);
    procedure ImgMinimizarClick(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
    procedure ImgCancelarClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ImgCancelarClick(Sender: TObject);
begin
   Edit1.Clear;
   Edit2.Clear;
   Memo1.Lines.Clear;
end;

procedure TForm1.ImgFecharClick(Sender: TObject);
begin
   Close();
end;

procedure TForm1.ImgMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.ImgMinimizarMouseLeave(Sender: TObject);
begin
   Screen.Cursor := crDefault;
end;

procedure TForm1.ImgMinimizarMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crSizeAll;
   ReleaseCapture;
   Self.Perform(wm_nclbuttondown,HTCAPTION,0);
   Screen.Cursor := crDefault;
end;

end.
