# Data Preparation 
# Aula 1
# Prof. Neylson Crepalde+
# Igor Thales dos Santos
########################

# Instalar os pacotes necessarios 
###install.packages("dplyr")

# carregar o pacote dplyr no ambiente
library(dplyr)
# carrega o banco de dados Iris, já embutido na memoria 
data("iris")
# verificar os primeiros casos
head(iris)
# verificar os nomes das variaveis
names(iris)

# verificar a estrutura do objeto 
str(iris)
####################################################
# verificar o tamanho do banco de dados
dim(iris)  # verifica linhas e colunas

nrow(iris) # verifica o numero de linhas

ncol(iris) # verifica o numero de colunas
#####################################################
# Acessando a documentação do banco iris
help(iris)
?iris
iris



# manipular os dados com dplyr

# dplyr possui alguns verbos que executam ações especificas nos bancos de dados

# select - seleciona colunas
iris    # toda a tabela

select(iris, Species)    #iris = tabela    Species = variavel
select(iris, Petal.Length, Species)   # iris = tabela   Petal.Length = variavel   Species = variavel 

# selecionando pela posição 
Name(iris)
select (iris, 5 , 3)

# selecionando varias varias de uma só vez
select(iris, 1:4)

select(iris, 4:2)

# retirando uma variavel do banco 
select(iris, -5)
select(iris, - Species)
select(iris, - Species, - Petal.Length)  # retirar duas variaveis


# filtrando linhas
# FILTER -  filtra linhas a partir de alguma condição
head(iris)
filter(iris, Sepal.Length > 5)  # filtrar que o tamanho das Sepalas  > 5 (Sepal.Length > 5 )

filter(iris, Sepal.Length <= 4) # filtrar os casos em que Sepal Length for menor ou igual a 4
filter(iris, Sepal.Length <= 4.5)

#olhar para a variavel Species
#categorica
table(iris$Species)
#filtrando apenas a categoria 'setosa' da variavel Species
filter(iris, Species == "setosa")

#filtrar todas menos "Setosa"
filter(iris, Species != "setosa")
