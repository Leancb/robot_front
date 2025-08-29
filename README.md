# Projeto de Automação de Testes com Robot Framework

[![Robot CI](https://github.com/USER/REPO/actions/workflows/robot-ci.yml/badge.svg)](https://github.com/USER/REPO/actions/workflows/robot-ci.yml)

Este projeto demonstra automação de testes utilizando **Robot Framework** com **SeleniumLibrary**.
O cenário de exemplo realiza uma pesquisa por produtos no site da **Amazon Brasil**.

---

## 🚀 Tecnologias Utilizadas
- Robot Framework
- SeleniumLibrary
- Selenium 4 (Selenium Manager para resolver o driver)
- Google Chrome (modo headless no CI)
- GitHub Actions

---

## 📂 Estrutura do Projeto
```bash
.
├── keywords.robot                 # Keywords reutilizáveis
├── test1.robot                    # Caso de teste
├── requirements.txt               # Dependências Python
├── .gitignore                     # Ignora pastas de saída
├── .github/
│   └── workflows/
│       └── robot-ci.yml           # Pipeline CI (GitHub Actions)
└── reports/                       # Saída dos relatórios (gerada em runtime)
```

---

## 📝 Cenário de Teste
1. Abre o navegador no site da Amazon Brasil
2. Pesquisa por um termo (ex.: **celulares**)
3. Valida que a página de resultados foi exibida

---

## ▶️ Execução Local

### 1) Pré-requisitos
- Python 3.10+
- Google Chrome instalado

### 2) Instalar dependências
```bash
pip install -r requirements.txt
```

### 3) Executar testes
```bash
robot -d reports test1.robot
```
Os arquivos `report.html`, `log.html` e `output.xml` ficarão em `reports/`.

> **Nota:** O Selenium 4 usa o *Selenium Manager*, então não é necessário instalar Chromedriver manualmente.

---

## 🤖 Execução no GitHub Actions
O workflow **robot-ci.yml** já está configurado para:
- Instalar Python e dependências
- Instalar Google Chrome
- Executar os testes em modo **headless**
- Publicar `report.html`, `log.html` e `output.xml` como artefatos

Basta fazer push para a branch `main`. Depois, acesse a aba **Actions** e baixe o artefato **robot-reports**.

---

## 👨‍💻 Autor
**Leandro Brum**
