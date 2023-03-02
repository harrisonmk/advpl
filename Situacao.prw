#Include "TOTVS.CH"
#INCLUDE "Protheus.ch"

User Function Situacao()

	Local aAlunos := {}
	Local i


//Indice       1     2
	aAdd(aAlunos,{"João",10})    //indice 1
	aAdd(aAlunos,{"Antonio",5})  //indice 2
	aAdd(aAlunos,{"Paulo",3})     //indice 3
	aAdd(aAlunos,{"Carlos",7})    //indice 4
	aAdd(aAlunos,{"Eduardo",9})    //indice 5




	For i := 1 To LEN(aAlunos)
		If aAlunos[i][2] >= 7 .And.  aAlunos[i][2]  <= 10

			MSGINFO("Foram Aprovados: " + aAlunos[i][1])

		ElseIf aAlunos[i][2] >= 5 .And.  aAlunos[i][2]  <= 6

			MSGALERT("Ficaram De recuperacao: " + cValTochar(aAlunos[i][1]))

		ElseIf aAlunos[i][2] >= 1 .And.  aAlunos[i][2]  <= 4

			MSGINFO("Repetiram de ano: " + cValTochar(aAlunos[i][1]))

		EndIf
	Next i


Return
