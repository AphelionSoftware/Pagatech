Attribute VB_Name = "GenScript"
Global gsDtbName As String  ' Database name
Global gsDtbDescr As String  ' String containing the table description
Global gsSQLScript As String
Global gsFName As String

Public Sub GenSQL()        ' This is the subroutine called by from the button in Excel.
    ActiveWorkbook.Names.Add Name:="TableType", RefersTo:= _
    "=OFFSET(AllTables!R2C1,0,0,(COUNTA(AllTables!C1)),1)"
    ActiveWorkbook.Names("TableType").Comment = ""
    
    ActiveWorkbook.Names.Add Name:="TableName", RefersTo:= _
    "=OFFSET(AllTables!R2C2,0,0,(COUNTA(AllTables!C1)),1)"
    ActiveWorkbook.Names("TableName").Comment = ""
  
    ' Write the script header, including database create statement.

    Call WriteScriptHeader
    Call StartNewSQLFile
    
    ' Generate the DDL for each table.
    Dim rTableNames As Range
    Dim currRow As Long
    Dim strTableType As String
    Dim strTableName As String
    Dim strGenerateTables As String
    Dim strSchemaName As String
    
    For Each rTableNames In Range("TableName")
        gID = ""
        currRow = rTableNames.Row
        strTableName = rTableNames.Value
        strTableType = Range("TableType").Item(currRow, 1)
        strGenerateTables = ActiveWorkbook.Worksheets("AllTables").Cells(currRow, 9).Value
        strSchemaName = ActiveWorkbook.Worksheets("AllTables").Cells(currRow, 4).Value
        
        If strGenerateTables = "Y" Then
            gsSQLScript = ""
            Call WriteALine("DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA " & strSchemaName & "';")
            Call WriteALine("IF SCHEMA_ID('" & strSchemaName & "')IS NULL")
            Call WriteALine("EXEC sp_executesql @sql;")
            Call WriteALine("GO")
            Call WriteALine(vbCrLf)
            GenerateTableScript strTableType, strTableName, strSchemaName
            AppendTxt gsSQLScript
        End If
        
    Next rTableNames

    
MsgBox "Script Complete", vbOKOnly

    
    
    
End Sub


Sub GenerateTableScript(sTableType As String, sTableName As String, sSchemaName As String)
Dim CustomColCount As Long
Dim xRange As Range
Set xRange = Range("DimTables")

    Select Case sTableType
        Case "Dimension"
            'determine if custom columns exist
            CustomColCount = Application.CountIf(xRange, sTableName)
            If CustomColCount > 0 Then
                CreateDimensionTable sTableName, sSchemaName, False
            Else
                CreateDimensionTable sTableName, sSchemaName, True
            End If
        Case "Fact"
            CreateFactTable sTableName, sSchemaName
        Case Else
         'do nothing
    End Select
End Sub


