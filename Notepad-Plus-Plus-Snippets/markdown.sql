--
-- File generated with SQLiteStudio v3.4.4
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: LangLastUsed
CREATE TABLE IF NOT EXISTS LangLastUsed(Lang INTEGER PRIMARY KEY NOT NULL, LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE);

-- Table: Library
CREATE TABLE IF NOT EXISTS Library(LibraryID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Name TEXT NOT NULL, CreatedBy TEXT, Comments TEXT, SortBy INTEGER NOT NULL DEFAULT 0);
INSERT INTO Library (LibraryID, Name, CreatedBy, Comments, SortBy) VALUES (1, 'Markdown', 'course and after school tutor course', NULL, 0);

-- Table: LibraryLang
CREATE TABLE IF NOT EXISTS LibraryLang(LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE, Lang INTEGER NOT NULL, PRIMARY KEY (LibraryID, Lang));
INSERT INTO LibraryLang (LibraryID, Lang) VALUES (1, -2);

-- Table: Snippets
CREATE TABLE IF NOT EXISTS Snippets(SnippetID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE, Name TEXT NOT NULL, BeforeSelection TEXT NOT NULL, AfterSelection TEXT, ReplaceSelection BOOL NOT NULL DEFAULT 0, NewDocument BOOL NOT NULL DEFAULT 0, NewDocumentLang INTEGER, Sort INTEGER);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (1, 1, 'Image', '![Alt text](URL or file path ''Title of image'')', NULL, 0, 0, 0, 1);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (2, 1, 'Linked Images', '[![Alt Text](URL or file path ''Title of Image'')](Hyperlink or URL)', NULL, 0, 0, 0, 2);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (3, 1, 'URL or file path or Hyperlink ( sample )', 'file://path/to/image.jpg', NULL, 0, 0, 0, 3);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (4, 1, 'Single line Blockquote', '> single line blockquote', NULL, 0, 0, 0, 4);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (5, 1, 'Multiple paragraph Blockquote', '> The first paragraph line

>

> The second paragraph line', NULL, 0, 0, 0, 5);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (6, 1, 'Fenced Code Blocks for BASH', '```bash', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (7, 1, 'Fenced Code Blocks for C', '```c', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (8, 1, 'Fenced Code Blocks for C#', '```csharp', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (9, 1, 'Fenced Code Blocks for C++', '```cpp', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (10, 1, 'Fenced Code Blocks for CSS', '```css', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (11, 1, 'Fenced Code Blocks for HTML', '```html', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (12, 1, 'Fenced Code Blocks for Java', '```java', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (13, 1, 'Fenced Code Blocks for JavaScript', '```js', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (14, 1, 'Fenced Code Blocks for Objective-C', '```objc', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (15, 1, 'Fenced Code Blocks for PHP', '```php', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (16, 1, 'Fenced Code Blocks for Python', '```python', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (17, 1, 'Fenced Code Blocks for R', '```r', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (18, 1, 'Fenced Code Blocks for SQL', '```sql', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (19, 1, 'Fenced Code Blocks for Swift', '```swift', '```', 0, 0, 0, 6);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (20, 1, '**bold text**', '**bold text**', NULL, 0, 0, 0, 7);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (21, 1, '*italic text*', '*italic text*', NULL, 0, 0, 0, 8);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (22, 1, '~~strikethrough~~', '~~strikethrough~~', NULL, 0, 0, 0, 9);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (23, 1, 'Emphasis Combination', '**This is in bold, _italics_, ~~and strikethrough~~**', NULL, 0, 0, 0, 10);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (24, 1, '# Heading level 1', '# Heading level 1', NULL, 0, 0, 0, 11);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (25, 1, '## Heading level 2', '## Heading level 2', NULL, 0, 0, 0, 12);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (26, 1, '### Heading level 3', '### Heading level 3', NULL, 0, 0, 0, 13);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (27, 1, '#### Heading level 4', '#### Heading level 4', NULL, 0, 0, 0, 14);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (28, 1, '##### Heading level 5', '##### Heading level 5', NULL, 0, 0, 0, 15);
INSERT INTO Snippets (SnippetID, LibraryID, Name, BeforeSelection, AfterSelection, ReplaceSelection, NewDocument, NewDocumentLang, Sort) VALUES (29, 1, '###### Heading level 6', '###### Heading level 6', NULL, 0, 0, 0, 16);

-- Index: SnipName
CREATE INDEX IF NOT EXISTS SnipName ON Snippets(LibraryID, Name, Sort);

-- Index: SnipSort
CREATE INDEX IF NOT EXISTS SnipSort ON Snippets(LibraryID, Sort, Name);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
