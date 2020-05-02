unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.Lines.add(edit1.Text);
  if(rgJenisKelamin.ItemIndex=0) then
  begin
    memo1.lines.add('laki-laki');
  end
  else if(rgJenisKelamin.ItemIndex=1) then
  begin
       memo1.lines.add('perempuan');
  end;

  memo1.lines.add(cbKota.Text);

  if(cbxFoto.checked) then
  memo1.lines.add('foto ada');
  if(cbxKTP.checked) then
  memo1.lines.add('KTP ada');
  if(cbxIjazah.checked) then
  memo1.lines.add('Ijazah ada');
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  edit1.text:='';
  memo1.clear;
  rgJenisKelamin.itemindex := -1;
  cbKota.ItemIndex:=-1;
  cbKota.Text:='';
  cbxFoto.checked:=false;
  cbxKTP.checked:=false;
  cbxIjazah.checked:=false;
end;

end.

