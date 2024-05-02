from Npp import *
# or other syntax alternative
# import Npp

strEncloseChar = notepad.prompt("type character to wrap a selection", "Enclose Selection", "\"")

if strEncloseChar == None:
    editor.replaceSel("\"" + editor.getSelText() + "\"")
else:
    editor.replaceSel(strEncloseChar + editor.getSelText() + strEncloseChar)
