VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form7 
   Caption         =   "Update Stock"
   ClientHeight    =   10635
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   17040
   Icon            =   "Updatestock.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   Picture         =   "Updatestock.frx":2982C
   ScaleHeight     =   10635
   ScaleWidth      =   17040
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text5 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   3360
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   5
      Top             =   480
      Width           =   2775
   End
   Begin VB.TextBox Text2 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   4
      Top             =   1200
      Width           =   2775
   End
   Begin VB.TextBox Text3 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      Top             =   1920
      Width           =   2775
   End
   Begin VB.TextBox Text4 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   2640
      Width           =   2775
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   1080
      Top             =   4440
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\Super Market\SM.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\Super Market\SM.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from Stock"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton cmdcheck 
      BackColor       =   &H0000FFFF&
      Caption         =   "Get Data"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton cmdsave 
      BackColor       =   &H0000FF00&
      Caption         =   "Update"
      BeginProperty Font 
         Name            =   "Lucida Bright"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4080
      Width           =   1215
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Updatestock.frx":47500
      Height          =   6615
      Left            =   6000
      TabIndex        =   12
      Top             =   1080
      Width           =   14415
      _ExtentX        =   25426
      _ExtentY        =   11668
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   23
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   6
      BeginProperty Column00 
         DataField       =   "Product_code"
         Caption         =   "Product_code"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "Item_name"
         Caption         =   "Item_name"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "Stock_level"
         Caption         =   "Stock_level"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "Net_price"
         Caption         =   "Net_price"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column04 
         DataField       =   "Supplier_code"
         Caption         =   "Supplier_code"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column05 
         DataField       =   "Stock_date"
         Caption         =   "Stock_date"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            Locked          =   -1  'True
            ColumnWidth     =   2489.953
         EndProperty
         BeginProperty Column01 
            Locked          =   -1  'True
            ColumnWidth     =   2489.953
         EndProperty
         BeginProperty Column02 
            Locked          =   -1  'True
            ColumnWidth     =   1995.024
         EndProperty
         BeginProperty Column03 
            Locked          =   -1  'True
            ColumnWidth     =   2085.166
         EndProperty
         BeginProperty Column04 
            Locked          =   -1  'True
            ColumnWidth     =   2489.953
         EndProperty
         BeginProperty Column05 
            Locked          =   -1  'True
            ColumnWidth     =   2489.953
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Product Code"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   240
      TabIndex        =   10
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Product Name"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   1200
      Width           =   2535
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Stock Qty"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier Code"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   3360
      Width           =   2775
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "Net Price"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Menu mnuhm 
      Caption         =   "Home"
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdcheck_Click()
Adodc2.RecordSource = "select * from Stock where Product_code = '" + Text1.Text + "'"
Adodc2.Refresh
If Adodc2.Recordset.RecordCount = 0 Then
MsgBox "Invalid Product code"
Adodc2.RecordSource = "select * from Stock"
Adodc2.Refresh
ElseIf Adodc2.Recordset.RecordCount = 1 Then
Text2 = Adodc2.Recordset("Item_name")
Text3 = Adodc2.Recordset("Stock_level")
Text4 = Adodc2.Recordset("Net_price")
Text5 = Adodc2.Recordset("Supplier_code")
cmdsave.Visible = True
End If
End Sub

Private Sub cmdsave_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Text4.Text = "" Then
MsgBox "Enter Correct Details"
Else
Adodc2.RecordSource = "select * from Stock where Product_code = '" + Text1.Text + "'"
Adodc2.Refresh
Adodc2.Recordset.Fields("Product_code").Value = Text1.Text
Adodc2.Recordset.Fields("Item_name").Value = Text2.Text
Adodc2.Recordset.Fields("Stock_level").Value = Text3.Text
Adodc2.Recordset.Fields("Net_price").Value = Text4.Text
Adodc2.Recordset.Fields("Stock_date").Value = Format(Now, "dd/mm/yyyy")
Adodc2.Recordset.Fields("Supplier_code").Value = Text5.Text
Adodc2.Recordset.Update
MsgBox "Data Updated"
Adodc2.RecordSource = "select * from Stock"
Adodc2.Refresh
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text4.Text = ""
cmdsave.Visible = False
End If
End Sub

Private Sub Form_Load()
cmdsave.Visible = False
End Sub

Private Sub mnuhm_Click()
Form3.Show
Unload Me
End Sub
