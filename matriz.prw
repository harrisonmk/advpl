#Include "TOTVS.CH"

User Function Matrizexe()

Local aArray := {{12, 8, 15, 7,5,1, 6, 30, -9,6},;
                {0, 4, 2, -8,11,20, 11, 45, 10,64},;
                 {20, 21, 22, 23,45,24, 25, 60, 26,13},;
                {17, 28, 29, 41,67,36, 66, 77, 55,100},;
                {12, 8, 15, 7,60,1, 6, 30, -9,13},;
                {0, 4, 2, -8,18,20, 11, 45, 10,54},;
                 {20, 21, 22, 23,65,24, 25, 60, 26,654},;
                {17, 28, 29, 41,69,36, 66, 77, 55,58},;
                {12, 8, 15, 7,42,1, 999, 30, -9,41},;
                {0, 4, 2, -8,21,20, 11, 45, 10,47}}



                 
        
        Local linha := 1
        Local coluna  := 1   
        Local i         
        Local j
        Local matriz := aArray[1][1]
         



For i := 1 To LEN( aArray )
    
    For j := 1 To LEN( aArray )
        If aArray[i][j] > matriz
           matriz := aArray[i][j]
           linha := i
           coluna := j
           
        EndIf
    Next 
Next 

    MsgAlert("maior Valor: " + cValTochar(matriz))  

Return 
