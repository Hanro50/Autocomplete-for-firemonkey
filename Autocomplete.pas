unit Autocomplete;

interface
uses
System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.ComboEdit;
Procedure autocom(var edit: TComboEdit);
Procedure setlastkey(Last : word);
var
LastKey : word;
implementation
Procedure setlastkey(Last : word);
begin
  LastKey:=Last;
end;
Procedure autocom(var edit: TComboEdit);
var b : boolean;
  Srch, text: string;
  ix, I, I2: Integer;
begin
Srch := edit.Text;
if LastKey = $08 then
  begin
    LastKey := 0;
    Exit;
  end;
if Length(Srch)<=0 then exit;
I:=edit.items.Count;
for ix := 0 to I do
  begin
  edit.ItemIndex := ix;
  text:=edit.Text;
  i2:=Pos(UpperCase(Srch), UpperCase(Text));
   if I2=0 then b:=true
    else
      begin
        b:=false;
        break;
      end;
  end;


if b then
  begin
    edit.Text:=Srch;
    exit;
  end;

edit.ItemIndex := ix;
edit.SelStart  := Length(Srch);
edit.SelLength := (Length(edit.Text) - Length(Srch));
end;
end.
