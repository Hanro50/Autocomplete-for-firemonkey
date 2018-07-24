# Autocomplete-for-firemonkey (Delphi)
This script can be used with a tComboEdit component to implement autocomplete functionality. 

This unit contains 2 procedures, mainly "setlastkey" and "autocom". 

You should put "setlastkey" event under the "OnKeyDown" event under the Tcomboedit component you're planining on using with this unit
**E.g. 
*procedure TForm1.ComboEdit1KeyDown(Sender: TObject; var Key: Word;
*  var KeyChar: Char; Shift: TShiftState);
*begin
*  setlastkey(key);
*end;

The "autocom" event under the "OnTyping" event under the Tcomboedit component you're planining on using with this unit
**E.g.
*procedure TForm1.ComboEdit1Typing(Sender: TObject);
*begin
* autocom(ComboEdit1);
*end;

Feel free to redistribute, sell and modify my code within any projects you intend to use it with. Although I would appreciate it if you where to give me credit, its more of a suggestion than a requirement. Enjoy and have fun!

**#Tested in Windows 10 and Andriod 7.0 
