# install.packages
install.packages("pacman")
library(pacman)

# carrega os pacotes (mesmo se não tiver instalado)
p_load(readxl, writexl, janitor, tidyverse)

?mean

sqrt('Gilberto Pereira Sassi')

# operações básica --------------------------------------------------------

# soma
1 + 2
# subtração
1 - 0.5
# multiplicação
2 * 9.9
# divisão
1 / 8
# potenciação 
2^3


# exercício
5.32 + 7.99
5.55 - 10
3.33 * 5.12
1 / 4.55
5^1.23

# usando uma função pela "primeira vez"
# pastas eu separo por /
dados_casa <- read_excel("dados/brutos/casas.xlsx", sheet = "Sheet1")

# exercício
help(mean)
log(10, base = 3)
dados_enem <- read_excel("dados/brutos/amostra_enem_salvador.xlsx")


# vetor -------------------------------------------------------------------

vetor_numeros <- c(37, 40, 20, 20)
vetor_numeros

vetor_sequencia_1 <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
vetor_sequencia_1

# atalho últil
vetor_sequencia_2 <- 2:20
vetor_sequencia_2

nomes <- c("Marcos", "Gabriela", "Carolina", "Gilberto")
nomes

# exercício
vetor_exe_1 <- seq(from = 0.1, to = 0.5, by = 0.1)
vetor_exe_1

vetor_exe_2 <- c(TRUE, TRUE, FALSE)
vetor_exe_2

vetor_exe_3 <- c("Marx", "Engels", "Lênin")
vetor_exe_3

vetor_exe_4 <- c(1L, 2L, 3L)
vetor_exe_4

# checando o tipo de dados no vetor
class(vetor_exe_4)
class(vetor_exe_2)


# operações com vetores ---------------------------------------------------

# slicing
estudantes <- nomes[c(1, 2)]
professores <- nomes[c(3, 4)]
estudantes
professores

# concatenação de vetores
equipe <- c(professores, estudantes)
equipe

# operações com vetores numéricos -----------------------------------------

vetor_1 <- c(20, 22, 30, 19)
vetor_2 <- c(37, 40, 20, 20)

# soma (elemento a elemento)
vetor_soma <- vetor_1 + vetor_2
vetor_soma

# subtração (elemento a elemento)
vetor_menos <- vetor_1 - vetor_2
vetor_menos

# multiplicação (elemento a elemento)
vetor_vezes <- vetor_1 * vetor_2
vetor_vezes

# divisão (elemento a elemento)
vetor_div <- vetor_1 / vetor_2
vetor_div

# potenciação (todos valores a uma potência)
vetor_pot <- vetor_1^3.123412
vetor_pot

# exercício
vetor_a <- 1:3
vetor_b <- c(0.1, 0.05, 0.33)

# soma
soma <- vetor_a + vetor_b
soma

# subtração
menos <- vetor_a - vetor_b
menos

# multiplicação
vezes <- vetor_a * vetor_b
vezes

# divisão
div <- vetor_a / vetor_b
div


# fator -------------------------------------------------------------------

# bem específico para vetores de strings
pessoas <- c("professor", "participante", "participante", "participante",
             "trabalhador", "trabalhadora", "trabalhador")

niveis <- c("professor", "participante", "trabalhador")

# jeito 1 (do R tradicional)
pessoas_jeito_1 <- factor(pessoas, levels = niveis)
pessoas_jeito_1

# jeito 2 (do tidyverse)
pessoas_tidyverse <- fct(pessoas, levels = niveis)

# vou corrigir
pessoas <- c("professor", "participante", "participante", "participante",
             "trabalhador", "trabalhadora", "trabalhador")
niveis <- c("professor", "participante", "trabalhador", "trabalhadora")
pessoas_tidyverse <- fct(pessoas, niveis)
pessoas_tidyverse