Sub WriteScriptHeader()
    Dim oNames As Names
    Dim r As Integer
    
    ' Determine database name.
    ' If the named area "DtbName" doesn't exist, assume UNKNOWN.
    Set oNames = ActiveWorkbook.Names
    gsDtbName = "UNKNOWN"
    gsDtbDescr = ""
    For r = 1 To oNames.Count
        If oNames(r).Name = "DtbName" Then
            gsDtbName = Worksheets("Database").Range("DtbName").Value
        End If
        If oNames(r).Name = "Description" Then
            gsDtbDescr = Worksheets("Database").Range("Description").Value
        End If
    Next
    
    ' If the workbook has the named area, but it's blank, replace with UNKNOWN
    If gsDtbName = "" Then gsDtbName = "UNKNOWN"
    If gsDtbDescr = "" Then gsDtbDescr = "Default description - you should change this."
        
    ' Now determine if we're instantiating foreign keys.
    gbGenFK = False
    For r = 1 To oNames.Count
        If oNames(r).Name = "GenFK" Then
            If Range("GenFK").Value = "Y" Or Range("genFK").Value = "True" Then gbGenFK = True
            Exit For
        End If
    Next
    
    gsSQLScript = ""
    
    ' Now write the header
    Call WriteALine("/****** Object:  Database " & gsDtbName & "    Script Date: " & Date & " " & Time & " ******/")
    Call WriteALine(vbCrLf)
    Call WriteALine("USE Master;")
    Call WriteALine("GO")
    Call WriteALine(vbCrLf)
    Call WriteALine("IF DB_ID('" & gsDtbName & "') IS NOT NULL")
    Call WriteALine("DROP DATABASE " & gsDtbName & ";")
    Call WriteALine("GO")
    Call WriteALine(vbCrLf)
    Call WriteALine("CREATE DATABASE " & gsDtbName & ";")
    Call WriteALine("GO")
    Call WriteALine(vbCrLf)
    Call WriteALine("ALTER DATABASE " & gsDtbName)
    Call WriteALine("SET RECOVERY SIMPLE;")
    Call WriteALine("GO")
    Call WriteALine(vbCrLf)
    
   
    ' NOTE: SPECIFIC SETTINGS FOR A CUSTOMER CONFIGURATION
    ' TO READERS: Consider uncommenting the following bit of code, modifying as appropriate for your environment.
    'Call WriteALine("USE [master]")
    'Call WriteALine(";")
    'Call WriteALine("CREATE DATABASE [" & gsDtbName & "] ON  PRIMARY")
    'Call WriteALine("( NAME = N'" & gsDtbName & "', FILENAME = N'D:\Microsoft SQL Server\MSSQL.1\MSSQL\Data\" & gsDtbName & ".mdf' , SIZE = 11392KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ),")
    'Call WriteALine(" FILEGROUP [SECONDARY]")
    'Call WriteALine("( NAME = N'" & gsDtbName & "2', FILENAME = N'E:\Microsoft SQL Server\MSSQL\Data\" & gsDtbName & "2.ndf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)")
    'Call WriteALine(" LOG ON")
    'Call WriteALine("( NAME = N'" & gsDtbName & "_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL.1\MSSQL\Data\" & gsDtbName & "_log.ldf' , SIZE = 47616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)")
    'Call WriteALine(" COLLATE SQL_Latin1_General_CP1_CI_AS")
    'Call WriteALine(";")
    'Call WriteALine("EXEC dbo.sp_dbcmptlevel @dbname=N'" & gsDtbName & "', @new_cmptlevel=90")
    'Call WriteALine(";")
    'Call WriteALine("EXEC [" & gsDtbName & "].[dbo].[sp_fulltext_database] @action = 'enable'")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET ANSI_NULL_DEFAULT OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET ANSI_NULLS OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET ANSI_PADDING OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET ANSI_WARNINGS OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET ARITHABORT OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET AUTO_CLOSE OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET AUTO_CREATE_STATISTICS ON")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET AUTO_SHRINK OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET AUTO_UPDATE_STATISTICS ON")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET CURSOR_CLOSE_ON_COMMIT OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET CURSOR_DEFAULT  GLOBAL")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET CONCAT_NULL_YIELDS_NULL OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET NUMERIC_ROUNDABORT OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET QUOTED_IDENTIFIER OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET RECURSIVE_TRIGGERS OFF")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET  READ_WRITE")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET RECOVERY FULL")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET  MULTI_USER")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET PAGE_VERIFY CHECKSUM")
    'Call WriteALine(";")
    'Call WriteALine("ALTER DATABASE [" & gsDtbName & "] SET DB_CHAINING OFF")
    'Call WriteALine(";")
    ' END NOTE
          
    
    Call WriteALine("USE " & gsDtbName & ";")
    Call WriteALine("GO")
    
    Call WriteALine("IF EXISTS (SELECT Name FROM sys.extended_properties WHERE Name = 'Description')")
    Call WriteALine("    EXEC sys.sp_dropextendedproperty @name = 'Description'")

    Call WriteALine("EXEC sys.sp_addextendedproperty @name = 'Description', @value = '" & Left(gsDtbDescr, 128) & "';")
    Call WriteALine("GO")
    
    
    
  
End Sub

Sub CreateDimensionTable(sTableName As String, sSchemaName As String, DefaultColsOnly As Boolean)
If Len(sSchemaName) = 0 Then
    sSchemaName = "dbo"
