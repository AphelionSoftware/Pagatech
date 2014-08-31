Attribute VB_Name = "GenerateTables"
Public Sub BuildFacts()

Dim WS_Count As Integer
Dim i As Integer
Dim intPos As Integer
Dim strWS As String
Dim FactLastRow As Long

'Clear Existing Rows

Worksheets("Facts").Range("A3").Select
Range(Selection, Selection.End(xlDown)).Select
Range(Selection, Selection.End(xlToRight)).Select
Selection.Delete Shift:=xlUp
ActiveWorkbook.Save

' Set WS_Count equal to the number of worksheets in the active
' workbook.
WS_Count = ActiveWorkbook.Worksheets.Count

' Begin the loop.
For i = 1 To WS_Count

       
    intPos = InStr(1, ActiveWorkbook.Worksheets(i).Name, "bx")
    If intPos > 0 Then
        strWS = ActiveWorkbook.Worksheets(i).Name
        
        Dim strColumnName As String
        Dim strDimTableName As String
        Dim strFactTableName As String
        Dim strAddColumn As String
        
        Dim ws As Worksheet
        Set ws = ActiveWorkbook.Worksheets(strWS)
        
        Debug.Print ws.Name
        GetDimColumns ws
        GetMeasures ws
            
    End If
Next i
SortFactsWS

ActiveWorkbook.Names.Add Name:="FactTables", RefersTo:= _
    "=OFFSET(Facts!R2C1,0,0,(COUNTA(Facts!C1)),1)"
    ActiveWorkbook.Names("FactTables").Comment = ""
    
ActiveWorkbook.Names.Add Name:="FactColumns", RefersTo:= _
    "=OFFSET(Facts!R2C2,0,0,(COUNTA(Facts!C1)),1)"
    ActiveWorkbook.Names("FactTables").Comment = ""
End Sub
Sub GetDimColumns(ws As Worksheet)
Dim FirstMeasureRow As Long
Dim FirstFactCol As Long

Dim strDimTableName As String
Dim strAddColumn As String
Dim strNewTable As String
Dim sParsedName() As String
Dim FactLastRow As Long
Dim colOrder As Long
Dim sFormattedColName As String

Dim chkTableExists As Variant

FirstMeasureRow = 3
FirstFactCol = 2
colOrder = 1
Do Until IsEmpty(ws.Cells(FirstMeasureRow, FirstFactCol))

    strNewTable = Replace(ws.Cells(FirstMeasureRow, FirstFactCol).Value, Chr(32), "")
    strParsed = Split(strNewTable, ".")

    'Get dim column name
    sRawTableName = Replace(ws.Cells(FirstMeasureRow, FirstFactCol).Value, Chr(32), "")
    sParsedName = Split(sRawTableName, ".")
    
    
    'make sure the table actually exists in the "AllTables" List
    chkTableExists = (Application.Match(sParsedName(0), Worksheets("AllTables").Range("BusMatrixName"), 0))
    'named range starts at row two, so you'll need to add one to the row position to get
    'the right tablename in the next step
    
    If Not IsError(chkTableExists) Then
        strDimTableName = ActiveWorkbook.Worksheets("AllTables").Cells(chkTableExists + 1, 2).Value
        If UBound(sParsedName()) > 0 Then
             sFormattedColName = "Dim" & sParsedName(UBound(sParsedName)) & "ID"
        Else
            sFormattedColName = strDimTableName & "ID"
        End If
        'loop through fact tables and add the dim column for each one
        FirstMeasureRow = FirstMeasureRow + 1

        Do Until IsEmpty(ws.Cells(FirstMeasureRow, 1))
            FactLastRow = Worksheets("Facts").Range("A" & Rows.Count).End(xlUp).Row
            strTableName = "Fact" & Replace(ws.Cells(FirstMeasureRow, 1).Value, Chr(32), "")
            strAddColumn = ws.Cells(FirstMeasureRow, FirstFactCol).Value
            If strAddColumn = "X" Then

                With Worksheets("Facts")
                    '1  [A] TableName
                        .Cells(FactLastRow + 1, 1).Value = strTableName
                    '2  [B] Column Name
                        .Cells(FactLastRow + 1, 2).Value = sFormattedColName
                    '3  [C] Display Name
                        .Cells(FactLastRow + 1, 3).Value = sFormattedColName
                    '4  [D] Description
                    '5  [E] Unknown Member
                    '6  [F] Display Folder
                    '7  [G] Comments
                    '8  [H] DataType
                        .Cells(FactLastRow + 1, 8).Value = "INT"
                    '9  [I] Size
                    '10 [J] Precision
                    '11 [K] NULL?
                        .Cells(FactLastRow + 1, 11).Value = "N"
                    '12 [L] Default Value
                    '13 [M] FK?
                        .Cells(FactLastRow + 1, 13).Value = "FK"
                    '14 [N] FK Refers to
                    If UBound(sParsedName()) > 0 Then
                        .Cells(FactLastRow + 1, 14).Value = strDimTableName & "." & "Dim" & sParsedName(0) & "ID"
                    Else
                        .Cells(FactLastRow + 1, 14).Value = strDimTableName & "." & sFormattedColName
                    End If
                       
                    '15 [O] UNIQUE?
                    '16 [P] HierarchyName
                    '17 [Q] Aggregation Type
                    '18 [R] Materialise
                    '19 ColOrder
                        .Cells(FactLastRow + 1, 19).Value = colOrder
                End With
            End If
            FirstMeasureRow = FirstMeasureRow + 1
            colOrder = colOrder + 1
        Loop
        FirstMeasureRow = 3
        FirstFactCol = FirstFactCol + 1
    End If
