## Perspectivas da Conectividade nas Escolas do Estado do Ceará

Este repositório apresenta uma **análise exploratória de dados (EDA)** sobre o acesso à internet em escolas públicas do estado do Ceará, com base em dados do Censo Escolar 2024. O projeto foi desenvolvido como requisito da disciplina de **Fundamentos de Estatística**, no curso de **Inteligência Artificial da Universidade de Fortaleza**.

Autor: **Pedro Florencio de Almeida Neto** \| Cientista de Dados e Desenvolvedor de IA

![R](https://img.shields.io/badge/language-R-blue) ![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow) ![License](https://img.shields.io/badge/license-MIT-green) ![Last Commit](https://img.shields.io/github/last-commit/PedroFlorencioNeto/conecta-ceara) ![Repo Size](https://img.shields.io/github/repo-size/PedroFlorencioNeto/conecta-ceara)

------------------------------------------------------------------------

### 🔎 Preview

![](https://github.com/user-attachments/assets/3b4e3018-c6e8-48f3-85ea-c12df6323078)

Acesso: [rpubs.com/pedroflorencio/conectividade-escolas-ceara](https://rpubs.com/pedroflorencio/conectividade-escolas-ceara "https://rpubs.com/pedroflorencio/conectividade-escolas-ceara")

------------------------------------------------------------------------

### 🎯 Objetivos

#### Objetivo Geral

Fornecer subsídios descritivos para análise da conectividade na educação no estado do Ceará.

#### Objetivos Específicos

-   Descrever o acesso à internet nas instituições de ensino

-   Organizar indicadores descritivos por meio de tabelas, gráficos e medidas estatísticas

-   Facilitar a compreensão do cenário da conectividade educacional

------------------------------------------------------------------------

### 📂 Estrutura do Projeto

```         
├── data/
│   ├── raw-data/
│   └── processed-data/
│       ├── base_ceara_validada.xlsx
│       └── limites_ceara.geojson
│
├── scripts/
│   └── 01-filtra-base-ceara.R
│
├── notebooks/
│   └── notebook_eda.Rmd
│
├── outputs/
│   ├── mapas/
│   └── graficos/
│
└── README.md
```

------------------------------------------------------------------------

### 📊 Fonte dos Dados

Os dados foram obtidos a partir de:

-   Diagnóstico da Conectividade na Educação (NIC.br / SIMET)

-   Censo Escolar 2024 (INEP)

------------------------------------------------------------------------

### 🛠️ Tecnologias e Bibliotecas

O projeto foi desenvolvido em **R**, utilizando as seguintes bibliotecas:

-   `tidyverse`

-   `dplyr`

-   `sf`

-   `leaflet`

-   `echarts4r`

-   `readxl`

-   `scales`

-   `RColorBrewer`

-   `BAMMtools`

------------------------------------------------------------------------

### 🔄 Etapas da Análise

#### 1. Aquisição dos Dados

-   Filtragem da base nacional para o estado do Ceará

-   Script responsável: `01-filtra-base-ceara.R`

#### 2. Pré-processamento

-   Remoção de variáveis irrelevantes

-   Tratamento de valores ausentes

-   Padronização de variáveis booleanas (Sim/Não → 1/0)

-   Conversão de tipos

-   Remoção de outliers (valores inconsistentes)

#### 3. Análise Exploratória (EDA)

Principais perguntas respondidas:

-   Distribuição de escolas por dependência administrativa

-   Localização (urbana vs rural)

-   Presença de laboratórios de informática

-   Disponibilidade de internet

-   Tipos de rede (ex: Wi-Fi)

-   Tecnologias de conexão

-   Acesso dos alunos à internet

-   Uso pedagógico da internet

------------------------------------------------------------------------

### 📈 Principais Insights

✔️ Aproximadamente **98,5% das escolas possuem acesso à internet**

✔️ Predominância de escolas **municipais**

✔️ Maioria localizada em **áreas urbanas**

✔️ Mais de **60% utilizam rede Wi-Fi**

⚠️ Existência de desigualdade entre municípios quanto à infraestrutura

⚠️ Disparidades no acesso a laboratórios de informática

------------------------------------------------------------------------

### 🚀 Como Executar o Projeto

1.  Clone o repositório:

```         
git clone https://github.com/seu-usuario/conectividade-escolas-ceara.git
```

2.  Abra o projeto no RStudio

3.  Instale as dependências:

```         
install.packages(c(
  "tidyverse", "dplyr", "sf", "leaflet",
  "echarts4r", "readxl", "scales",
  "RColorBrewer", "BAMMtools"
))
```

4.  Execute o arquivo:

```         
analise_conectividade.Rmd
```

------------------------------------------------------------------------

### 📄 Licença

Este projeto é de uso acadêmico e educacional.
