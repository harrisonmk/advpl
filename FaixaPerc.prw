#Include "TOTVS.CH"


User Function FaixaPerc()


	Local aPessoas := {}
	Local i
	Local cont := 0,cont2 :=0,cont3 :=0,cont4 :=0,cont5 :=0
	Local totalPessoas := 15
	Local calculaP,CalculaU

//Indice             1     2
	aAdd(aPessoas,{"Paulo",31})
	aAdd(aPessoas,{"Joao",12})
	aAdd(aPessoas,{"Antonio",16})
	aAdd(aPessoas,{"Marcos",13})
	aAdd(aPessoas,{"Diogo",15})
	aAdd(aPessoas,{"Carlos",46})
	aAdd(aPessoas,{"Amando",24})
	aAdd(aPessoas,{"Roberto",28})
	aAdd(aPessoas,{"Vanessa",35})
	aAdd(aPessoas,{"Maria ",86})
	aAdd(aPessoas,{"Tadeu",45})
	aAdd(aPessoas,{"Ulisses",54})
	aAdd(aPessoas,{"Claudia",56})
	aAdd(aPessoas,{"Eduardo",61})
	aAdd(aPessoas,{"Matheus",72})


	For i := 1 To LEN(aPessoas)

		If aPessoas[i][2] <= 15

			cont++
			calculaP := (cont / totalPessoas) * 100

		ElseIf aPessoas[i][2] >= 16 .And.  aPessoas[i][2]  <= 30

			cont2++

		ElseIf aPessoas[i][2] >= 31 .And.  aPessoas[i][2]  <= 45

			cont3++

		ElseIf aPessoas[i][2] >= 46 .And.  aPessoas[i][2]  <= 60

			cont4++

		ElseIf aPessoas[i][2] >= 61

			cont5++
			CalculaU :=  (cont5 / totalPessoas) * 100

		EndIf
	Next i



	MSGINFO("Quantidade de Pessoas ate 15 anos: " + cValTochar((cont)))
	MSGINFO("Quantidade de Pessoas Entre 16 e 30 anos: " + cValTochar((cont2)))
	MSGINFO("Quantidade de Pessoas Entre 31 e 45 anos: " + cValTochar((cont3)))
	MSGINFO("Quantidade de Pessoas Entre 46 e 60 anos: " + cValTochar((cont4)))
	MSGINFO("Quantidade de Pessoas acima de 61 anos: " + cValTochar((cont5)))
	MSGINFO("Porcentagem de Pessoas ate 15 anos: " + cValTochar((calculaP))+"%")
	MSGINFO("Porcentagem de Pessoas acima de 61 anos: " + cValTochar((CalculaU))+"%")




Return
