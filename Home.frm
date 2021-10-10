VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Super Market"
   ClientHeight    =   10635
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   20250
   Icon            =   "Home.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Home.frx":2982C
   ScaleHeight     =   10635
   ScaleWidth      =   20250
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu usermenu 
      Caption         =   "User-Reg"
   End
   Begin VB.Menu mnustk 
      Caption         =   "Stock"
      Begin VB.Menu mnustknew 
         Caption         =   "New Stock"
      End
      Begin VB.Menu mnustkup 
         Caption         =   "Stock Update"
      End
   End
   Begin VB.Menu mnusales 
      Caption         =   "Sale-section"
   End
   Begin VB.Menu mnurepp 
      Caption         =   "Reports"
      Begin VB.Menu report1 
         Caption         =   "Stock report"
      End
      Begin VB.Menu mnurep1 
         Caption         =   "Sales report"
      End
   End
   Begin VB.Menu mnuextra 
      Caption         =   ">>"
      Begin VB.Menu mnulog 
         Caption         =   "Logout"
      End
      Begin VB.Menu exitmenu 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub exitmenu_Click()
End
End Sub

Private Sub mnulog_Click()
Form9.Show
Unload Me
End Sub

Private Sub mnurep1_Click()
Form5.Show
Unload Me
End Sub

Private Sub mnusales_Click()
Form8.Show
Unload Me
End Sub

Private Sub mnustknew_Click()
Form6.Show
Unload Me
End Sub

Private Sub mnustkup_Click()
Form7.Show
Unload Me
End Sub

Private Sub report1_Click()
Form2.Show
Unload Me
End Sub

Private Sub usermenu_Click()
Form4.Show
End Sub
