install.packages(c('readxl','writexl'))
library(dplyr)
library(readxl)
library(writexl)
library(tidyverse)

df <- read_excel('data/raw-data/base-escolas-simet.xlsx')

# contagem dos estados
table(df$nm_estado) # ceara: 5971 escolas

# verificando se ha dados ausentes na coluna de estado
sum(is.na(df$nm_estado)) # 13 instancias ausentes

# analise das linhas com dados ausentes de estado
df_estado_ausente <- df[is.na(df$nm_estado), ]
df_estado_ausente <- df_estado_ausente[, c("escolar_no_entidade", "nm_municipio","latitude","longitude")]

View(df_estado_ausente)

# limites geograficos do ceara (segundo o IPECE)
# latitudes 2,46 - 7,52 Sul
# longitudes 37,14 - 41,24 Oeste

# construindo o df_ceara
df_ceara <- df[df$nm_estado == "CEARA", ]
View(df_ceara)

# verificando se ha escolas inativas no Ceara
table(df_ceara$escolar_tp_situacao_funcionamento)

write_xlsx(df_ceara,"data/processed-data/base_ceara_filtrada.xlsx")
