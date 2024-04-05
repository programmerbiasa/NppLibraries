# What is Function List
The Function List Panel is a zone to display all the functions (or methods) found in the current file. The user can double-click the function name in the Function List Panel to move to that function in the editor. You can customize the Function List to enhance an existing language or to add a currently-unsupported language by following the instructions found below.

Function List uses a regular-expression (regex) search engine to parse the active file and look for functions (or methods); it displays the results from the regular-expression search in the Function List panel. It is designed to be as generic as possible, and allows users to modify the way to search, or to add new parsers for any programming language.

Notepad++ Function List use these following files:
- The overrideMap.xml file (in that same folder as the language XML file) is used to map the name of the language to the XML file that defines the Function List rule for that language, as described in the function list config files section of the manual.
- The language XML file is used to describes the structure of all the functions (or methods) found in the current file (or active file/opened file).

# Step by Step
1. In order to make Function List work for your language, you should modify (or add) the XML file of the languge. 
   The XML files for different languages can be found in %APPDATA%\notepad++\functionList; if you use the portable (zip) package, then it will instead be in the functionList folder located in Notepad++ installation directory.
2. For non User Defined Language (UDL), such as plain text files, you can have a function list definition in functionList\normal.xml.
3. If you use User Defined Language (UDL) or to override that language, such as markdon (.md) files, you may modified and paste the overrideMap.xml file (in that same folder as the language XML file).