End If

'Table Header
Call WriteALine("/* Drop table " & sTableName & " */")
Call WriteALine("IF OBJECT_ID('" & sSchemaName & "." & sTableName & "') IS NOT NULL")
Call WriteALine("DROP TABLE " & sTableName & ";")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("/* Create table " & sSchemaName & "." & sTableName & " */")
Call WriteALine("CREATE TABLE " & sSchemaName & "." & sTableName)
Call WriteALine("(")
Call WriteALine("   " & sTableName & "ID INT NOT NULL,")
Call WriteALine("   Name VARCHAR(255) NOT NULL,")
Call WriteALine("   Code VARCHAR(50) NOT NULL,")

'Insert Custom Columns here
If DefaultColsOnly = False Then
    GetCustomDimColumns sTableName
End If

Call WriteALine("   SourceKey VARCHAR(255) NOT NULL,")
Call WriteALine("   SourceKeyHash BIGINT NOT NULL,")
Call WriteALine("   DeltaHash BIGINT NOT NULL,")
Call WriteALine("   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,")
Call WriteALine("   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),")
Call WriteALine("   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,")
Call WriteALine("   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()")
Call WriteALine(");")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("ALTER TABLE " & sSchemaName & "." & sTableName)
Call WriteALine("ADD CONSTRAINT pk_" & sTableName & "ID")
Call WriteALine("PRIMARY KEY CLUSTERED")
Call WriteALine("(")
Call WriteALine("   " & sTableName & "ID")
Call WriteALine(");")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("CREATE UNIQUE NONCLUSTERED INDEX ix_" & sTableName & "_SourceKey")
Call WriteALine("ON " & sSchemaName & "." & sTableName)
Call WriteALine("(")
Call WriteALine("    SourceKey")
Call WriteALine(");")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("--Add UNIQUE Constraints...")
GetUniqueConstraints sTableName, "Dimensions", "DimTables", sSchemaName

Call WriteALine("--Add Foreign Keys...")
GetForeignKeys sTableName, "Dimensions", "DimTables", sSchemaName

Call WriteALine("--Table extended properties...")
'add extended properties for standard columns
BuildExtendedProperty "SCDType", "2", sSchemaName, sTableName, "Name"
BuildExtendedProperty "SCDType", "2", sSchemaName, sTableName, "Code"
BuildExtendedProperty "SCDType", "BusinessKey", sSchemaName, sTableName, "SourceKey"
BuildExtendedProperty "SCDType", "BusinessKeyHash", sSchemaName, sTableName, "SourceKeyHash"
BuildExtendedProperty "SCDType", "DeltaHash", sSchemaName, sTableName, "DeltaHash"

'Add Extended Properties for Custom Columns
If DefaultColsOnly = False Then
    GetCustomExtendedProperties sTableName, sSchemaName, "Dimensions"
End If

End Sub
Sub GetCustomExtendedProperties(sTableName As String, sSchemaName As String, sWorksheet)
Dim rng As Range
Dim strColName As String
Dim ws As Worksheet
Dim lCol As Variant
Dim ExtPropColNames(8) As String
Dim l As Long
Dim strTableRange As String
Dim strHeaderRange As String

ExtPropColNames(0) = "Display Name"
ExtPropColNames(1) = "Description"
ExtPropColNames(2) = "Unknown Member"
ExtPropColNames(3) = "Display Folder"
ExtPropColNames(4) = "Comments"
ExtPropColNames(5) = "SCD Type"
ExtPropColNames(6) = "Hierarchy Name"
ExtPropColNames(7) = "Aggregation Type"
ExtPropColNames(8) = "Materialise"


Set ws = ActiveWorkbook.Worksheets(sWorksheet)
Select Case sWorksheet
    Case "Dimensions"
        strTableRange = "DimTables"
        strHeaderRange = "DimHeaders"
    Case "Facts"
        strTableRange = "FactTables"
        strHeaderRange = "FactHeaders"
End Select

