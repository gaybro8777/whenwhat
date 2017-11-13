CREATE TABLE events (
	id integer primary key,
	tstamp timestamp,
	name text,
	category text,
	script_path text,
	node text,
	done boolean
);

CREATE TABLE dependencies (
	event_id integer,
	depends_on integer,
	foreign key (event_id) references events (id) on delete cascade
);