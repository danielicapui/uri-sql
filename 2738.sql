create table candidate(
  id INTEGER PRIMARY KEY,
  name VARCHAR (255)
);

create table score(
  candidate_id INTEGER,
  math NUMERIC,
  specific NUMERIC,
  project_plan NUMERIC
);


insert into candidate(id, name)
values
	     (1, 'Michael P Cannon'),
       (2, 'Barbra J Cable'),
       (3, 'Ronald D Jones'),
       (4, 'Timothy K Fitzsimmons'),
       (5, 'Ivory B Morrison'),
       (6, 'Sheila R Denis'),
       (7, 'Edward C Durgan'),
       (8, 'William K Spencer'),
       (9, 'Donna D Pursley'),
       (10, 'Ann C Davis');

insert into score(candidate_id, math, specific, project_plan)
values
	     (1, 76, 58, 21),
       (2, 4, 5, 22),
       (3, 15, 59, 12),
       (4, 41, 42, 99),
       (5, 22, 90, 9),
       (6, 82, 77, 15),
       (7, 82, 99, 56),
       (8, 11, 4, 22),
       (9, 16, 29, 94),
       (10, 1, 7, 59);
--search

select candidate.name, cast((((math*2)+(specific*3) + (project_plan*5)) / 10) AS numeric(15,2)) from candidate,score
where candidate.id=score.candidate_id
order by numeric desc
