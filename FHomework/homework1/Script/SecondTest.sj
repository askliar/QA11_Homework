function SecondTest()
{
  TestedApps.RunAll();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.SHELLDLL_DefView.FolderView.DblClickItem("Hello World");
  Aliases.notepad.wndNotepad.Edit.Click(133, 8);
  Aliases.notepad.wndNotepad.Edit.Keys("[BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS][BS]");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save");
  Aliases.notepad.wndNotepad.Close();
  TestedApps.RunAll();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.SHELLDLL_DefView.FolderView.DblClickItem("Hello World");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "", false);
  Aliases.notepad.wndNotepad.Close();
}