For Each rng In Range(strTableRange)
    If rng.Value = sTableName Then
        currRow = rng.Row
        
        strColName = Replace(ws.Cells(currRow, 2).Value, Chr(32), "")
        
        l = 0
        For l = 0 To 8
            lCol = Application.Match(ExtPropColNames(l), ws.Range(strHeaderRange), 0)
            If Not IsError(lCol) Then
                If Len(ws.Cells(currRow, CLng(lCol)).Value) > 0 Then
                   BuildExtendedProperty Replace(ExtPropColNames(l), Chr(32), ""), _
                   ws.Cells(currRow, CLng(lCol)).Value, sSchemaName, sTableName, strColName
                End If
            End If
            l = l + 1
        Next l
    End If
Next rng

End Sub
Sub BuildExtendedProperty(sName As String, sValue As String, sSchemaName As String, sTableName As String, sColumnName As String)
Dim sExtProp As String
Dim sColName As String

sColName = Replace(sColumnName, "[", "")
sColName = Replace(sColName, "]", "")

sExtProp = "exec sys.sp_addextendedproperty" & vbCrLf
sExtProp = sExtProp & "@name=N'" & sName & "'," & vbCrLf
sExtProp = sExtProp & "@value=N'" & sValue & "'," & vbCrLf
sExtProp = sExtProp & "@level0type=N'SCHEMA'," & vbCrLf
sExtProp = sExtProp & "@level0name=N'" & sSchemaName & "'," & vbCrLf
sExtProp = sExtProp & "@level1type=N'TABLE'," & vbCrLf
sExtProp = sExtProp & "@level1name=N'" & sTableName & "'," & vbCrLf
sExtProp = sExtProp & "@level2type=N'COLUMN'," & vbCrLf
sExtProp = sExtProp & "@level2name=N'" & sColName & "';" & vbCrLf
sExtProp = sExtProp & "GO" & vbCrLf

WriteALine sExtProp

End Sub
Sub CreateFactTable(sTableName As String, sSchemaName As String)
If Len(sSchemaName) = 0 Then
    sSchemaName = "dbo"
End If

Dim rFactTables As Range
Dim strColName As String
Dim strColDef As String
Dim strNull As String
Dim strDefault As String
Dim strFullLine As String

Dim lDatatype As Long
Dim lSize As Long
Dim lPrecision As Long
Dim lNull As Long
Dim lDefault As Long

Dim ws As Worksheet

Set ws = ActiveWorkbook.Worksheets("Facts")

lDatatype = Application.Match("Datatype", ws.Range("FactHeaders"), 0)
lSize = Application.Match("Size", ws.Range("FactHeaders"), 0)
lPrecision = Application.Match("Precision", ws.Range("FactHeaders"), 0)
lNull = Application.Match("NULL?", ws.Range("FactHeaders"), 0)
lDefault = Application.Match("Default Value", ws.Range("FactHeaders"), 0)

'Table Header
Call WriteALine("/* Drop table " & sTableName & " */")
Call WriteALine("IF OBJECT_ID('" & sSchemaName & "." & sTableName & "') IS NOT NULL")
Call WriteALine("DROP TABLE " & sTableName & ";")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("/* Create table " & sSchemaName & "." & sTableName & " */")
Call WriteALine("CREATE TABLE " & sSchemaName & "." & sTableName)
Call WriteALine("(")
Call WriteALine("   " & sTableName & "ID INT NOT NULL,")

'Get User Defined Columns
For Each rFactTables In Range("FactTables")
    If rFactTables.Value = sTableName Then
        currRow = rFactTables.Row
        
        strColName = Replace(ws.Cells(currRow, 2).Value, Chr(32), "")
           
        
        If Len(ws.Cells(currRow, lPrecision).Value) > 0 Then
            strColDef = ws.Cells(currRow, lDatatype).Value & "(" & ws.Cells(currRow, lSize).Value _
            & "," & ws.Cells(currRow, lPrecision).Value & ")"
        Else
            If Len(ws.Cells(currRow, lSize).Value) > 0 Then
                strColDef = ws.Cells(currRow, lDatatype).Value & "(" & ws.Cells(currRow, lSize).Value & ")"
            Else
                strColDef = ws.Cells(currRow, lDatatype).Value
            End If
        End If
        
        If Len(ws.Cells(currRow, lNull).Value) = "N" Then
            strNull = "NOT NULL"
        Else
            strNull = "NULL"
        End If
        
        If Len(ws.Cells(currRow, lDefault).Value) > 0 Then
                strDefault = "DEFAULT " & ws.Cells(currRow, lDefault).Value
        End If
        
       strFullLine = strColName & Chr(32) & UCase(strColDef) & Chr(32) & strDefault
       Call WriteALine("   " & Trim(strFullLine) & ",")
        
    End If