Loop
End Sub

Sub GetMeasures(ws As Worksheet)
Dim FirstMeasureRow As Long
Dim LastMeasureRow As Long

Dim FirstFactCol As Long
Dim LastFactCol As Long

Dim FactNameRow As Long

Dim sFactTableName As String
Dim sRawTableName
Dim strAddColumn As String
Dim FactLastRow As Long
Dim colOrder As Long
Dim chkTableExists As Variant

Dim i As Long

Dim MeasureLoop As Long
Dim FactLoop As Long

'get start positions
For i = 1 To 30 'hopefully the measures aren't any farther down than this
    If ws.Cells(i, 1).Value = "Measures" Then
        FactNameRow = i
        FirstMeasureRow = i + 1
        Exit For
    End If
Next i
FirstFactCol = 2

'get stop position for fact table names
ws.Activate
ws.Range("A" & FactNameRow).Select
Selection.End(xlToRight).Select
LastFactCol = ActiveCell.Column

'get stop position for measure names
ws.Range("A" & FirstMeasureRow).Select
Selection.End(xlDown).Select
LastMeasureRow = ActiveCell.Row
    
    
'not sure how this is being used
colOrder = 1000
FactLoop = FirstFactCol
 
'loop through fact tables and add the measure for each one
For FactLoop = FirstFactCol To LastFactCol
        
    sRawTableName = Replace(ws.Cells(FactNameRow, FactLoop).Value, Chr(32), "")
    sFactTableName = "Fact" & sRawTableName
        
    'make sure the table actually exists in the "AllTables" List
    chkTableExists = (Application.Match(sRawTableName, Worksheets("AllTables").Range("BusMatrixName"), 0))
    If Not IsError(chkTableExists) Then
        
       For MeasureLoop = FirstMeasureRow To LastMeasureRow
            FactLastRow = Worksheets("Facts").Range("A" & Rows.Count).End(xlUp).Row
            strColumnName = Replace(ws.Cells(MeasureLoop, 1).Value, Chr(32), "")
            strAddColumn = ws.Cells(MeasureLoop, FactLoop).Value
            If strAddColumn = "X" Then
                
                With Worksheets("Facts")
                    '1  [A] TableName
                        .Cells(FactLastRow + 1, 1).Value = sFactTableName
                    '2  [B] Column Name
                        .Cells(FactLastRow + 1, 2).Value = strColumnName
                    '3  [C] Display Name
                        .Cells(FactLastRow + 1, 3).Value = strColumnName
                    '4  [D] Description
                    '5  [E] Unknown Member
                    '6  [F] Display Folder
                    '7  [G] Comments
                    '8  [H] DataType
                        .Cells(FactLastRow + 1, 8).Value = "DECIMAL"
                    '9  [I] Size
                        .Cells(FactLastRow + 1, 9).Value = "18"
                    '10 [J] Precision
                        .Cells(FactLastRow + 1, 10).Value = "2"
                    '11 [K] NULL?
                        .Cells(FactLastRow + 1, 11).Value = "N"
                    '12 [L] Default Value
                    '13 [M] FK?
                    '14 [N] FK Refers to
                    '15 [O] UNIQUE?
                    '16 [P] HierarchyName
                    '17 [Q] Aggregation Type
                    '18 [R] Materialise
                    '19 [S] ColOrder
                        .Cells(FactLastRow + 1, 19).Value = colOrder
                End With
            End If
            MeasureLoop = MeasureLoop + 1
        Next MeasureLoop
     End If
    colOrder = colOrder + 1
    FactLoop = FactLoop + 1
