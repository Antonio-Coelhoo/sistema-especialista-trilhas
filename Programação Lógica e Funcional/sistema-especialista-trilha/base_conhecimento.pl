% base_conhecimento.pl
% Fatos: trilha/2, perfil/3, pergunta/3
% Use este arquivo como base de conhecimento (Aluno 1).

:- module(base_conhecimento, [trilha/2, perfil/3, pergunta/3]).

% 5 Trilhas (nome_atom, descrição)
trilha(inteligencia_artificial, 'Estudo de algoritmos que aprendem e tomam decisões a partir de dados.').
trilha(desenvolvimento_web, 'Construção de aplicações web front-end e back-end.').
trilha(seguranca_da_informacao, 'Proteção de sistemas, redes e dados contra ameaças.').
trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de dados para extrair conhecimento.').
trilha(redes_e_infraestrutura, 'Projeto, operação e manutenção de redes e infraestrutura de TI.').

% Perfil: perfil(Trilha, Caracteristica, Peso(1..5))
% Inteligência Artificial
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, programacao, 4).
perfil(inteligencia_artificial, aprendizado_maquina, 5).
perfil(inteligencia_artificial, curiosidade_pesquisa, 4).
perfil(inteligencia_artificial, py_r_pacotes, 3).

% Desenvolvimento Web
perfil(desenvolvimento_web, programacao, 5).
perfil(desenvolvimento_web, design_visual, 4).
perfil(desenvolvimento_web, desenvolvimento_frontend, 4).
perfil(desenvolvimento_web, desenvolvimento_backend, 4).
perfil(desenvolvimento_web, trabalho_em_equipa, 3).

% Segurança da Informação
perfil(seguranca_da_informacao, redes, 4).
perfil(seguranca_da_informacao, criptografia, 5).
perfil(seguranca_da_informacao, pensamento_analitico, 4).
perfil(seguranca_da_informacao, investigacao_incidentes, 4).
perfil(seguranca_da_informacao, programacao, 2).

% Ciência de Dados
perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, programacao, 4).
perfil(ciencia_de_dados, analise_exploratoria, 5).
perfil(ciencia_de_dados, visualizacao_dados, 4).
perfil(ciencia_de_dados, comunicacao_resultados, 3).

% Redes e Infraestrutura
perfil(redes_e_infraestrutura, redes, 5).
perfil(redes_e_infraestrutura, administracao_sistemas, 4).
perfil(redes_e_infraestrutura, pensamento_organizacional, 3).
perfil(redes_e_infraestrutura, seguranca_basica, 3).
perfil(redes_e_infraestrutura, troubleshooting, 5).

% Perguntas: pergunta(ID, TextoPergunta, Caracteristica)
% IDs sequenciais (1..N)
pergunta(1, 'Você tem afinidade com matemática e estatística? (s/n)', matematica_estatistica).
pergunta(2, 'Você gosta de programar e resolver problemas com código? (s/n)', programacao).
pergunta(3, 'Você se interessa por aprendizado de máquina e modelos preditivos? (s/n)', aprendizado_maquina).
pergunta(4, 'Você curte trabalhar em interfaces e design visual? (s/n)', design_visual).
pergunta(5, 'Você prefere construir aplicações web (frontend/back)? (s/n)', desenvolvimento_web).
pergunta(6, 'Você tem interesse em segurança, criptografia e proteção de dados? (s/n)', criptografia).
pergunta(7, 'Você gosta de administrar redes e infraestrutura? (s/n)', redes).
pergunta(8, 'Você se interessa por análise exploratória e visualização de dados? (s/n)', analise_exploratoria).
pergunta(9, 'Você gosta de investigar problemas (troubleshooting/forense)? (s/n)', investigacao_incidentes).
pergunta(10,'Você tem facilidade para explicar resultados e comunicar insights? (s/n)', comunicacao_resultados).
pergunta(11,'Você gosta de administração de sistemas / DevOps? (s/n)', administracao_sistemas).
pergunta(12,'Você tem aptidão para trabalhar em equipe e coordenar tarefas? (s/n)', trabalho_em_equipa).
pergunta(13,'Você gosta de construir e manter APIs e lógica de backend? (s/n)', desenvolvimento_backend).
pergunta(14,'Você tem interesse por visualização de dados (dashboards)? (s/n)', visualizacao_dados).
pergunta(15,'Você é curioso por pesquisa e experimentação? (s/n)', curiosidade_pesquisa).