Next rFactTables
  
'Finish Table
Call WriteALine("   RunID INT NOT NULL")
Call WriteALine(");")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

'Add Primary Key Constraint
Call WriteALine("ALTER TABLE " & sSchemaName & "." & sTableName)
Call WriteALine("ADD CONSTRAINT pk_" & sTableName & "ID")
Call WriteALine("PRIMARY KEY CLUSTERED")
Call WriteALine("(")
Call WriteALine("   " & sTableName & "ID")
Call WriteALine(");")
Call WriteALine("GO")
Call WriteALine(vbCrLf)

Call WriteALine("--Add UNIQUE Constraints...")
GetUniqueConstraints sTableName, "Facts", "FactTables", sSchemaName

Call WriteALine("--Add Foreign Keys...")
GetForeignKeys sTableName, "Facts", "FactTables", sSchemaName

Call WriteALine("--Table extended properties...")
'Add Extended Properties for Custom Columns
GetCustomExtendedProperties sTableName, sSchemaName, "Facts"


End Sub

Sub GetCustomDimColumns(sTableName As String)
Dim rDimTables As Range
Dim strColName As String
Dim strColDef As String
Dim strNull As String
Dim strDefault As String
Dim strFullLine As String

Dim lDatatype As Long
Dim lSize As Long
Dim lPrecision As Long
Dim lNull As Long
Dim lDefault As Long

Dim ws As Worksheet

Set ws = ActiveWorkbook.Worksheets("Dimensions")

lDatatype = Application.Match("Datatype", ws.Range("DimHeaders"), 0)
lSize = Application.Match("Size", ws.Range("DimHeaders"), 0)
lPrecision = Application.Match("Precision", ws.Range("DimHeaders"), 0)
lNull = Application.Match("NULL?", ws.Range("DimHeaders"), 0)
lDefault = Application.Match("Default Value", ws.Range("DimHeaders"), 0)


    For Each rDimTables In Range("DimTables")
        If rDimTables.Value = sTableName Then
            currRow = rDimTables.Row
            
            strColName = ws.Cells(currRow, 2).Value
               
            
            If Len(ws.Cells(currRow, lPrecision).Value) > 0 Then
                strColDef = ws.Cells(currRow, lDatatype).Value & "(" & ws.Cells(currRow, lSize).Value _
                & "," & ws.Cells(currRow, lPrecision).Value & ")"
            Else
                If Len(ws.Cells(currRow, lSize).Value) > 0 Then
                    strColDef = ws.Cells(currRow, lDatatype).Value & "(" & ws.Cells(currRow, lSize).Value & ")"
                Else
                    strColDef = ws.Cells(currRow, lDatatype).Value
                End If
            End If
            
            If Len(ws.Cells(currRow, lNull).Value) = "N" Then
                strNull = "NOT NULL"
            Else
                strNull = "NULL"
            End If
            
            If Len(ws.Cells(currRow, lDefault).Value) > 0 Then
                    strDefault = "DEFAULT " & ws.Cells(currRow, lDefault).Value
            End If
            
           strFullLine = strColName & Chr(32) & UCase(strColDef) & Chr(32) & strDefault
           Call WriteALine("   " & Trim(strFullLine) & ",")
            
        End If
    Next rDimTables

End Sub
Sub GetUniqueConstraints(sTableName As String, sWorksheetName As String, sRangeName As String, sSchemaName As String)
Dim rTableNames As Range
Dim strColName As String
Dim strColDef As String
Dim strNull As String
Dim strDefault As String
Dim strFullLine As String
Dim lUniqueCol As Long
Dim ws As Worksheet

Set ws = ActiveWorkbook.Worksheets(sWorksheetName)

