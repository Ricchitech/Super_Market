VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00FF0000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4470
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7185
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   FillColor       =   &H00C0C0FF&
   FillStyle       =   0  'Solid
   Icon            =   "Splash.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4470
   ScaleWidth      =   7185
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   4200
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   6480
      Top             =   0
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "MARKET"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1215
      Left            =   2760
      TabIndex        =   1
      Top             =   2160
      Width           =   4095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "SUPER"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1095
      Left            =   480
      TabIndex        =   0
      Top             =   1080
      Width           =   3975
   End
   Begin VB.Image Image1 
      Height          =   4575
      Left            =   0
      Picture         =   "Splash.frx":2982C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7185
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
End Sub


Private Sub Timer1_Timer()
ProgressBar1.Value = ProgressBar1.Value + 5
If (ProgressBar1.Value = ProgressBar1.Max) Then
Timer1.Enabled = False
Form9.Show
Unload Me
End If
End Sub
