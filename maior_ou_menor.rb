def boas_vindas
    puts " \t\t Bem vindo ao jogo de adivinhação \t\t"
    puts "\n"
    puts "Qual o seu nome?"
    nome = gets
    puts "\n\n"
    puts "Começaremos o jogo, " + nome
end

def sorteio_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado = 175
    puts "Número secreto escolhido... Que tal adivinhar nosso número secreto de hoje?"
    sorteado
end

def digite_um_numero(tentativa, limite_de_tentativas)
    puts "\n\n"
    puts "\t Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Escolha um número"
    chute = gets
    puts "Será que você acertou? Você chutou " + chute
    chute
end

def verifica_se_acertou

    acertou = sorteado == chute.to_i

    if acertou
        puts "Parabêns. VOCÊ ACERTOU!"
        return true
    else 
        maior = sorteado < chute.to_i
        if maior
            puts "O número secreto maior"
            return false
        else 
            puts "O número secreto menor!"
            return false
        end
    end
end

boas_vindas
numero_secreto = sorteio_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    chute = digite_um_numero(tentativa, limite_de_tentativas)
    verifica_se_acertou
end