Next FactLoop
End Sub


Public Sub BuildTableList()
    Dim WS_Count As Integer
    Dim i As Integer
    Dim intPos As Integer
    Dim strWS As String
    Dim FirstMeasureRow As Long
    Dim FirstFactCol As Long
    Dim LastRow As Long
     
    'Clear Existing Rows
    With Worksheets("AllTables")
            LastRow = .Range("A" & Rows.Count).End(xlUp).Row
    End With
    ActiveWorkbook.Worksheets("AllTables").Range("A2:K" & LastRow).Delete
    ActiveWorkbook.Save
    
    ' Set WS_Count equal to the number of worksheets in the active
    ' workbook.
    WS_Count = ActiveWorkbook.Worksheets.Count
    
    ' Begin the loop.
    For i = 1 To WS_Count
    
      ' Insert your code here.
      ' The following line shows how to reference a sheet within
      ' the loop by displaying the worksheet name in a dialog box.
       
        intPos = InStr(1, ActiveWorkbook.Worksheets(i).Name, "bx")
        If intPos > 0 Then
            Dim Value As Variant
            Dim j As Long
            Dim TableList As Variant
            ReDim TableList(0, 0)
            
            Dim strExistingColumn As String
            Dim strNewColumn As String
            Dim strParsedColumn() As String
                
            strWS = ActiveWorkbook.Worksheets(i).Name
            
            
            Dim ws As Worksheet
            Set ws = ActiveWorkbook.Worksheets(strWS)
            
            Dim i As Long

            For i = 1 To 10 'hopefully the bus matrix isn't any farther down than this
                If ws.Cells(i, 1).Value = "Measures" Then
                    FirstMeasureRow = i
                    Exit For
                End If
            Next i

            GetTableNames 3, 2, "Dim", ws
            GetTableNames 4, 1, "Fact", ws
 
        End If
        
   Next i

   
End Sub
Sub GetTableNames(FirstMeasureRow As Long, FirstFactCol As Long, sPrefix As String, ws As Worksheet)
Dim sRawTableName As String
Dim sFormattedTableName As String
Dim sParsedName() As String
Dim strWS As String

strWS = ws.Name

