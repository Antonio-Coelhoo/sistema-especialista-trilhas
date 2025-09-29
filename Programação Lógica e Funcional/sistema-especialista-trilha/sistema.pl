% sistema_corrigido.pl
:- use_module(base_conhecimento, [trilha/2, perfil/3, pergunta/3]).

:- dynamic resposta/2.

% ------------------------------
% Loop principal
% ------------------------------
iniciar :-
    writeln('--- Sistema Especialista: Recomendacao de Trilha ---'),
    pergunta_respostas,
    calcula_pontuacoes(Resultados),
    exibe_resultados(Resultados),
    melhores(Resultados, Melhores),
    writeln('\n=== Melhor(es) Trilha(s) ==='),
    forall(member(T, Melhores), writeln(T)).

% ------------------------------
% Perguntas
% ------------------------------
pergunta_respostas :-
    retractall(resposta(_, _)),
    forall(pergunta(_, Texto, Habilidade),
           (
               format('~w~n> ', [Texto]),
               read(Resp),
               (Resp == s -> assertz(resposta(Habilidade, sim))
               ; assertz(resposta(Habilidade, nao)))
           )).

% ------------------------------
% Cálculo de pontuação ponderada
% ------------------------------
calcula_pontuacoes(Resultados) :-
    findall(Trilha-Pct, calcula_pontuacao(Trilha, Pct), Resultados).

calcula_pontuacao(Trilha, Pct) :-
    trilha(Trilha, _Descricao),
    findall(Peso, (perfil(Trilha, Habilidade, Peso), resposta(Habilidade, sim)), PesosSim),
    sum_list(PesosSim, SomaSim),
    findall(PesoTotal, perfil(Trilha, _, PesoTotal), PesosTotais),
    sum_list(PesosTotais, SomaTotal),
    (SomaTotal > 0 -> Pct is (SomaSim / SomaTotal) * 100 ; Pct = 0).

% ------------------------------
% Melhor trilha
% ------------------------------
melhores(Resultados, Melhores) :-
    keysort(Resultados, ResultadosOrdenados),
    reverse(ResultadosOrdenados, [MelhorTrilha-Pct | Resto]),
    include(com_mesma_pontuacao(Pct), [MelhorTrilha-Pct | Resto], Filtradas),
    pares_para_trilhas(Filtradas, Melhores0),
    sort(Melhores0, Melhores).

com_mesma_pontuacao(Pct, _-Pct).

pares_para_trilhas([], []).
pares_para_trilhas([Trilha-_|T], [Trilha|Ts]) :-
    pares_para_trilhas(T, Ts).

% ------------------------------
% Exibição
% ------------------------------
exibe_resultados([]).
exibe_resultados([Trilha-Pct | Resto]) :-
    format('Trilha: ~w -- Compatibilidade: ~2f%%~n', [Trilha, Pct]),
    exibe_resultados(Resto).
