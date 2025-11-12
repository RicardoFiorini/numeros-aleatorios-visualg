algoritmo "Jogo_de_Adivinhacao_Melhorado"
// Autor: Ricardo Fiorini Cuato
// Data: 12/11/2025
// Descrição: Jogo de adivinhação com níveis de dificuldade,
//            validação de entrada e loop de replay.

var
   continuar: caractere
   limiteMaximo: inteiro

//-------------------------------------------------------------
// FUNÇÃO: escolherDificuldade
// Objetivo: Exibir um menu e retornar o limite máximo para o jogo.
//-------------------------------------------------------------
funcao escolherDificuldade(): inteiro
   var
      opcao: inteiro
      limite: inteiro
   
   limpatela()
   escreval("--- Jogo de Adivinhação ---")
   escreval("Escolha o nível de dificuldade:")
   escreval("1. Fácil (1 a 20)")
   escreval("2. Médio (1 a 100)")
   escreval("3. Difícil (1 a 500)")
   escreval("-----------------------------")
   
   // Validação da opção do menu
   repita
      escreva("Digite sua opção (1, 2 ou 3): ")
      leia(opcao)
      se (opcao < 1) ou (opcao > 3) entao
         escreval("Opção inválida!")
      fimse
   ate (opcao >= 1) e (opcao <= 3)

   // Define o limite com base na opção
   escolha opcao
      caso 1:
         limite := 20
      caso 2:
         limite := 100
      caso 3:
         limite := 500
   fimescolha
   
   retorne limite
fimfuncao

//-------------------------------------------------------------
// PROCEDIMENTO: jogarPartida
// Objetivo: Executar uma rodada completa do jogo.
// Parâmetro: O número máximo que pode ser sorteado.
//-------------------------------------------------------------
procedimento jogarPartida(limite: inteiro)
   var
      numeroSecreto, palpite, tentativas: inteiro
   
   // Inicializa o gerador de números aleatórios
   // (Chamamos aqui para garantir um novo número a cada partida)
   aleatorio.semente(aleatorio.tempo())
   
   // Gera um número aleatório entre 1 e o limite escolhido
   numeroSecreto := aleatorio.inteiro(1, limite)
   tentativas := 0
   
   limpatela()
   escreval("Eu escolhi um número entre 1 e ", limite, ".")
   escreval("Tente adivinhar qual é!")
   escreval

   // Loop do jogo (repita...ate é melhor aqui)
   repita
      escreva("Digite seu palpite: ")
      leia(palpite)
      
      tentativas := tentativas + 1

      // Validação de entrada (impede palpites fora do range)
      se (palpite < 1) ou (palpite > limite) entao
         escreval("Palpite inválido! O número está entre 1 e ", limite, ".")
         
      // Lógica de feedback do jogo
      senao se (palpite < numeroSecreto) entao
         escreval("Muito BAIXO! Tente um número maior.")
         
      senao se (palpite > numeroSecreto) entao
         escreval("Muito ALTO! Tente um número menor.")
         
      fimse
      
   // O loop termina quando o palpite for correto
   ate (palpite = numeroSecreto)
   
   // Mensagem de vitória
   escreval
   escreval("---------------------------------------------")
   escreval("🎉 PARABÉNS! Você acertou! 🎉")
   escreval("O número secreto era ", numeroSecreto, ".")
   escreval("Você precisou de ", tentativas, " tentativas.")
   escreval("---------------------------------------------")
   escreval
fimprocedimento

//-------------------------------------------------------------
// BLOCO PRINCIPAL
// Objetivo: Controlar o fluxo principal do programa (replay).
//-------------------------------------------------------------
inicio
   // Loop principal para jogar novamente
   repita
      // 1. Pede a dificuldade
      limiteMaximo := escolherDificuldade()
      
      // 2. Executa o jogo
      jogarPartida(limiteMaximo)
      
      // 3. Pergunta se quer jogar de novo
      escreva("Deseja jogar novamente? (S/N): ")
      leia(continuar)
      
   ate (maiusc(continuar) = "N")
   
   limpatela()
   escreval("Obrigado por jogar! Até a próxima.")
fimalgoritmo