Do Until IsEmpty(ws.Cells(FirstMeasureRow, FirstFactCol))
    LastRow = Worksheets("AllTables").Range("A" & Rows.Count).End(xlUp).Row
    
    sRawTableName = Replace(ws.Cells(FirstMeasureRow, FirstFactCol).Value, Chr(32), "")
    sParsedName = Split(sRawTableName, ".")
    sFormattedTableName = sPrefix & sParsedName(0)
    
    If IsError(Application.Match(sFormattedTableName, Worksheets("AllTables").Range("B2:B" & LastRow), 0)) Then
        'add to list
        With Worksheets("AllTables")
            LastRow = .Range("A" & Rows.Count).End(xlUp).Row
    
            '1 = Table Type
            '2 = Table Name
            '3 = Display Name
            '4 = Database Schema
            '5 = Table Description
            '6 = Comment
            '7 = Biz Filter Logic
            '8 = Size
            '9 = Generate Script?
            '11 = Bus Matrix Name
            If sPrefix = "Dim" Then
                .Cells(LastRow + 1, 1).Value = "Dimension"
            Else
                .Cells(LastRow + 1, 1).Value = "Fact"
            End If
            .Cells(LastRow + 1, 2).Value = sFormattedTableName
            .Cells(LastRow + 1, 3).Value = sFormattedTableName
            
            If sPrefix = "Dim" Then
                .Cells(LastRow + 1, 4).Value = "Shared"
            Else
                .Cells(LastRow + 1, 4).Value = Replace(Mid(strWS, 4, Len(strWS) - 1), Chr(32), "")
            End If
            
            .Cells(LastRow + 1, 9).Value = "N"
            .Cells(LastRow + 1, 11).Value = sParsedName(0)
    
        End With
    End If
    
    If sPrefix = "Dim" Then
        FirstFactCol = FirstFactCol + 1
    Else
        FirstMeasureRow = FirstMeasureRow + 1
    End If
Loop

'TODO: Add code to refresh named ranges

End Sub


Public Sub AddDistinctFactTables()
    Dim WS_Count As Integer
    Dim i As Integer
    Dim intPos As Integer
    Dim strWS As String
    Dim FirstMeasureRow As Long
    Dim FirstFactCol As Long
    Dim LastRow As Long
    Dim rng As Range
    
    'Clear Existing Rows
    With Worksheets("AllTables")
            LastRow = .Range("A" & Rows.Count).End(xlUp).Row
    End With
    
    For Each rng In Range("TableType")
        If rng.Value = "Fact" Then
            FirstMeasureRow = rng.Row
            Exit For
        End If
    Next rng
    
    If FirstMeasureRow > 0 Then
        ActiveWorkbook.Worksheets("AllTables").Range("A" & FirstMeasureRow & ":K" & LastRow).Delete
    End If
    'ActiveWorkbook.Save
    
    ' Set WS_Count equal to the number of worksheets in the active
    ' workbook.
    WS_Count = ActiveWorkbook.Worksheets.Count
    
    ' Begin the loop.
    For i = 1 To WS_Count
    
      ' Insert your code here.
      ' The following line shows how to reference a sheet within
      ' the loop by displaying the worksheet name in a dialog box.
       
        intPos = InStr(1, ActiveWorkbook.Worksheets(i).Name, "bx")
        If intPos > 0 Then
            Dim Value As Variant
            Dim j As Long
            Dim TableList As Variant
            ReDim TableList(0, 0)
            
            Dim strExistingColumn As String
            Dim strNewColumn As String
            Dim strParsedColumn() As String
                
            strWS = ActiveWorkbook.Worksheets(i).Name
            
            
            Dim ws As Worksheet
            Set ws = ActiveWorkbook.Worksheets(strWS)
            
            'GetFacts
            GetTableNames 4, 1, "Fact", ws
        End If
   Next i

    SortAllTablesWS
   
End Sub
Public Sub InsertDimFK()
Dim rTableName As Range
Dim LastRow As Long
Dim ws As Worksheet
Dim sTableName As String
Dim sColumnName As String
Dim sFKTable As String

Set ws = ActiveWorkbook.Worksheets("AllTables")

