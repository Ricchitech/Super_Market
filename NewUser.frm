VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form4 
   Caption         =   "New User Registration"
   ClientHeight    =   3210
   ClientLeft      =   120
   ClientTop       =   765
   ClientWidth     =   6165
   Icon            =   "NewUser.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "NewUser.frx":2982C
   ScaleHeight     =   3210
   ScaleMode       =   0  'User
   ScaleWidth      =   6238.067
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   840
      Top             =   2520
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
   Begin VB.CommandButton newuserbtn 
      BackColor       =   &H0080FF80&
      Caption         =   "Add User"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2280
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2880
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2880
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   960
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   3
      Top             =   240
      Width           =   2895
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Confirm Password"
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
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "New Password"
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
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   2655
   End
   Begin VB.Label Label3 
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
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
   Begin VB.Menu menuhome 
      Caption         =   "Exit"
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
End Sub

Private Sub menuhome_Click()
Unload Me
End Sub

Private Sub newuserbtn_Click()
Adodc1.Recordset.AddNew
Adodc1.Recordset.Fields("Username").Value = Text1.Text
If Text2.Text = Text3.Text Then
Adodc1.Recordset.Fields("Password").Value = Text3.Text
Adodc1.Recordset.Update
MsgBox "New User Added Successfully"
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Else
MsgBox "password not matched"
Text2.Text = ""
Text3.Text = ""
End If
End Sub
