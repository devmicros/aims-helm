ALTER DATABASE aimsdata SET timezone TO 'UTC';
-- -----------------------------------
-- Tablas de encolamiento de mensajes
-- -----------------------------------

CREATE TABLE IF NOT EXISTS alarms
(
    id_buff character(10), --COLLATE pg_catalog."default",
    buff character(250), --COLLATE pg_catalog."default",
    created_at bigint NOT NULL DEFAULT (date_part('epoch'::text, now()) * (1000)::double precision)
);

--TABLESPACE pg_default;

ALTER TABLE alarms
    OWNER to postgres;
	
	
CREATE TABLE IF NOT EXISTS buffer
(
    id_buff character(10), --COLLATE pg_catalog."default",
    buff character(250), --COLLATE pg_catalog."default",
    created_at bigint NOT NULL DEFAULT (date_part('epoch'::text, now()) * (1000)::double precision)
);

--TABLESPACE pg_default;

ALTER TABLE buffer
    OWNER to postgres;
	


	
CREATE TABLE IF NOT EXISTS events
(
    id_buff character(10), --COLLATE pg_catalog."default",
    buff character(250), -- COLLATE pg_catalog."default",
    created_at bigint NOT NULL DEFAULT (date_part('epoch'::text, now()) * (1000)::double precision)
);

--TABLESPACE pg_default;

ALTER TABLE events
    OWNER to postgres;
