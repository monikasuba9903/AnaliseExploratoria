## Script Trabalho Análise Exploratória

## Importando a base de dados
library(readxl)
dados <- read_excel("Base_trabalho.xlsx")

## Transformando as variáveis categóricas em fator
dados$sexo <- as.factor(dados$sexo)
dados$filhos <- as.factor(dados$filhos)
dados$escolaridade <- as.factor(dados$escolaridade)
dados$casado <- as.factor(dados$casado)
dados$reincidente <- as.factor(dados$reincidente)

#### Calculando algumas medidas para score_periculosidade ####

mean(dados$score_periculosidade) #Média
quantile(dados$score_periculosidade, probs = 0.25) #1º Quartil
quantile(dados$score_periculosidade, probs = 0.50) #Mediana
quantile(dados$score_periculosidade, probs = 0.75) #3º Quartil
var(dados$score_periculosidade) #Variância
sd(dados$score_periculosidade) #Desvio Padrão
diff(range(dados$score_periculosidade)) #Amplitude

#### Calculando algumas medidas para idade ####

mean(dados$idade) #Média
quantile(dados$idade, probs = 0.25) #1º Quartil
quantile(dados$idade, probs = 0.50) #Mediana
quantile(dados$idade, probs = 0.75) #3º Quartil
var(dados$idade) #Variância
sd(dados$idade) #Desvio Padrão
diff(range(dados$idade)) #Amplitude

#### Calculando algumas medidas para tempo_preso ####

mean(dados$tempo_preso) #Média
quantile(dados$tempo_preso, probs = 0.25) #1º Quartil
quantile(dados$tempo_preso, probs = 0.50) #Mediana
quantile(dados$tempo_preso, probs = 0.75) #3º Quartil
var(dados$tempo_preso) #Variância
sd(dados$tempo_preso) #Desvio Padrão
diff(range(dados$tempo_preso)) #Amplitude

#### Gráfico de dispersão entre tempo_preso e score_periculosidade ####

plot(dados$tempo_preso, dados$score_periculosidade,
     main = 'Dispersão - Tempo Preso X Score Periculosidade',
     xlab = 'Tempo Preso (em meses)',
     ylab = 'Score de Periculosidade')

#Pelo gráfico, já é possível ver uma alta correlação

#### Calculando a correlação entre tempo_preso e score_periculosidade ####
cor(dados$tempo_preso, dados$score_periculosidade)
#Correlação alta de 0.80
