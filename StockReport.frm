VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form2 
   Caption         =   " Stock Report"
   ClientHeight    =   10635
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   20250
   BeginProperty Font 
      Name            =   "MV Boli"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "StockReport.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "StockReport.frx":2982C
   ScaleHeight     =   10635
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   13200
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   9480
      Width           =   7095
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   240
      Top             =   9360
      Visible         =   0   'False
      Width           =   1215
      _ExtentX        =   2143
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "StockReport.frx":56D7E
      Height          =   9135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   19815
      _ExtentX        =   34951
      _ExtentY        =   16113
      _Version        =   393216
      BackColor       =   16776960
      Enabled         =   0   'False
      ForeColor       =   8388736
      HeadLines       =   1
      RowHeight       =   23
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
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
            ColumnWidth     =   3509.858
         EndProperty
         BeginProperty Column01 
            Locked          =   -1  'True
            ColumnWidth     =   3600
         EndProperty
         BeginProperty Column02 
            Locked          =   -1  'True
            ColumnWidth     =   2700.284
         EndProperty
         BeginProperty Column03 
            Locked          =   -1  'True
            ColumnWidth     =   2835.213
         EndProperty
         BeginProperty Column04 
            Locked          =   -1  'True
            ColumnWidth     =   3404.977
         EndProperty
         BeginProperty Column05 
            Locked          =   -1  'True
            ColumnWidth     =   3300.095
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Search By Supplier"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9720
      TabIndex        =   2
      Top             =   9480
      Width           =   3495
   End
   Begin VB.Menu homew 
      Caption         =   "Home"
   End
   Begin VB.Menu mnurefresh 
      Caption         =   "Refresh"
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
Adodc1.RecordSource = "select * from Stock where Supplier_code ='" & Combo1 & "'"
Adodc1.Refresh
End Sub

Private Sub Form_Load()
Adodc1.Refresh
With Adodc1.Recordset
Do Until .EOF
Combo1.AddItem ![Supplier_code]
.MoveNext
Loop
End With
End Sub

Private Sub homew_Click()
Form3.Show
Unload Me
End Sub

Private Sub mnurefresh_Click()
Adodc1.RecordSource = "select * from Stock"
Adodc1.Refresh
End Sub