If sWorksheetName = "Dimensions" Then
    strColHeaders = "DimHeaders"
Else
    strColHeaders = "FactHeaders"
End If

lUniqueCol = Application.Match("UNIQUE?", ws.Range(strColHeaders), 0)



For Each rTableNames In Range(sRangeName)
    If rTableNames.Value = sTableName Then
        currRow = rTableNames.Row
        If Len(ws.Cells(currRow, lUniqueCol).Value) > 0 Then
            strColName = ws.Cells(currRow, 2).Value
            Call WriteALine("ALTER TABLE " & sSchemaName & "." & sTableName)
            Call WriteALine("ADD CONSTRAINT uc_" & sTableName & "_" & strColName)
            Call WriteALine("UNIQUE")
            Call WriteALine("(")
            Call WriteALine("   " & strColName)
            Call WriteALine(")")
            Call WriteALine("GO")
            Call WriteALine(vbCrLf)
        End If
       
    End If
Next rTableNames

End Sub

Sub GetForeignKeys(sTableName As String, sWorksheetName As String, sRangeName As String, sSchemaName As String)
Dim rTableNames As Range
Dim strColName As String
Dim strColDef As String
Dim strNull As String
Dim strDefault As String
Dim strFullLine As String
Dim strFK() As String
Dim strColHeaders As String
Dim lFKCol As Long
Dim lFKToCol As Long
Dim ws As Worksheet

Set ws = ActiveWorkbook.Worksheets(sWorksheetName)

If sWorksheetName = "Dimensions" Then
    strColHeaders = "DimHeaders"
Else
    strColHeaders = "FactHeaders"
End If
lFKCol = Application.Match("Key?", ws.Range(strColHeaders), 0)
lFKToCol = Application.Match("FK To", ws.Range(strColHeaders), 0)



For Each rTableNames In Range(sRangeName)
    If rTableNames.Value = sTableName Then
        currRow = rTableNames.Row
        If ws.Cells(currRow, lFKCol).Value = "FK" Then
            strFK = Split(ws.Cells(currRow, lFKToCol).Value, ".")
            strColName = ws.Cells(currRow, 2).Value
            Call WriteALine("IF OBJECT_ID('Shared." & strFK(0) & "') IS NOT NULL")
            Call WriteALine("   ALTER TABLE " & sSchemaName & "." & sTableName)
            Call WriteALine("   ADD CONSTRAINT fk_" & sTableName & "_" & strColName)
            Call WriteALine("   FOREIGN KEY")
            Call WriteALine("   (")
            Call WriteALine("       " & strColName)
            Call WriteALine("   )")
            Call WriteALine("   REFERENCES")
            Call WriteALine("       Shared." & strFK(0) & "(" & strFK(1) & ");")
            Call WriteALine("GO")
            Call WriteALine(vbCrLf)
        End If
       
    End If
Next rTableNames

End Sub


Sub WriteALine(sText As String)
'Write a line to the script
    gsSQLScript = gsSQLScript & sText & vbCrLf
    
End Sub



Sub AppendTxt(sText As String)

On Error GoTo Err_Handler
Dim FileNumber As Integer
FileNumber = FreeFile ' Get unused file number

Open gsFName For Append As #FileNumber
' Connect to the file

Print #FileNumber, sText
' Append our string

Close #FileNumber
' Close the file

Exit_Err_Handler: Exit Sub
Err_Handler:
    MsgBox "The following error has occured" & vbCrLf & vbCrLf & _
    "Error Number: " & Err.Number & vbCrLf & _
    "Error Source: AppendTxt" & vbCrLf & _
    "Error Description: " & Err.Description, vbCritical, "An Error has Occured!"
GoTo Exit_Err_Handler
End Sub

Sub StartNewSQLFile()
Dim intFNumber As Integer
'Get an unused file number
intFNumber = FreeFile
gsFName = ThisWorkbook.Path & "\SQLScript_" & intFNumber & ".sql"
 
 'Create a new file (or overwrite an existing one)
Open gsFName For Output As #intFNumber
Print #intFNumber, gsSQLScript
Close #intFNumber

End Sub
