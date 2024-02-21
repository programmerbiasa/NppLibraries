-----------------------------------------------------------------------------
-- For more details about the schema see                                   --
-- https://nppsnippets.readthedocs.io/en/latest/database.html              --
-----------------------------------------------------------------------------

PRAGMA foreign_keys = off;

-----------------------------------------------------------------------------
-- TABLE Library                                                           --
-----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS Library;
-- CREATE TABLE Library (
	-- LibraryID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	-- Name TEXT NOT NULL,
	-- CreatedBy TEXT,
	-- Comments TEXT,
	-- SortBy INTEGER NOT NULL DEFAULT 0
-- );

INSERT INTO Library(LibraryID, Name) VALUES(24,'Math Terms');

-----------------------------------------------------------------------------
-- TABLE LibraryLang                                                       --
-----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS LibraryLang;
-- CREATE TABLE LibraryLang (
	-- LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE,
	-- Lang INTEGER NOT NULL,
	-- PRIMARY KEY (LibraryID, Lang)
-- );

INSERT INTO LibraryLang(LibraryID, Lang) VALUES(24, -2);

-----------------------------------------------------------------------------
-- TABLE Snippets                                                          --
-----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS Snippets;
-- CREATE TABLE Snippets (
	-- SnippetID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	-- LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE,
	-- Name TEXT NOT NULL,
	-- BeforeSelection TEXT NOT NULL,
	-- AfterSelection TEXT,
	-- ReplaceSelection BOOL NOT NULL DEFAULT 0,
	-- NewDocument BOOL NOT NULL DEFAULT 0,
	-- NewDocumentLang INTEGER,
	-- Sort INTEGER
-- );

-- CREATE INDEX SnipName ON Snippets(LibraryID, Name, Sort);
-- CREATE INDEX SnipSort ON Snippets(LibraryID, Sort, Name);

INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'addition', 'addition';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'algebraic form', 'algebraic form';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'area', 'area';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'associative principle', 'associative principle';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'circumference', 'circumference';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'complement of a set', 'complement of a set';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'decimal', 'decimal';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'degrees', 'degrees';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'diagram venn', 'diagram venn';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'enrichment', 'enrichment';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'even number', 'even number';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'fraction', 'fraction';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'integers', 'integers';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'interior angle', 'interior angle';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'kite', 'kite';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'lines', 'lines';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'mixed rational number', 'mixed rational number';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'natural number', 'natural number';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'numerator', 'numerator';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'odd number', 'odd number';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'paralellograms', 'paralellograms';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'power of number', 'power of number';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'proportion', 'proportion';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'rectangle', 'rectangle';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'rhombus', 'rhombus';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'scientific notation', 'scientific notation';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'sets', 'sets';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'side', 'side';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'subtraction', 'subtraction';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'the number line', 'the number line';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'trapezoid', 'trapezoid';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'triangle', 'triangle';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'union of sets', 'union of sets';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'universal set', 'universal set';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'variable', 'variable';
INSERT INTO SnippetsLibraryID, Name, BeforeSelection VALUES 24, 'whole number', 'whole number';


-----------------------------------------------------------------------------
-- TABLE LangLastUsed                                                          --
-----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS LangLastUsed;
-- CREATE TABLE LangLastUsed (
	-- Lang INTEGER PRIMARY KEY NOT NULL,
	-- LibraryID INTEGER NOT NULL REFERENCES Library(LibraryID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-----------------------------------------------------------------------------
-- Set the user version of this database                                   --
-----------------------------------------------------------------------------
PRAGMA user_version = 3;
