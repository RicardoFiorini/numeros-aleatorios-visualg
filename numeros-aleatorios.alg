algoritmo "Jogo de Adivinhação"
variáveis
    numeroSecreto, palpite : inteiro
    tentativas : inteiro
início
    // Inicializa o gerador de números aleatórios
    aleatório.semente(aleatório.tempo())

    // Gera um número aleatório entre 1 e 100
    numeroSecreto ← aleatório.inteiro(1, 100)
    tentativas ← 0

    escreva("Bem-vindo ao Jogo de Adivinhação!")
    escreva("Eu escolhi um número entre 1 e 100. Tente adivinhar!")

    // Loop até que o usuário adivinhe o número
    enquanto (palpite <> numeroSecreto) faça
        escreva("Digite seu palpite: ")
        leia(palpite)
        tentativas ← tentativas + 1

        se (palpite < numeroSecreto) então
            escreva("Muito baixo! Tente novamente.")
        senão se (palpite > numeroSecreto) então
            escreva("Muito alto! Tente novamente.")
        senão
            escreva("Parabéns! Você adivinhou o número ", numeroSecreto, " em ", tentativas, " tentativas.")
        fimse
    fimenquanto
fimenquanto
