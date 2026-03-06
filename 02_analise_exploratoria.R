# ------ 1. Bibliotecas ------ #
install.packages("echarts4r")
library(readxl)
library(tidyverse)
library(echarts4r)

# ------ 2. Aquisicao dos Dados ------ #
df <- read_excel('data/base_ceara.xlsx')

# ------ 3. Entendimento dos Dados ------ #
# View(df)

# ------ 4. Pre-Processamento dos Dados ------ #


# ------ 5. Análise Exploratoria de Dados (E.D.A.) ------ #

# 5.1. Qual o percentual de escolas municipais e estaduais no Estado?

# selecao das colunas necessarias
cols <- c("Escolar_co_entidade", "Escolar_no_entidade", "Escolar_tp_dependencia")
df_dependencias <- select(df, cols)

# valores absolutos
df_freq <- as.data.frame(table(df_dependencias$Escolar_tp_dependencia))
colnames(df_freq) <- c("TP_DEPENDENCIA","QUANTIDADE")

# percentual
df_freq$PERCENTUAL <- round(df_freq$QUANTIDADE/sum(df_freq$QUANTIDADE), 2)

# visualizacao
df_freq %>%
  e_charts(TP_DEPENDENCIA) %>%
  e_pie(
    QUANTIDADE,
    radius = c("45%", "75%"),
    label = list(
      show = TRUE,
      position = "outside",
      formatter = "{d}%",
      fontSize = 12,
      color = "black"
    )
  ) %>%
  e_legend(right = "25%") %>%
  e_title(
    text = "Dependência Administrativa",
    textStyle = list(
      color = "black",
      fontSize = 14
    )) %>% 
  e_theme("macarons")

# 5.2. Qual o percentual de escolas com acesso a internet por tipo de dependencia?

# filtrando dataframe
df %>% 
