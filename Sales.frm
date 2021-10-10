VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form8 
   Caption         =   "Sales Section"
   ClientHeight    =   8580
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   18795
   LinkTopic       =   "Form8"
   Picture         =   "Sales.frx":0000
   ScaleHeight     =   8580
   ScaleWidth      =   18795
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FF80FF&
      Caption         =   "Scan Code"
      BeginProperty Font 
         Name            =   "Lucida Bright"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   1800
      Width           =   1455
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   9240
      Top             =   360
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
      RecordSource    =   "select * from sale"
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
   Begin VB.CommandButton Command2 
      BackColor       =   &H0000FF00&
      Caption         =   "Get Bill"
      BeginProperty Font 
         Name            =   "Lucida Bright"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   6000
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FFFF&
      Caption         =   "New Bill"
      BeginProperty Font 
         Name            =   "Lucida Bright"
         Size            =   12
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      DataSource      =   "Adodc1"
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   3
      Top             =   360
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
      Left            =   3480
      TabIndex        =   2
      Top             =   1080
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
      Left            =   3480
      TabIndex        =   1
      Top             =   1800
      Width           =   2775
   End
   Begin VB.TextBox Text4 
      DataSource      =   "Adodc1"
      Enabled         =   0   'False
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
      Left            =   3480
      TabIndex        =   0
      Top             =   2520
      Width           =   2775
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   9120
      Top             =   720
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
   Begin VB.Label Label11 
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
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   3480
      TabIndex        =   17
      Top             =   3240
      Width           =   2775
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "MRP (Rs)"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   3480
      TabIndex        =   14
      Top             =   5400
      Width           =   2775
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "SGST (Rs)"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   3480
      TabIndex        =   13
      Top             =   4680
      Width           =   2775
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "CGST (Rs)"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   3480
      TabIndex        =   12
      Top             =   3960
      Width           =   2775
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "MRP (Rs)"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   11
      Top             =   5400
      Width           =   2775
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "SGST"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   10
      Top             =   4680
      Width           =   2775
   End
   Begin VB.Label Label4 
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
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   9
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Invoice Number"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   8
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Buyer Name"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   7
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Label Label3 
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
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   6
      Top             =   1800
      Width           =   2535
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "CGST"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   5
      Top             =   3960
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
      ForeColor       =   &H80000007&
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   3240
      Width           =   1815
   End
   Begin VB.Menu mnuhmm 
      Caption         =   "Home"
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim invcode As String

Private Sub Command1_Click()
Call AutoReg
Adodc1.Recordset.AddNew
Text1 = Format(invcode, "B000")
Command3.Visible = True
End Sub

Private Sub Command2_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Then
MsgBox "Enter Correct Details"
Else
Adodc1.Recordset.Fields("Invoice_id").Value = Text1.Text
Adodc1.Recordset.Fields("Buyer").Value = Text2.Text
Adodc1.Recordset.Fields("Product_code").Value = Text3.Text
Adodc1.Recordset.Fields("Item_name").Value = Text4.Text
Adodc1.Recordset.Fields("Net_price").Value = Label11.Caption
Adodc1.Recordset.Fields("CGST").Value = Label8.Caption
Adodc1.Recordset.Fields("SGST").Value = Label9.Caption
Adodc1.Recordset.Fields("MRP").Value = Label10.Caption
Adodc1.Recordset.Fields("Invoice_date").Value = Format(Now, "dd/mm/yyyy")
Adodc1.Recordset.Update
MsgBox "Done"
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Label11.Caption = ""
Label8.Caption = ""
Label9.Caption = ""
Label10.Caption = ""
Command2.Visible = False
End If
End Sub

Private Sub Command3_Click()
Adodc2.RecordSource = "select * from Stock where Product_code = '" + Text3.Text + "'"
Adodc2.Refresh
If Adodc2.Recordset.RecordCount = 0 Then
MsgBox "Invalid Product code"
ElseIf Adodc2.Recordset.RecordCount = 1 Then
Text4 = Adodc2.Recordset("Item_name")
Label11 = Adodc2.Recordset("Net_price")
Label8 = Val(Label11) * 0.09
Label9 = Val(Label11) * 0.09
Label10 = Val(Label11) + Val(Label8) + Val(Label9)
Command2.Visible = True
End If
End Sub

Private Sub Form_Load()
Command2.Visible = False
Command3.Visible = False
End Sub

Private Sub mnuhmm_Click()
Form3.Show
Unload Me
End Sub

Public Sub AutoReg()
On Error GoTo Err_id
Adodc1.Refresh
If Adodc1.Recordset.RecordCount = 0 Then
invcode = 1
Else
Adodc1.Recordset.MoveLast
invcode = Mid(Adodc1.Recordset("Invoice_id"), 2, 3) + 1
Adodc1.Refresh
End If
Exit Sub
Err_id:
invcode = 1
MsgBox "Error Found", vbCritical, "Super Market"
End Sub


