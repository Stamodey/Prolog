% --- KNOWLEDGE BASE ---
% Format: politician(Name, Country, Era, Ideology, Role, Party).

politician(napoleon_bonaparte, france, xviii, authoritarianism, head_of_state, no).
politician(winston_churchill, uk, xx, conservatism, prime_minister, yes).
politician(joseph_stalin, ussr, xx, communism, dictator, yes).
politician(adolf_hitler, germany, xx, nazism, dictator, yes).
politician(franklin_roosevelt, usa, xx, liberalism, head_of_state, yes).
politician(george_washington, usa, xviii, republicanism, head_of_state, no).
politician(vladimir_lenin, ussr, xx, communism, revolutionary, yes).
politician(margaret_thatcher, uk, xx, conservatism, prime_minister, yes).
politician(john_f_kennedy, usa, xx, liberalism, head_of_state, yes).
politician(angela_merkel, germany, xxi, conservatism, chancellor, yes).
politician(barack_obama, usa, xxi, liberalism, head_of_state, yes).
politician(xi_jinping, china, xxi, communism, head_of_state, yes).
politician(benito_mussolini, italy, xx, fascism, dictator, yes).
politician(jawaharlal_nehru, india, xx, socialism, prime_minister, yes).
politician(mahatma_gandhi, india, xx, nonviolence, revolutionary, no).
politician(theodore_roosevelt, usa, xx, progressivism, head_of_state, yes).
politician(boris_johnson, uk, xxi, conservatism, prime_minister, yes).
politician(nelson_mandela, south_africa, xx, liberalism, head_of_state, yes).
politician(justin_trudeau, canada, xxi, liberalism, prime_minister, yes).
politician(emmanuel_macron, france, xxi, centrism, head_of_state, yes).
politician(abe_shinzo, japan, xxi, conservatism, prime_minister, yes).
politician(kim_jong_un, north_korea, xxi, authoritarianism, head_of_state, yes).
politician(charles_de_gaulle, france, xx, nationalism, head_of_state, yes).
politician(salvador_allende, chile, xx, socialism, head_of_state, yes).
politician(ronald_reagan, usa, xx, conservatism, head_of_state, yes).
politician(fidel_castro, cuba, xx, communism, dictator, yes).
politician(lee_kuan_yew, singapore, xx, pragmatism, prime_minister, yes).
politician(indira_gandhi, india, xx, socialism, prime_minister, yes).
politician(gamal_abdel_nasser, egypt, xx, arab_socialism, head_of_state, yes).
politician(jair_bolsonaro, brazil, xxi, conservatism, head_of_state, yes).

% --- AKINATOR ---

start :-
    writeln('Think of a politician, and I will try to guess who it is.'),
    ask_country(Country),
    ask_era(Era),
    ask_ideology(Ideology),
    ask_role(Role),
    ask_party(Party),
    findall(Name, politician(Name, Country, Era, Ideology, Role, Party), Results),
    ( Results = [Name] ->
        format("You thought of: ~w.~n", [Name])
    ; Results = [] ->
        writeln("I couldn't guess. Try again.")
    ; writeln("Possible candidates:"),
      print_list(Results)
    ).

ask_country(Country) :-
    writeln('What is the country? (e.g., usa, france, uk, germany...)'),
    read(Country).

ask_era(Era) :-
    writeln('In which era did they live? (xviii, xx, xxi)'),
    read(Era).

ask_ideology(Ideology) :-
    writeln('What was their political ideology? (liberalism, communism, conservatism, etc.)'),
    read(Ideology).

ask_role(Role) :-
    writeln('What was their role? (head_of_state, prime_minister, dictator, revolutionary, chancellor)'),
    read(Role).

ask_party(Party) :-
    writeln('Were they a member of a political party? (yes / no)'),
    read(Party).

print_list([]).
print_list([H|T]) :-
    writeln(H),
    print_list(T).
