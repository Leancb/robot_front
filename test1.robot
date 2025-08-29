*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot

*** Test Cases ***
Caso de Teste Exemplo
    Acessar a página inicial
    Pesquisar por celulares e validar o resultado
    Validar Resultados
