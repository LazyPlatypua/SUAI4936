VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserInterface 
   Caption         =   "Пользовательский интерфейс"
   ClientHeight    =   4416
   ClientLeft      =   36
   ClientTop       =   384
   ClientWidth     =   14772
   OleObjectBlob   =   "UserInterface.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserInterface"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub apricotCost_Change()

End Sub

Private Sub apricotPart1_Change()

End Sub

Private Sub apricotPart2_Change()

End Sub

Private Sub apricotprice_Change()

End Sub

Private Sub apricotStock_Change()

End Sub

Private Sub bananaCost_Change()
 Range("B4").Value = CDec(Me.bananaCost)

End Sub

Private Sub bananaPart1_Change()

End Sub

Private Sub bananaPart2_Change()

End Sub

Private Sub bananaprice_Change()

End Sub

Private Sub bananaStock_Change()

End Sub

Private Sub cocochipsCost_Change()

End Sub

Private Sub cocochipsPart1_Change()

End Sub

Private Sub cocochipsPart2_Change()

End Sub

Private Sub cocochipsprice_Change()

End Sub

Private Sub cocochipsStock_Change()

End Sub

Private Sub Frame2_Click()

End Sub

Private Sub Frame3_Click()

End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label4_Click()

End Sub

Private Sub Label5_Click()

End Sub

Private Sub mixprice1_Change()

End Sub

Private Sub mixprice2_Change()

End Sub

Private Sub nutsCost_Change()

End Sub

Private Sub nutsPart1_Change()

End Sub

Private Sub nutsPart2_Change()

End Sub

Private Sub nutsprice_Change()

End Sub

Private Sub nutsStock_Change()

End Sub

Private Sub percentage_Change()

End Sub

Private Sub raisinCost_Change()

End Sub

Private Sub raisinPart1_Change()

End Sub

Private Sub raisinPart2_Change()

End Sub

Private Sub raisinprice_Change()

End Sub

Private Sub raisinStock_Change()

End Sub

Private Sub startSolver_Click()

End Sub


Private Sub UserInterface_Initialise()
    Me.bananaCost = Range("B4").Value
    Me.apricotCost = Range("B5").Value
    Me.cocochipsCost = Range("B6").Value
    Me.raisinCost = Range("B7").Value
    Me.nutsCost = Range("B8").Value
    
    Me.mixprice1 = Range("C2").Value
    Me.mixprice2 = Range("C3").Value
    Me.bananaPrice = Range("C4").Value
    Me.apricotPrice = Range("C5").Value
    Me.cocochipsPrice = Range("C6").Value
    Me.raisinPrice = Range("C7").Value
    Me.nutsPrice = Range("C8").Value
    
    Me.bananaStock = Range("J4").Value
    Me.apricotStock = Range("J5").Value
    Me.cocochipsStock = Range("J6").Value
    Me.raisinStock = Range("J7").Value
    Me.nutsStock = Range("J8").Value
    
    Me.bananaPart1 = Range("B12").Value
    Me.apricotPart1 = Range("C12").Value
    Me.cocochipsPart1 = Range("D12").Value
    Me.raisinPart1 = Range("E12").Value
    Me.nutsPart1 = Range("F12").Value
    
    Me.bananaPart2 = Range("B13").Value
    Me.apricotPart2 = Range("C13").Value
    Me.cocochipsPart2 = Range("D13").Value
    Me.raisinPart2 = Range("E13").Value
    Me.nutsPart2 = Range("F13").Value
    
    Me.percentage = Range("G13").Value
End Sub
