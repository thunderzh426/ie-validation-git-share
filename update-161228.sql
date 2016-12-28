CREATE TABLE app_NlpApp2.document_status (
	document_namespace VARCHAR(500) NOT NULL,
	document_table VARCHAR(500) NOT NULL,
	document_id bigint NOT NULL,
	status int NULL DEFAULT 0,
	PRIMARY KEY (document_namespace, document_table, document_id)
)

INSERT INTO app_NlpApp2.document_status VALUES ('validator','documents',1,3),('validator','documents',2,3),('validator','documents',3,3),('validator','documents',4,3),('validator','documents',5,3),('validator','documents',6,3),('validator','documents',7,3),('validator','documents',8,3),('validator','documents',9,3),('validator','documents',10,3),('validator','documents',11,0),('validator','documents',12,0),('validator','documents',13,0),('validator','documents',14,0),('validator','documents',15,0);

CREATE TABLE app_NlpApp2.frame_instance_status (
	frame_instance_id BIGINT NOT NULL,
	status INT NULL DEFAULT NULL,
	PRIMARY KEY (frame_instance_id)
)

INSERT INTO app_NlpApp2.frame_instance_status VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0);

CREATE TABLE app_NlpApp2.history (
	id INT NOT NULL IDENTITY(1,1),
	act VARCHAR(255) NULL DEFAULT NULL,
	html_id VARCHAR(255) NULL DEFAULT NULL,
	extra_information VARCHAR(1000) NULL DEFAULT NULL,
	PRIMARY KEY (id)
)
INSERT INTO app_NlpApp2.history VALUES ('add','exam_date_0_0','start:250; end:270'),('add','exam_date_0_0','start:252; end:273'),('add','date_of_birth_0_0','start:67; end:78'),('add','age_0_0','start:257; end:273'),('add','date_of_birth_0_0','start:704; end:713'),('add','age_0_0','start:856; end:864'),('add','date_of_birth_0_0','start:268; end:273'),('add','date_of_birth_0_0','start:268; end:273'),('add','date_of_birth_0_0','start:268; end:273'),('add','date_of_birth_0_0','start:67; end:78'),('add','age_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','age_0_0','start:234; end:243'),('add','race_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','age_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:234; end:243'),('add','comparison_exam_yes_0_0','start:101; end:108'),('add','date_of_birth_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:234; end:243'),('add','other_sig_findings_specify_0_0','start:2016; end:2026'),('add','date_of_birth_0_0','start:57; end:64'),('add','date_of_birth_0_0','start:0; end:4'),('add','date_of_birth_0_0','start:57; end:64'),('add','date_of_birth_0_0','start:101; end:108'),('add','date_of_birth_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:234; end:243'),('add','date_of_birth_0_0','start:101; end:108'),('add','date_of_birth_0_0','start:704; end:713'),('add','date_of_birth_0_0','start:856; end:864'),('add','age_0_0','start:111; end:233'),('add','unclear_0_0','start:1452; end:1462');

CREATE TABLE app_NlpApp2.project (
	project_id INT NOT NULL IDENTITY(1,1),
	name VARCHAR(500) NULL DEFAULT NULL,
	PRIMARY KEY (project_id)
)

INSERT INTO app_NlpApp2.project VALUES ('Lung Cancer Screening');

CREATE TABLE app_NlpApp2.project_frame_instance (
	project_id INT NOT NULL,
	frame_instance_id INT NOT NULL,
	PRIMARY KEY (project_id, frame_instance_id)
)

INSERT INTO app_NlpApp2.project_frame_instance VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50);

CREATE TABLE app_NlpApp2.tablename_lookup (
	annotation_type VARCHAR(500) NULL DEFAULT NULL,
	table_type VARCHAR(100) NULL DEFAULT NULL,
	table_name VARCHAR(500) NULL DEFAULT NULL
)

INSERT INTO app_NlpApp2.tablename_lookup VALUES ('lungrads-age','index','msa_profile_match_index_lungrads_age'),('lungrads-age','profile','msa_profile_lungrads_age'),('lungrads-age','final','msa_profile_final_lungrads_age');

CREATE TABLE app_NlpApp2.validated_document (
	document_id BIGINT NOT NULL,
	PRIMARY KEY (document_id)
)

DROP table app_NlpApp2.crf_project;
CREATE TABLE app_NlpApp2.crf_project (
	crf_project_id INT NOT NULL IDENTITY(1,1),
	crf_id INT NULL DEFAULT NULL,
	project_id INT NULL DEFAULT NULL,
	PRIMARY KEY (crf_project_id)
)

insert into app_NlpApp2.crf_project values(1,1);

drop table app_NlpApp2.frame_instance_data;
CREATE TABLE app_NlpApp2.frame_instance_data (
	frame_instance_id INT NOT NULL,
	slot_id INT NOT NULL,
	value TEXT NULL,
	section_slot_number INT NULL DEFAULT 0,
	element_slot_number INT NULL DEFAULT 0,
	document_namespace VARCHAR(500) NULL DEFAULT NULL,
	document_table VARCHAR(500) NULL DEFAULT NULL,
	document_id INT NULL DEFAULT NULL,
	annotation_id INT NULL DEFAULT NULL,
	provenance VARCHAR(500) NULL DEFAULT NULL,
	element_id INT NULL DEFAULT NULL,
	v_scroll_pos INT NULL DEFAULT NULL,
	scroll_height INT NULL DEFAULT NULL,
	scroll_width INT NULL DEFAULT NULL
)