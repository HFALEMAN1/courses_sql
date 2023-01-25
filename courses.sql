CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "teacher" varchar,
  "user_id" serial,
  "category_id" int
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "course_id" serial
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "level" (
  "id" serial PRIMARY KEY,
  "principiante" varchar,
  "medio" varchar,
  "avanzado" varchar,
  "course_id" serial
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "level" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");



insert into users( 
name,
email,
password,
age 
) 
values (
'Hector Falcón',
'hector18falcon@hotmail.com',
'root',
26

)

insert into courses(
title,
description,
teacher
)
values(  
'Desarrollo web',
'Curso HTML,CSS y Javascript',
'Jesus'
)


insert into course_videos ( 
title,
url
)
values( 
'Introduccion HTML',
'https://us02web.zoom.us/rec/share/eN2by2FicVUdnkla4IJsn34ksoAZ5svFtercLPsG1RhXEIDFez2UOvcljc89lfmE.Ts1ZyBoppNhq9kho'
)


insert into categories (  
name
)
values( 
'Desarrollo web'
)


insert into "level"  (
principiante

)
values (
'level 1'
)
---SEGUNDO REGISTRO
insert into users( 
name,
email,
password,
age 
) 
values (
'Sebastian Garnica',
'sgarnica23@hotmail.com',
'root',
30

)

insert into courses(
title,
description,
teacher
)
values(  
'Desarrollo web',
'REACT',
'Junior'
)


insert into course_videos ( 
title,
url
)
values( 
'Introduccion HOOKS',
'https://us02web.zoom.us/rec/share/htMHfibSiAL_WT-V7uDIKbkClOIsLXS8cp5OxTJKawg67JiQXf9xD4JhS_flmidc.XIb3wqxK49Gi-SFY'
)


insert into categories (  
name
)
values( 
'Desarrollo web'
)


insert into "level"  (
medio

)
values (
'level 2'
)