:- ensure_loaded(library(prosqlite)).
:-style_check(-discontiguous).
:-style_check(-singleton).

%Start with dynamic part:
%movie_details/6
%movie_details(movie_name, movie_ID, IMDB_id, genre, languages, plot)

:- dynamic movie_details/6.
movie_details('12 Angry Men', 1, tt0050083, 'Crime',[en], "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.").
movie_details('Cotton Flowers', 2, tt0407691, 'Comedy',[en], "Brit (Keila Collins), Sophie, Todd, and Andy, a very unlikely group, find themselves working together on an economics project their teacher Miss Rose assigns. They all believe they are in control and wiser than they really are. They face harsh consequences to which their parents are oblivious. Sophie deals with a slutty reputation and a virgin's frame of reference.").
movie_details('Full Grown Men', 3, tt0407814, 'Crime',[en], "A man stuck in the reveries of his youth tracks down the boyhood friend he once tormented, only to find that simpler times were more complicated than he thought.").
movie_details('Love Letter', 4, tt0113703, 'Drama',[en], "When exchanging letters two women discover new things about a man they knew.").
movie_details('Possible Changes', 5, tt0407815, 'Crime',[en,kor], "Two friends, Moon-ho and Jong-kyu, in their mid-thirties now, have known each other since childhood. As time passes, they feel more and more sorry of their younger years. In search of adventure they are ready for all kind of acrobatics, for example, to make love spontaneously, with a woman they meet for the first time.").
movie_details('The Dark Knight', 6, tt0468569, 'Crime',[en,man], "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.").
movie_details('The Lord of the Rings: The Fellowship of the Ring', 7, tt0120737, 'Drama',[en,man], "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.").
movie_details('The Lord of the Rings: The Return of the King', 8, tt0167260, 'Drama',[en,man], "Tolkien's 'The Hobbit' and 'The Lord of the Rings' follows an ensemble cast of characters, both familiar and new, as they confront the long-feared re-emergence of evil to Middle-earth.").
movie_details('The Ring', 9, tt0298130, 'Comedy',[en,kor], "A journalist must investigate a mysterious videotape which seems to cause the death of anyone one week to the day after they view it").
movie_details('The Scary Side of Randall Coombe', 10, tt0408163, 'Comedy',[en], "The Scary Side of Randall Coombe,Äù starts off as a dark comedy about a lifeless marriage and the fiendish plot to bring it back to life, but the funny stops about a half hour in and what we‚Äôre left with is a creepy look at a one-sided obsessive relationship").


%movie_cast/3
%movie_cast(movie_name, actor, role)

:- dynamic movie_cast/3.
movie_cast('12 Angry Men', 'Henry Fonda', 'Juror 8').
movie_cast('12 Angry Men', 'Lee J. Cobb', 'Juror 3').
movie_cast('12 Angry Men', 'Martin Balsam', 'Juror 1').
movie_cast('Cotton Flowers', 'Keila Collins', 'Brit').
movie_cast('Cotton Flowers', 'Giovanna Marie', 'Sophie').
movie_cast('Cotton Flowers', 'Kevin Lyon', 'Todd').
movie_cast('Full Grown Men', 'Matt McGrath', 'Alby Cutrera').
movie_cast('Full Grown Men', 'Judah Friedlander', 'Elias Guber').
movie_cast('Full Grown Men', 'Alan Cumming', 'The Hitchhiker').
movie_cast('Love Letter', 'Miho Nakayama', 'Itsuki Fujii / Hiroko Watanabe').
movie_cast('Love Letter', 'Etsushi Toyokawa', 'Akiba Shigeru').
movie_cast('Love Letter', 'Bunjaku Han', 'Female itsuki mother').
movie_cast('Possible Changes', 'Chan Jung', 'Moon-ho').
movie_cast('Possible Changes', 'Yu-seok Kim', 'Jong-kyu').
movie_cast('Possible Changes', 'Ji-hye Yun', 'Lee Yun-jeong').
movie_cast('The Dark Knight', 'Christian Bale', 'Bruce Wayne').
movie_cast('The Dark Knight', 'Aaron Eckhart', 'Harvey Dent').
movie_cast('The Dark Knight', 'Heath Ledger', 'Joker').
movie_cast('The Lord of the Rings: The Fellowship of the Ring', 'Elijah Wood', 'Frodo').
movie_cast('The Lord of the Rings: The Fellowship of the Ring', 'Ian McKellen', 'Gandalf').
movie_cast('The Lord of the Rings: The Fellowship of the Ring', 'Orlando Bloom', 'Legolas').
movie_cast('The Lord of the Rings: The Return of the King', 'Elijah Wood', 'Frodo').
movie_cast('The Lord of the Rings: The Return of the King', 'Viggo Mortensen', 'Aragorn').
movie_cast('The Lord of the Rings: The Return of the King', 'Ian McKellen', 'Gandalf').
movie_cast('The Ring', 'Naomi Watts', 'Rachel').
movie_cast('The Ring', 'Martin Henderson', 'Noah').
movie_cast('The Ring', 'David Dorfman', 'Aidan').
movie_cast('The Scary Side of Randall Coombe', 'Robert Patrick Brink', 'Randall Coombe').
movie_cast('The Scary Side of Randall Coombe',' Szilvi Naray-Davey', 'Harvey Dent').
movie_cast('The Scary Side of Randall Coombe', 'Laura Pruden', 'Primrose Coombe / Gabriella').


