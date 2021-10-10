VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form9 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Admin Login"
   ClientHeight    =   3360
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   5145
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   11.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "adminLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "adminLogin.frx":2982C
   ScaleHeight     =   1985.199
   ScaleMode       =   0  'User
   ScaleWidth      =   4830.876
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   240
      Top             =   2760
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\BTRS\BTRS.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Projects\BTRS\BTRS.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from Admin"
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
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   1920
      TabIndex        =   1
      Top             =   600
      Width           =   2685
   End
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Login"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Sitka Text"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1920
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H00C0FFC0&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Sitka Text"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1920
      Width           =   1140
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   1920
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1320
      Width           =   2685
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "User Name"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   615
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   600
      Width           =   1680
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   1680
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
End
End Sub

Private Sub cmdOK_Click()
If Text1 = "" Or Text2 = "" Then
MsgBox "Please Enter Valid Details"
Text1.SetFocus
Exit Sub
End If
Adodc1.RecordSource = "select * from Admin where Username = '" + Text1.Text + "' and Password = '" + Text2.Text + "'"
Adodc1.Refresh
If Adodc1.Recordset.RecordCount = 0 Then
MsgBox " Login Failed"
Text1.Text = ""
Text2.Text = ""
Else
MsgBox "Login Successfull"
Form3.Show
Form2.Hide
Unload Me
Exit Sub
End If
End Sub

Private Sub Form_Load()
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
End Sub
