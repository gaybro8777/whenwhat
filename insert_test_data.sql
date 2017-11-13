INSERT INTO events VALUES (1,'2017-11-12 9:00','test release','release','publish.R','local','false');
INSERT INTO events VALUES (2,'2017-11-12 9:01','GL indicator','computation','compute_gl.R','local','false');
INSERT INTO events VALUES (3,'2017-11-28 9:01','GL INU','computation','compute_inu_gl.R','local','false');
INSERT INTO events VALUES (4,'2017-11-11 9:01','GL DHU','computation','compute_dhu_gl.R','local','false');


INSERT INTO dependencies VALUES (2,3);
INSERT INTO dependencies VALUES (2,4);


-- all queries that I would like to run
SELECT id FROM events WHERE scheduled_for > '2017-11-13'::DATE;
-- Am I allowed to run the retrieved queries fiven their dependencies?
SELECT d.event_id, e.done FROM events e JOIN dependencies d ON (d.depends_on = e.id)
