def boas_vindas
    puts " \t\tBem vindo ao jogo de adivinhação\n\n"
    puts "Qual o seu nome?"
    nome = gets
    puts "Prepare-se para começar o jogo, " + nome + "\n\n"
end

def sorteia_numero_secreto
    puts "Vamos sortiar um número secreto entre 0 e 200..."
    sorteado = 1 + rand(200)
    puts "Prontinho!!! Número secreto sortiado... Que tal adivinha-lo?\n\n"
    sorteado
end

def digite_um_numero(tentativa, limite_de_tentativas)
    puts "\n"
    puts "\t Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Escolha um número:"
    chute = gets
    puts "Será que você acertou? Você chutou " + chute
    chute
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute.to_i

    if acertou
        puts "Parabêns. VOCÊ ACERTOU!"
        return true
    else 
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior!"
            return false
        else 
            puts "O número secreto é menor!"
            return false
        end
    end
end

boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 8

for tentativa in 1..limite_de_tentativas
    chute = digite_um_numero(tentativa, limite_de_tentativas)
    if verifica_se_acertou(numero_secreto, chute)   
        break
    end
end

puts "\n O número secreto é:" . numero_secreto