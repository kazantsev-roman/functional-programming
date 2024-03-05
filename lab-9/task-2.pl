% 2.a Создать базу данных "Хобби". Предикат likes определяет отношение человек - хобби.

likes(ellen, reading).
likes(john, computers).
likes(john, badminton).
likes(john, photo).
likes(john, reading).
likes(leonard, badminton).
likes(eric, swimming).
likes(eric, reading).
likes(eric, chess).
likes(paul, swimming).

% 2.b Составить вопрос и найти тех, кто имеет четыре хобби.

person_with_four_hobbies(Person) :-
  likes(Person, Hobby1),
  likes(Person, Hobby2),
  likes(Person, Hobby3),
  likes(Person, Hobby4),
  Hobby1 \= Hobby2, Hobby1 \= Hobby3, Hobby1 \= Hobby4,
  Hobby2 \= Hobby3, Hobby2 \= Hobby4,
  Hobby3 \= Hobby4.

% 2.c Составить вопрос и найти тех, у кого одинаковые хобби.

same_hobby(Person1, Person2, Hobby) :-
  likes(Person1, Hobby),
  likes(Person2, Hobby),
  Person1 \= Person2.
