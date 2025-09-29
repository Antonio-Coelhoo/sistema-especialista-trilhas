# Sistema Especialista para Recomendação de Trilha Acadêmica

**Instituição:** Ciência da Computação/ PUCPR  
**Disciplina:** Programação Lógica e Funcional  
**Professor:** Frank Coelho de Alcantara
**Aluno:** Antonio Carlos de Oliveira Coelho   
28/09/2025

## Estrutura do repositório
- `base_conhecimento.pl` - fatos (trilhas, perfis, perguntas).
- `sistema.pl` - motor de inferência, interface interativa, funções de teste.
- `perfil_teste_1.pl`, `perfil_teste_2.pl`, `perfil_teste_3.pl` - arquivos de teste com respostas predefinidas.
- `README.md` - este arquivo.

## Arquivos obrigatórios (nomes exigidos)
O enunciado exige predicados e arquivos com nomes específicos. Esse repositório atende esses nomes:
- `trilha/2`, `perfil/3`, `pergunta/3` (em `base_conhecimento.pl`)
- `iniciar/0`, `faz_perguntas/0`, `exibe_resultado/1`, `recomenda/2`, `calcula_pontuacao/3` (em `sistema.pl`)
- Arquivos de teste: `perfil_teste_1.pl`, `perfil_teste_2.pl`, `perfil_teste_3.pl`

## Como executar (SWI-Prolog)
1. Abra o SWI-Prolog.
2. No prompt do Prolog, carregue os arquivos:
   ```prolog
   ?- [base_conhecimento].
   ?- [sistema].
