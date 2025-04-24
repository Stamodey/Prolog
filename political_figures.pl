% Формат: politician(Имя, Страна, Эпоха, Идеология, Роль, Партия).

politician(napoleon_bonaparte, france, xviii, authoritarianism, head_of_state, no).
politician(winston_churchill, uk, xx, conservatism, prime_minister, yes).
politician(joseph_stalin, ussr, xx, communism, dictator, yes).
politician(adolf_hitler, germany, xx, nazism, dictator, yes).
politician(franklin_roosevelt, usa, xx, liberalism, head_of_state, yes).
politician(george_washington, usa, xviii, republicanism, head_of_state, no).
politician(vladimir_lenin, russia, xx, communism, revolutionary, yes).
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

% 1. Кто был главой государства в XX веке?
% ?- politician(Name, _, xx, _, head_of_state, _).

% 2. Найти всех политиков-либералов.
% ?- politician(Name, _, _, liberalism, _, _).

% 3. Найти всех премьер-министров XXI века.
% ?- politician(Name, _, xxi, _, prime_minister, _).

% 4. Кто был диктатором в Германии?
% ?- politician(Name, germany, _, _, dictator, _).

% 5. Политики без партийной принадлежности:
% ?- politician(Name, _, _, _, _, no).

% 6. Кто из Франции был в XVIII веке?
% ?- politician(Name, france, xviii, _, _, _).