%movie_keywords/2
%movie_keywords(movie_name, keyword)

:- dynamic movie_keywords/2.
movie_keywords('12 Angry Men', ['Jury', 'Trial', 'dialogue driven', 'courtroom', 'Criterion Collection']).
movie_keywords('Cotton Flowers', ['virgin', 'teenager', 'first time sex', 'Homosexual', 'life']).
movie_keywords('Full Grown Men',['mermaid', 'amusement park', 'road movie', 'man child', 'marital discord']).
movie_keywords('Love Letter', ['friendship', 'caught kissing', 'scarf', 'family dinner', 'restaurant']).
movie_keywords('Possible Changes', ['friendship', 'childhood', 'restaurant', 'couple', 'first time sex']).
movie_keywords('The Dark Knight', ['DC comics', 'moral dilemma', 'clown', 'criminal mastermind', 'dual identity']).
movie_keywords('The Lord of the Rings: The Fellowship of the Ring', ['middle earth', 'elf', 'friendship', 'warrior', 'forest']).
movie_keywords('The Lord of the Rings: The Return of the King', ['magic', 'battle', 'escape', 'loyalty', 'forced perspective']).
movie_keywords('The Ring', ['forest', 'escape', 'ghost', 'remake of asain film', 'mysterious death']).
movie_keywords('The Scary Side of Randall Coombe', ['married life', 'drunk', 'mysterious death', 'family dinner', 'ethics']).
%End the dynamic part

%Start of the static part:
%movie_languages/1
%movie_languages(languages)
movie_languages('en').
movie_languages('man').
movie_languages('kor').


%movie_genre/1
%movie_genre(genre)
movie_genre('Crime').
movie_genre('Drama').
movie_genre('Comedy').
%End of the static part:

%=============================================================================================
%5.1 Add, update and remove KB items.
%a. Add, update and remove a movie_details/6:

%add a movie_details
add_a_movie(Title, ID, IMDB_id, Genre, Languages, Plot):-
    call(movie_details(Title, ID, IMDB_id, Genre, Languages, Plot)), !,
    nl,
    write('Already exists, can not add again');
    asserta(movie_details(Title, ID, IMDB_id, Genre, Languages, Plot)).

% add_a_movie('lala land', 11, tt3783958, 'Comedy', [en], "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.").
% findall(X,movie_details(X,_,_,_,_,_), M).
% movie_details(X,A,Q,V,D,L).

%remove a movie
remove_a_moive(Title, ID, IMDB_id, Genre, Languages, Plot):-
    call(movie_details(Title, ID, IMDB_id, Genre, Languages, Plot)), 
    retract(movie_details(Title, ID, IMDB_id, Genre, Languages, Plot)).

% remove_a_moive('lala land', 11, tt3783958, 'Comedy', [en], "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.").
% findall(X,movie_details(X,_,_,_,_,_), M).

%modify a movie title
update_movie_title(movie_details(OldTitle), movie_details(NewTitle)) :-
    call(movie_details(OldTitle, ID, IMDB_id, Genre, Languages, Plot)), 
    retract(movie_details(OldTitle,_,_,_,_,_)), 
    asserta(movie_details(NewTitle, ID, IMDB_id, Genre, Languages, Plot)).

% update_movie_title(movie_details('Cotton Flowers'), movie_details('Cotton')).
% findall(X,movie_details(X,_,_,_,_,_), M).
% movie_details(X,A,Q,V,D,L).


%b. Add, update and remove a movie_cast.
%add a movie_cast
add_movie_cast(Title, Actor, Role):-
    call(movie_cast(Title, Actor, Role)), !,
    nl,
    write('Already exists, can not add again');
    asserta(movie_cast(Title, Actor, Role)).

% add_movie_cast('lala land', 'Emma Stone', 'Mia').
% add_movie_cast('lala land', 'Ryan Gosling', 'Sebastian').
% findall(X,movie_cast('lala land',X, _), Cast).

%remove a cast
remove_a_cast(Title, Actor, Role):-
    call(movie_cast(Title, Actor, Role)), 
    retract(movie_cast(Title, Actor, Role)).

% remove_a_cast('lala land', 'Emma Stone', 'Mia').
% findall(X,movie_cast('lala land',X, _), Cast).

%modify a movie title
update_movie_cast(OldActor, NewActor) :-
    call(movie_cast(Title,OldActor, Role)), 
    retract(movie_cast(_,OldActor, _)), 
    asserta(movie_cast(Title,NewActor,Role)).

% update_movie_cast('Ryan Gosling', 'Kenny').
% movie_cast('lala land', Actor, Role).


