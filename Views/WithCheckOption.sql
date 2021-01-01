 SELECT lesson.id,
    lesson.name,
    lesson.quota,
    lesson.department
   FROM lesson
  WHERE length(lesson.name::text) > 12
  WITH CHECK OPTION;

--> optionslari saglamayan verilerin insert edilmesini engeller.

--> insert into ile name sutunu 12 karakterden kucuk bir ders ekleyemeyiz