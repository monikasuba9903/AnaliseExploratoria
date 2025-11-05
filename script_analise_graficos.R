## Script Trabalho Análise de Gráficos

#### Importando a base de dados ####
library(readxl)
dados <- read_excel("Base_trabalho.xlsx")

#### Transformando as variáveis categóricas em fator ####
dados$sexo <- as.factor(dados$sexo)
dados$filhos <- as.factor(dados$filhos)
dados$escolaridade <- as.factor(dados$escolaridade)
dados$casado <- as.factor(dados$casado)
dados$reincidente <- as.factor(dados$reincidente)

#### Analisando dados faltantes ####
sum(is.na(dados))

colSums(is.na(dados))

#Não há NAs nessa base de dados

#### Histograma da variável idade ####

hist(x = dados$idade, main = "Histograma - Idade", xlab = 'Idade (anos)', 
     ylab = 'Frequência', col='lightblue')

shapiro.test(dados$idade)

#### Boxplot da variável tempo_preso ####

boxplot(x=dados$tempo_preso, main='Boxplot - Tempo Preso', ylab = "Qtd de meses", col='lightblue')

#### Boxplot da variável score_periculosidade por escolaridade ####

boxplot(score_periculosidade ~ escolaridade, data=dados,
        main='Boxplot: Score de periculosidade por Escolaridade',
        names=c('Fundamental', 'Médio', 'Superior'),
        col='lightblue',
        xlab= 'Escolaridade',
        ylab='Score de periculosidade'
        )

#### Gráfico de barras para a variável reincidente ####
table(dados$reincidente)

#A respeito da variável reincidente, não há informações no dicionário
#Porém analisando o table, parece uma variável categórica

nomes <- c('Não', 'Sim')
barplot(table(dados$reincidente), 
        main = 'Gráfico de barras - Reincidente',
        names.arg = nomes,
        col = 'lightblue',
        ylab='Frequência',
        xlab='Reincidente'
)