For Each rTableName In Range("TableName")
    If ws.Cells(rTableName.Row, 1).Value = "Dimension" Then
        If Len(ws.Cells(rTableName.Row, 10).Value) > 0 Then
            LastRow = Worksheets("Dimensions").Range("A" & Rows.Count).End(xlUp).Row
            sTableName = ws.Cells(rTableName.Row, 2).Value
            sFKTable = ws.Cells(rTableName.Row, 10).Value
            sColumnName = ws.Cells(rTableName.Row, 10).Value & "ID"
            With Worksheets("Dimensions")
                    '1  [A] TableName
                        .Cells(LastRow + 1, 1).Value = sTableName
                    '2  [B] Column Name
                        .Cells(LastRow + 1, 2).Value = sColumnName
                    '3  [C] Display Name
                        .Cells(LastRow + 1, 3).Value = sColumnName
                    '4  [D] Description
                    '5  [E] Unknown Member
                    '6  [F] Display Folder
                    '7  [G] Comments
                    '8  SCD Type
                        .Cells(LastRow + 1, 8).Value = "INT"
                    '9  DataType
                    '10  [I] Size
                    '11 [J] Precision
                    '12 [K] NULL?
                        .Cells(LastRow + 1, 12).Value = "N"
                    '13 [L] Default Value
                    '14 UNIQUE?
                    '15 [M] FK?
                        .Cells(LastRow + 1, 15).Value = "FK"
                    '16 [N] FK Refers to
                        .Cells(LastRow + 1, 16).Value = sFKTable & "." & sColumnName
                End With
        End If
    End If
Next rTableName

End Sub
Sub PopulateFKTo()
Dim rTableName As Range
Dim LastRow As Long
Dim ws As Worksheet
Dim l As Long
Dim strColName As String

Set ws = ActiveWorkbook.Worksheets("Dimensions")
LastRow = ws.Range("A" & Rows.Count).End(xlUp).Row

l = 3

For l = 3 To LastRow
    If ws.Cells(l, 15).Value = "FK" Then
        strColName = ws.Cells(l, 2).Value
        ws.Cells(l, 16).Value = Left(strColName, Len(strColName) - 2) & "." & strColName
    End If
Next l

            
End Sub
Public Sub SortFactsWS()
    Dim xlSort As XlSortOrder
    Dim LastRow As Long
    
    With ActiveWorkbook.Worksheets("Facts")
    
        LastRow = .Cells(.Rows.Count, "A").End(xlUp).Row
        xlSort = xlAscending
        
        
        .Range("A2:S" & LastRow).Sort _
        Key1:=.Range("A2"), Key2:=.Range("S2"), _
        Order1:=xlSort, Header:=xlYes, _
        OrderCustom:=1, _
        MatchCase:=False, _
        Orientation:=xlTopToBottom, _
        DataOption1:=xlSortNormal
    
        With .Range("A3:S" & LastRow).Borders(xlEdgeLeft)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
        With .Range("A3:S" & LastRow).Borders(xlEdgeTop)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
        With .Range("A3:S" & LastRow).Borders(xlEdgeBottom)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
        With .Range("A3:S" & LastRow).Borders(xlEdgeRight)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
        With .Range("A3:S" & LastRow).Borders(xlInsideVertical)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
        With .Range("A3:S" & LastRow).Borders(xlInsideHorizontal)
            .LineStyle = xlContinuous
            .ColorIndex = 0
            .TintAndShade = 0
            .Weight = xlThin
        End With
    
    End With
    ActiveWorkbook.Save
    End Sub
    
    Public Sub SortAllTablesWS()
        Dim xlSort As XlSortOrder
        Dim LastRow As Long
        
        With ActiveWorkbook.Worksheets("AllTables")
        
            LastRow = .Cells(.Rows.Count, "A").End(xlUp).Row
            xlSort = xlAscending
                       
            .Range("A2:K" & LastRow).Sort _
            Key1:=.Range("A1"), Key2:=.Range("B1"), _
            Order1:=xlSort, Header:=xlYes, _
            OrderCustom:=1, _
            MatchCase:=False, _
            Orientation:=xlTopToBottom, _
            DataOption1:=xlSortNormal
            
            
            With .Range("A2:K" & LastRow).Borders(xlEdgeLeft)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
            With .Range("A2:K" & LastRow).Borders(xlEdgeTop)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
            With .Range("A2:K" & LastRow).Borders(xlEdgeBottom)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
            With .Range("A2:K" & LastRow).Borders(xlEdgeRight)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
            With .Range("A2:K" & LastRow).Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
            With .Range("A2:K" & LastRow).Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .ColorIndex = 0
                .TintAndShade = 0
                .Weight = xlThin
            End With
    End With
    ActiveWorkbook.Save
End Sub
    
   