%c. Add, update and remove a movie_keywords.
%add a movie_keywords
add_movie_keywords(Title, Keyword):-
    call(movie_keywords(Title, Keyword)), !,
    nl,
    write('Already exists, can not add again');
    asserta(movie_keywords(Title, Keyword)).

% add_movie_keywords('lala land', ['married life', 'love story', 'LA', 'Dancing', 'Sing']).
% findall(X,movie_keywords('lala land',X), Keyword).

%remove a cast
remove_a_keywords(Title, Keyword):-
    call(movie_keywords(Title, Keyword)), 
    retract(movie_keywords(Title, Keyword)).

% remove_a_keywords('lala land', ['married life', 'love story', 'LA', 'Dancing', 'Sing']).
% findall(X,movie_keywords('lala land',X), Keyword).

%modify a movie keyword
update_movie_keyword(OldKeyword, NewKeyword) :-
    call(movie_keywords(Title, OldKeyword)), 
    retract(movie_keywords(_, OldKeyword)), 
    asserta(movie_cast(Title, NewKeyword)).

% update_movie_keyword(['married life', 'love story', 'LA', 'Dancing', 'Sing'], ['love', 'sing', 'dacing', 'broken up', 'LA']).
% findall(X,movie_keywords('lala land',X), Keyword).

%5.2 Knowledge-Base Queries
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

%update a language

update_movie_language(Title, Language) :-
    (member(X,Language),
    not(movie_languages(X)) -> false,
    fail;true
    ),
    movie_details(Title,ID,IMDB_id, Genre, _, Polt),
    retract(movie_details(Title,_,_,_,_,_)),
    asserta(movie_details(Title,ID,IMDB_id, Genre, Language, Polt)).


% update_movie_language('Love Letter', [kor, en]).

%adding an unknown language.
% update_movie_language('Love Letter', [span]).
% movie_details('Love Letter',ID, IMDB_id, Genre, Language, Polt).


%5.2.1 Categorical Syllogisms
%All movies are english movie (A form)
all_english_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[en|_],_), EnMv_Lst), length(EnMv_Lst, EnLst_Length),
    findall(X, movie_details(X,_,_,_,_,_), AllMv_Lst), length(AllMv_Lst, AllLst_Length),
    movie_languages('en'),
    EnLst_Length == AllLst_Length-> 
        write('True, All movies are English movie : '),nl, write(EnMv_Lst);
        write('False, Not all movie are English'),fail.

%All movies are Korean movie (A form)
all_korean_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,kor],_), KorMv_Lst), length(KorMv_Lst, KorLst_Length),
    findall(X, movie_details(X,_,_,_,_,_), AllMv_Lst), length(AllMv_Lst, AllLst_Length),
    movie_languages('kor'),
    KorLst_Length == AllLst_Length-> 
        write('True, All movies are Korean movie : '),nl, write(KorMv_Lst);
        write('False, Not all movie are Korean'),fail.

%No movies are Yordle movie (E form)
no_yordle_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,yordle],_), Lst),
    (call(movie_details(X,_,_,_,[_,yordle],_))-> 
        write('False, here is the list of Yordle movie.'), nl, write(Lst),fail ; 
        write('True, there is no Yordle movie. '),true).

%No movies are mandarin movie  (E form)
no_english_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,man],_), Lst),
    (call(movie_details(X,_,_,_,[_,man],_))-> 
        write('False, here is the list of Mandarin movie'), nl, write(Lst),fail ; 
        write('True, there is no Mandarin movie'),true).

%Some movies are mandarin movie (I form)
some_mandarin_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,man],_), Lst), length(Lst, ManLst_Length),
    movie_languages('man'),
    ManLst_Length >0 -> 
        write('True, here is the list of mandarin movie: '),nl, write(Lst),true ;
        write('False, No movies are mandarin'),fail.

%Some movies are Yordle movie (I form)
some_yordle_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,yordle],_), Lst), length(Lst, YoLst_Length),
    movie_languages('yordle'),
    YoLst_Length >0 -> 
        write('True, here is the list of Yordle movie: '),nl, write(Lst),true ;
        write('False, No movies are Yordle'),fail.


%Some movies are not mandarin movie (O form)
some_nonmandarin_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[_,man],_),ManLst), length(ManLst, ManLst_Len),
    findall(X, movie_details(X,_,_,_,_,_), AllMv_Lst), length(AllMv_Lst, AllLst_Length),
    AllLst_Length - ManLst_Len >0 -> 
        write('True, here is the list of non mandarin movie'),true;
        write('False, All movies are mandarin'),fail.


%Some movies are not English movie (O form)
some_nonenglish_movie(X) :- 
    findall(X, movie_details(X,_,_,_,[en|_],_),EnLst), length(EnLst, EnLst_Len),
    findall(X, movie_details(X,_,_,_,_,_), AllMv_Lst), length(AllMv_Lst, AllLst_Length),
    AllLst_Length - EnLst_Len >0 -> 
        write('True, here is the list of non English movie'),true;
        write('False, All movies are English'),fail.





