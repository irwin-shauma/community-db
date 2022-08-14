CREATE TABLE article_header (
    id varchar(36),
    article_header_code varchar(36),
    file_id varchar(36),
    title text,
    contents text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE balance (
    id varchar(36),
    balance_code varchar(36),
    user_id varchar(36),
    current_balance double precision,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE bookmark (
    id varchar(36),
    bookmark_code varchar(36),
    user_id varchar(36),
    thread_id varchar(36),
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE event_detail (
    id varchar(36),
    event_detail_code varchar(36),
    event_header_id varchar(36),
    price float,
    start_date timestamp,
    end_date timestamp,
    provider text,
    locations text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE event_header (
    id varchar(36),
    event_header_code varchar(36),
    event_type_id varchar(36),
    file_id varchar(36),
    title text,
    user_id varchar(36),
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE event_type (
    id varchar(36),
    event_type_code varchar(36),
    type text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE file (
    id varchar(36),
    file_code varchar(36),
    file_name text,
    file_ext text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);


CREATE TABLE event_payment_history (
    id varchar(36),
    event_payment_history_code varchar(36),
    payment_id varchar(36),
    user_id varchar(36),
    event_header_id varchar(36),
    trx_no text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);


CREATE TABLE premium_payment_history (
    id varchar(36),
    premium_payment_history_code varchar(36),
    payment_id varchar(36),
    user_id varchar(36),
    premium_type_id varchar(36),
    trx_no text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);


CREATE TABLE premium_type (
    id varchar(36),
    premium_type_code varchar(36),
	price varchar(36),
	duration integer,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);


CREATE TABLE payment (
    id varchar(36),
    payment_code varchar(36),
    file_id varchar(36),
    user_id varchar(36),
    is_approve boolean,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE profile (
    id varchar(36),
    profile_code varchar(36),
    premium_payment_history_id varchar(36),
    file_id varchar(36),
    full_name text,
    company text,
    industry text,
    positions text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE roles (
    id varchar(36),
    role_code varchar(36),
    role_name text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_details (
    id varchar(36),
    thread_detail_code varchar(36),
    thread_header_id varchar(36),
    -- Deleted
    -- file_id varchar(36),
    user_id varchar(36),
    comment_thread text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_polling_header (
    id varchar(36),
    thread_polling_header_code varchar(36),
	-- New    
    user_id varchar(36),
    duration date,
    
    title_polling text,
    content_polling text,
    polling_question text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_headers (
    id varchar(36),
    thread_header_code varchar(36),
    thread_type_id varchar(36),
    user_id varchar(36),
    file_id varchar(36),
    title text,
    content_thread text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_like (
    id varchar(36),
    thread_like_code varchar(36),
    user_id varchar(36),
    thread_id varchar(36),
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_polling_like (
    id varchar(36),
    thread_polling_like_code varchar(36),
    user_id varchar(36),
    thread_polling_header_id varchar(36),
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_polling_answer (
    id varchar(36),
    thread_polling_answer_code varchar(36),
    thread_detail_polling_id varchar(36),
    user_id varchar(36),
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_polling_detail (
    id varchar(36),
    thread_polling_detail_code varchar(36),
    thread_polling_header_id varchar(36),
    polling_choice text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_types (
    id varchar(36),
    thread_types_code varchar(36),
    thread_type text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);

CREATE TABLE users (
    id varchar(36),
    users_code varchar(36),
    role_id varchar(36),

    profile_id varchar(36),
    token_id varchar(36),
    email text,
    passwords text,
    created_at timestamp,
    created_by varchar(36),
    updated_at timestamp,
    updated_by varchar(36),
    is_active boolean,
    "version" integer
);


CREATE TABLE tokens (
    id varchar(36),
    refresh_token text,
    expired_date timestamp,
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
    is_active boolean,
    "version" integer
);



ALTER TABLE article_header
    ADD CONSTRAINT article_header_bk UNIQUE (article_header_code);
    
ALTER TABLE article_header
    ADD CONSTRAINT article_header_pk PRIMARY KEY (id);


ALTER TABLE balance
    ADD CONSTRAINT balance_bk UNIQUE (balance_code);

ALTER TABLE balance
    ADD CONSTRAINT balance_pk PRIMARY KEY (id);


ALTER TABLE bookmark
    ADD CONSTRAINT bookmark_code_bk UNIQUE (bookmark_code);


ALTER TABLE bookmark
    ADD CONSTRAINT bookmark_pk PRIMARY KEY (id);


ALTER TABLE event_detail
    ADD CONSTRAINT event_detail_bk UNIQUE (event_detail_code);


ALTER TABLE event_detail
    ADD CONSTRAINT event_detail_pk PRIMARY KEY (id);


ALTER TABLE event_header
    ADD CONSTRAINT event_header_bk UNIQUE (event_header_code);


ALTER TABLE event_header
    ADD CONSTRAINT event_header_pk PRIMARY KEY (id);


ALTER TABLE event_type
    ADD CONSTRAINT event_type_bk UNIQUE (event_type_code);


ALTER TABLE event_type
    ADD CONSTRAINT event_type_pk PRIMARY KEY (id);

ALTER TABLE file
    ADD CONSTRAINT file_bk UNIQUE (file_code);


ALTER TABLE file
    ADD CONSTRAINT file_pk PRIMARY KEY (id);


ALTER TABLE event_payment_history
	ADD CONSTRAINT event_payment_history_bk UNIQUE (event_payment_history_code);

ALTER TABLE event_payment_history
	ADD CONSTRAINT event_payment_history_pk PRIMARY KEY(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT premium_payment_history_bk UNIQUE (premium_payment_history_code);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT premium_payment_history_pk PRIMARY KEY(id);

ALTER TABLE premium_type
	ADD CONSTRAINT premium_type_bk UNIQUE(premium_type_code);

ALTER TABLE premium_type
	ADD CONSTRAINT premium_type_pk PRIMARY KEY(id);

ALTER TABLE payment
    ADD CONSTRAINT payment_bk UNIQUE (payment_code);


ALTER TABLE payment
    ADD CONSTRAINT payment_pk PRIMARY KEY (id);


ALTER TABLE profile
    ADD CONSTRAINT profile_code_bk UNIQUE (profile_code);


ALTER TABLE profile
    ADD CONSTRAINT profile_pk PRIMARY KEY (id);


ALTER TABLE roles
    ADD CONSTRAINT role_code_bk UNIQUE (role_code);


ALTER TABLE roles
    ADD CONSTRAINT role_pk PRIMARY KEY (id);


ALTER TABLE thread_details
    ADD CONSTRAINT thread_detail_code_bk UNIQUE (thread_detail_code);

ALTER TABLE thread_details
    ADD CONSTRAINT thread_detail_pk PRIMARY KEY (id);


   
ALTER TABLE thread_headers
    ADD CONSTRAINT thread_header_bk UNIQUE (thread_header_code);

ALTER TABLE thread_headers
    ADD CONSTRAINT thread_header_pk PRIMARY KEY (id);


ALTER TABLE thread_polling_header
    ADD CONSTRAINT thread_polling_header_bk UNIQUE (thread_polling_header_code);


ALTER TABLE thread_polling_header
    ADD CONSTRAINT thread_polling_header_pk PRIMARY KEY (id);

ALTER TABLE thread_like
    ADD CONSTRAINT thread_like_bk UNIQUE (thread_like_code);


ALTER TABLE thread_like
    ADD CONSTRAINT thread_like_pk PRIMARY KEY (id);

ALTER TABLE thread_polling_like
    ADD CONSTRAINT thread_polling_like_bk UNIQUE (thread_polling_like_code);

ALTER TABLE thread_polling_like
    ADD CONSTRAINT thread_polling_like_pk PRIMARY KEY(id);


ALTER TABLE thread_polling_answer
    ADD CONSTRAINT thread_polling_answer_bk UNIQUE (thread_polling_answer_code);


ALTER TABLE thread_polling_answer
    ADD CONSTRAINT thread_polling_answer_pk PRIMARY KEY (id);


ALTER TABLE thread_polling_detail
    ADD CONSTRAINT thread_polling_detail_bk UNIQUE (thread_polling_detail_code);

ALTER TABLE thread_polling_detail
    ADD CONSTRAINT thread_polling_detail_pk PRIMARY KEY (id);

ALTER TABLE thread_types
    ADD CONSTRAINT thread_type_bk UNIQUE (thread_types_code);

ALTER TABLE thread_types
    ADD CONSTRAINT thread_type_pk PRIMARY KEY (id);

ALTER TABLE users
    ADD CONSTRAINT user_code_bk UNIQUE (users_code);

ALTER TABLE users
    ADD CONSTRAINT user_email_bk UNIQUE(email);

ALTER TABLE users
    ADD CONSTRAINT user_pk PRIMARY KEY (id);
   
ALTER TABLE tokens
    ADD CONSTRAINT token_pk PRIMARY KEY (id);

-- FK
	
ALTER TABLE balance
    ADD CONSTRAINT balance_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE event_header
    ADD CONSTRAINT event_type_fk FOREIGN KEY (event_type_id) REFERENCES event_type(id);

ALTER TABLE event_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);


ALTER TABLE event_header
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE article_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE event_detail
    ADD CONSTRAINT event_header_fk FOREIGN KEY (event_header_id) REFERENCES event_header(id);
   
ALTER TABLE event_payment_history
	ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE event_payment_history
	ADD CONSTRAINT event_header_fk FOREIGN KEY(event_header_id) REFERENCES event_header(id);

AlTER TABLE event_payment_history
	ADD CONSTRAINT payment_fk FOREIGN KEY(payment_id) REFERENCES payment(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT premium_type_fk FOREIGN KEY(premium_type_id) REFERENCES premium_type(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT payment_fk FOREIGN KEY(payment_id) REFERENCES payment(id);

ALTER TABLE payment
    ADD CONSTRAINT payment_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE users
    ADD CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES roles(id);

ALTER TABLE profile
	ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE thread_details
    ADD CONSTRAINT thread_details_fk FOREIGN KEY (thread_header_id) REFERENCES thread_headers(id);

ALTER TABLE bookmark
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES thread_headers(id);

ALTER TABLE thread_like
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES thread_headers(id);
   
ALTER TABLE thread_polling_header
	ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE thread_polling_detail
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES thread_polling_header(id);

ALTER TABLE thread_like
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE thread_polling_answer ADD CONSTRAINT thread_polling_answer_fk FOREIGN KEY (thread_detail_polling_id) REFERENCES thread_polling_detail(id);

ALTER TABLE thread_polling_like
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES thread_polling_header(id);

ALTER TABLE thread_polling_like
    ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE thread_headers
    ADD CONSTRAINT thread_type_fk FOREIGN KEY (thread_type_id) REFERENCES thread_types(id);

ALTER TABLE thread_headers
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

-- new
ALTER TABLE thread_headers
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE bookmark
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE thread_polling_answer
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE thread_details
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE payment
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE users
    ADD CONSTRAINT profile_fk FOREIGN KEY (profile_id) REFERENCES profile(id);
   
ALTER TABLE users
    ADD CONSTRAINT token_fk FOREIGN KEY (token_id) REFERENCES tokens(id);
   
ALTER TABLE profile
    ADD CONSTRAINT premium_payment_history_fk FOREIGN KEY (premium_payment_history_id) REFERENCES premium_payment_history(id);

   
-- Generating uuid
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- The id and code should be generated using uuid_generate_v4(), for the sake of simplicity, id will be hardcoded. 

--INSERT INTO roles (id, role_code, role_name, created_by, created_at, updated_by, updated_at, is_active, "version")
--VALUES
--    (uuid_generate_v4(), 'ROLE1', 'Role 1', null, now(), null, now(), true, 0),
--    (uuid_generate_v4(), 'ROLE2', 'Role 2', null, now(), null, now(), true, 0),
--    (uuid_generate_v4(), 'ROLE3', 'Role 3', null, now(), null, now(), true, 0),
--    (uuid_generate_v4(), 'ROLE4', 'Role 4', null, now(), null, now(), true, 0),
--    (uuid_generate_v4(), 'ROLE5', 'Role 5', null, now(), null, now(), true, 0);
   
INSERT INTO roles (id, role_code, role_name, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
    ('dbbda007-34bd-4c68-bfca-4bc97881fef2', 'SYSTEM', 'System', null, now(), null, now(), true, 0),
    ('acda187-34bd-4c68-bfca-4bc97881fee1', 'SUPERADMIN', 'System', null, now(), null, now(), true, 0),
    ('35a2b727-6c8a-4448-a14a-3d15c5c1beef', 'MEMBER', 'Member', null, now(), null, now(), true, 0);
   
INSERT INTO profile (id, profile_code, full_name, company, industry, positions, premium_payment_history_id, file_id, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
	('3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a', uuid_generate_v4(), 'System', 'Lawencon', 'IT', 'System', null, null, null, now(), null, now(), true, 0),
	('39b3b96b-084d-40a3-9bf5-4ee9fdce8f5b', uuid_generate_v4(), 'Admin', 'Lawencon', 'IT', 'Admin', null, null, null, now(), null, now(), true, 0),
	('343acb24-084d-40a3-9bf5-4ee9fdce7e77', uuid_generate_v4(), 'Member', 'Lawencon', 'IT', 'Karyawan', null, null, null, now(), null, now(), true, 0),
	('443acb24-084d-40a3-9bf5-4ee9fdce7e88', uuid_generate_v4(), 'Member', 'Lawencon', 'IT', 'Karyawan', null, null, null, now(), null, now(), true, 0),
	('543acb24-084d-40a3-9bf5-4ee9fdce7e99', uuid_generate_v4(), 'Member', 'Lawencon', 'IT', 'Karyawan', null, null, null, now(), null, now(), true, 0);
   
INSERT INTO users (id, users_code, email, passwords, role_id, profile_id, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
    ('f72065bd-f866-4b67-8524-bec50bd23cc7', uuid_generate_v4(), 'system', '$2a$10$RTZ7b8VIo9EC9214sZVES.tY3GaEiupM3wELgoNMNvgwmN7L1cZ2K', 'dbbda007-34bd-4c68-bfca-4bc97881fef2', '3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a'  ,null, now(), null, now(), true, 0),
    ('e61954ac-f866-4b67-8524-bec50bd23aa7', uuid_generate_v4(), 'admin', '$2a$10$pN0DCKfxFrcTgdbiPc62SOtycNH1Hd7qRmLMACR7j9JANR8AR8OKy', 'acda187-34bd-4c68-bfca-4bc97881fee1', '39b3b96b-084d-40a3-9bf5-4ee9fdce8f5b'  ,null, now(), null, now(), true, 0),
    ('2c55391b-2c58-4beb-a97a-f8482991efb7', uuid_generate_v4(), 'member', '$2a$10$n.MxDi1fkcGXUoO7jiwJEundWIoYsyWhWzpEKZmkbPBpc9Zy2/gym', '35a2b727-6c8a-4448-a14a-3d15c5c1beef', '343acb24-084d-40a3-9bf5-4ee9fdce7e77', null, now(), null, now(), true, 0),
    ('2c55391b-2c58-4beb-a97a-f8482991efb8', uuid_generate_v4(), 'member2', '$2a$10$n.MxDi1fkcGXUoO7jiwJEundWIoYsyWhWzpEKZmkbPBpc9Zy2/gym', '35a2b727-6c8a-4448-a14a-3d15c5c1beef', '443acb24-084d-40a3-9bf5-4ee9fdce7e88', null, now(), null, now(), true, 0),
    ('2c55391b-2c58-4beb-a97a-f8482991efb9', uuid_generate_v4(), 'member3', '$2a$10$n.MxDi1fkcGXUoO7jiwJEundWIoYsyWhWzpEKZmkbPBpc9Zy2/gym', '35a2b727-6c8a-4448-a14a-3d15c5c1beef', '543acb24-084d-40a3-9bf5-4ee9fdce7e99', null, now(), null, now(), true, 0);



INSERT INTO balance(id, balance_code, user_id, current_balance, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('62031900-71ae-4adf-83f9-46dac23a730a', uuid_generate_v4(), 'f72065bd-f866-4b67-8524-bec50bd23cc7', 0, now(), null, now(), null, true, 0),
	('915B4C8B-d94a-4d8a-a30a-396C4D374F7E', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb7', 0, now(), null, now(), null, true, 0);

INSERT INTO premium_type(id, premium_type_code, price, duration, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('9a36cd92-7a10-4855-ac51-4f4ebaf91614', uuid_generate_v4(), 100000, 3600, now(), null, now(), null, true, 0),
	('b5678fcd-0d4b-43f1-9119-f01c36998ba8', uuid_generate_v4(), 200000, 7200, now(), null, now(), null, true, 0),
	('122f81d0-11fd-41be-80bb-54a500ad7906', uuid_generate_v4(), 300000, 12800, now(), null, now(), null, true, 0);

INSERT INTO thread_types (id, thread_types_code, thread_type, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('52920899-71ae-4adf-83f9-46dac23a730a', uuid_generate_v4(), 'Regular', now(), 'e61954ac-f866-4b67-8524-bec50bd23aa7', null, null, true, 0),
	('804a3c7a-d94a-4d8a-a30a-285b3c263e6d', uuid_generate_v4(), 'Premium', now(), 'e61954ac-f866-4b67-8524-bec50bd23aa7', null, null, true, 0);

INSERT INTO thread_headers(id, thread_header_code, thread_type_id, user_id, file_id, title, content_thread, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('cc0acdca-de89-4086-ad92-492eeb02cdd2', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb7', null, 'Dummy No 1', 'this is the dumy1', now(), null, now(), null, true, 0),
	('516b8aca-ecab-4b60-8e1d-1290a927305e', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb7', null, 'Dummy No 2', 'this is the dumy2', now(), null, now(), null, true, 0),
	('2dd11b82-75dd-466f-b958-561454cb6061', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb7', null, 'Dummy No 3', 'this is the dumy3', now(), null, now(), null, true, 0),
	('bf50021c-b31c-42c3-bab0-9e0e1c24c2ef', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb9', null, 'Dummy No 4', 'this is the dumy4', now(), null, now(), null, true, 0),
	('29ae90c3-cf16-46a3-ae7b-b04117517cf1', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb8', null, 'Dummy No 5', 'this is the dumy5', now(), null, now(), null, true, 0),
	('dd3b6fa8-f33c-46f3-9985-c9c1f05bbe14', uuid_generate_v4(), '52920899-71ae-4adf-83f9-46dac23a730a', '2c55391b-2c58-4beb-a97a-f8482991efb8', null, 'Dummy No 6', 'this is the dumy6', now(), null, now(), null, true, 0),
	('0d84b01a-65fa-4733-8b27-6bfbf597434a', uuid_generate_v4(), '804a3c7a-d94a-4d8a-a30a-285b3c263e6d', '2c55391b-2c58-4beb-a97a-f8482991efb9', null, 'Dummy No 7', 'this is the dumy7', now(), null, now(), null, true, 0),
	('d47d709a-0f3c-409a-b123-32567657fb1d', uuid_generate_v4(), '804a3c7a-d94a-4d8a-a30a-285b3c263e6d', '2c55391b-2c58-4beb-a97a-f8482991efb9', null, 'Dummy No 8', 'this is the dumy8', now(), null, now(), null, true, 0);
	
INSERT INTO thread_details(id, thread_detail_code, thread_header_id, user_id, comment_thread, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('47694a1a-475c-466c-83db-ca4f235b419c', uuid_generate_v4(), 'cc0acdca-de89-4086-ad92-492eeb02cdd2', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment1', now(), null, now(), null, true, 0), 
	('16b85d1b-c54f-46ec-85ef-473bc3f1da01', uuid_generate_v4(), 'cc0acdca-de89-4086-ad92-492eeb02cdd2', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment2', now(), null, now(), null, true, 0), 
	('a3328ca3-3bd4-4ff2-9591-380975279fcc', uuid_generate_v4(), 'cc0acdca-de89-4086-ad92-492eeb02cdd2', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment3', now(), null, now(), null, true, 0), 
	('8cd4250d-283f-4d4b-8ca4-3d41a51c0806', uuid_generate_v4(), '516b8aca-ecab-4b60-8e1d-1290a927305e', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment4', now(), null, now(), null, true, 0), 
	('820a8443-33c5-4f5b-894e-f517d20da9ac', uuid_generate_v4(), '516b8aca-ecab-4b60-8e1d-1290a927305e', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment5', now(), null, now(), null, true, 0), 
	('6450ece0-7f03-4102-b01b-329454ed75dc', uuid_generate_v4(), '29ae90c3-cf16-46a3-ae7b-b04117517cf1', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment6', now(), null, now(), null, true, 0), 
	('c3b37c21-94b1-4d48-8646-79e5267cae48', uuid_generate_v4(), '0d84b01a-65fa-4733-8b27-6bfbf597434a', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment7', now(), null, now(), null, true, 0), 
	('36de6029-0f43-491b-aff1-9fedde2fe78d', uuid_generate_v4(), '0d84b01a-65fa-4733-8b27-6bfbf597434a', '2c55391b-2c58-4beb-a97a-f8482991efb8', 'This is comment8', now(), null, now(), null, true, 0);
   
INSERT INTO thread_like(id, thread_like_code, user_id, thread_id, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('7e670323-4709-480a-b7bb-2e03f76ca4f3', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb8', '516b8aca-ecab-4b60-8e1d-1290a927305e', now(), null, now(), null, true, 0),
	('c1369322-f452-43c7-b625-3be6a8defca0', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb9', '516b8aca-ecab-4b60-8e1d-1290a927305e', now(), null, now(), null, true, 0),
	('5f6456df-b7c6-404a-9fdf-fc6c986524e8', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb9', '2dd11b82-75dd-466f-b958-561454cb6061', now(), null, now(), null, true, 0),
	('bb95dd76-a06e-4a98-9083-c6648b9a8a7a', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb9', 'dd3b6fa8-f33c-46f3-9985-c9c1f05bbe14', now(), null, now(), null, true, 0),
	('3544fee8-7a50-4a60-aa36-355375f598a7', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb9', 'cc0acdca-de89-4086-ad92-492eeb02cdd2', now(), null, now(), null, true, 0);
	
INSERT INTO thread_polling_header(id, thread_polling_header_code, title_polling, content_polling, polling_question, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('f4885546-8a14-4ee6-97f0-7556af36ee30', uuid_generate_v4(), 'Title 1', 'This is content polling 1', 'What is this?', now(), null, now(), null, true, 0),
	('6f7d8a30-5b56-40b5-b2fa-48cbf02f5c15', uuid_generate_v4(), 'Title 2', 'This is content polling 2', 'What is this?', now(), null, now(), null, true, 0),
	('a2a50dc6-5e76-4b4b-a932-6856d8656aff', uuid_generate_v4(), 'Title 3', 'This is content polling 3', 'What is this?', now(), null, now(), null, true, 0);
  
INSERT INTO thread_polling_detail(id, thread_polling_detail_code, thread_polling_header_id, polling_choice, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('4eba8148-097c-4709-aeb9-39fb19e2df35', uuid_generate_v4(), 'f4885546-8a14-4ee6-97f0-7556af36ee30', 'A', now(), null, now(), null, true, 0), 
	('6cb977b2-ab07-4385-8461-be2523250254', uuid_generate_v4(), 'f4885546-8a14-4ee6-97f0-7556af36ee30', 'B', now(), null, now(), null, true, 0), 
	('b8650a5b-20bb-4807-983f-a98a4c797eae', uuid_generate_v4(), 'f4885546-8a14-4ee6-97f0-7556af36ee30', 'C', now(), null, now(), null, true, 0), 
	('1e362ab6-561d-41a5-aba9-8cb3287b6998', uuid_generate_v4(), '6f7d8a30-5b56-40b5-b2fa-48cbf02f5c15', 'A', now(), null, now(), null, true, 0), 
	('11d76044-6cb6-44e0-a095-bb9d400bb375', uuid_generate_v4(), '6f7d8a30-5b56-40b5-b2fa-48cbf02f5c15', 'B', now(), null, now(), null, true, 0), 
	('b08d0498-d1b0-442d-841f-74013184db46', uuid_generate_v4(), 'a2a50dc6-5e76-4b4b-a932-6856d8656aff', 'A', now(), null, now(), null, true, 0), 
	('2d27bff8-ec80-4a63-99f4-fd2bed5132c1', uuid_generate_v4(), 'a2a50dc6-5e76-4b4b-a932-6856d8656aff', 'B', now(), null, now(), null, true, 0);

INSERT INTO thread_polling_like(id, thread_polling_like_code, user_id, thread_polling_header_id, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('8d3525fb-686e-4304-a4c9-41b90993e6dc', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb8', 'f4885546-8a14-4ee6-97f0-7556af36ee30', now(), null, now(), null, true, 0),
	('08d7a6c4-fee6-4e80-909a-7ef4fa5de5fe', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb9', 'f4885546-8a14-4ee6-97f0-7556af36ee30', now(), null, now(), null, true, 0),
	('c89f1203-f442-4dbc-80a4-234330c6908d', uuid_generate_v4(), '2c55391b-2c58-4beb-a97a-f8482991efb8', '6f7d8a30-5b56-40b5-b2fa-48cbf02f5c15', now(), null, now(), null, true, 0);


INSERT INTO event_type(id, event_type_code, "type", created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('479d09f9-dc50-4d57-a1db-f115cdfa3cb8', uuid_generate_v4(), 'Event', now(), null, now(), null, true, 0),
	('881383c9-75c1-408a-bde0-0fe3eae98798', uuid_generate_v4(), 'Course', now(), null, now(), null, true, 0);

INSERT INTO event_header (id, event_header_code, event_type_id, file_id, title, user_id, created_at,created_by, updated_at, updated_by, is_active, "version")
VALUES
	('8c694cb8-1114-4888-b93b-cd48b886f161', uuid_generate_v4(), '479d09f9-dc50-4d57-a1db-f115cdfa3cb8', null, 'Test Event 1', '2c55391b-2c58-4beb-a97a-f8482991efb8', now(), null, now(), null, true, 0),
	('e4547b9b-e8f2-40d3-89bc-842f3c736a12', uuid_generate_v4(), '881383c9-75c1-408a-bde0-0fe3eae98798', null, 'Test Event 2', '2c55391b-2c58-4beb-a97a-f8482991efb9', now(), null, now(), null, true, 0);
	
INSERT INTO event_detail (id, event_detail_code, event_header_id, price, start_date, end_date, provider, locations, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES 
	('c0ea2ab9-909c-4dfc-a233-520fdb596f58', uuid_generate_v4(),  '8c694cb8-1114-4888-b93b-cd48b886f161', 5000, now(), now(), 'User', 'Jakarta', now(), null, now(), null, true, 0),
	('4123db67-bbbb-4d33-8702-e0ade3f6b983', uuid_generate_v4(),  'e4547b9b-e8f2-40d3-89bc-842f3c736a12', 15000, now(), now(), 'User', 'Jakarta', now(), null, now(), null, true, 0);

INSERT INTO payment(id, payment_code, file_id, user_id, is_approve, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('f0e53a4a-7ed7-4329-9d97-e62ef5e5d867', uuid_generate_v4(), null, '2c55391b-2c58-4beb-a97a-f8482991efb7', 'true', now(), null, now(), null, true, 0),
	('da0b9fde-7f86-4c2d-857f-a6b4ca27d09b', uuid_generate_v4(), null, '2c55391b-2c58-4beb-a97a-f8482991efb8', 'true', now(), null, now(), null, true, 0),
	('36293791-f1e5-43d8-8661-765e47b313ac', uuid_generate_v4(), null, '2c55391b-2c58-4beb-a97a-f8482991efb9', 'true', now(), null, now(), null, true, 0),
	('6bb2bd2c-fa83-4eb1-a84d-7909555d4edb', uuid_generate_v4(), null, '2c55391b-2c58-4beb-a97a-f8482991efb7', 'false', now(), null, now(), null, true, 0);

INSERT INTO premium_payment_history (id, premium_payment_history_code, payment_id, user_id, premium_type_id, trx_no, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('004a4340-b27e-4882-a9ee-4c01b34ec84f',uuid_generate_v4(), '6bb2bd2c-fa83-4eb1-a84d-7909555d4edb', '2c55391b-2c58-4beb-a97a-f8482991efb7', 'b5678fcd-0d4b-43f1-9119-f01c36998ba8',  '001', now(), null, now(), null, true, 0); 

INSERT INTO event_payment_history (id, event_payment_history_code, payment_id, user_id, event_header_id, trx_no, created_at, created_by, updated_at, updated_by, is_active, "version")
VALUES
	('4b68c369-b3e9-4d93-9e18-3d6338eb39b6',uuid_generate_v4(),'f0e53a4a-7ed7-4329-9d97-e62ef5e5d867', '2c55391b-2c58-4beb-a97a-f8482991efb7', '8c694cb8-1114-4888-b93b-cd48b886f161', 'E-001', now(), null, now(), null, true, 0 ),
	('75155a48-c3a8-450c-a50b-cddd4f1c21ac',uuid_generate_v4(),'da0b9fde-7f86-4c2d-857f-a6b4ca27d09b', '2c55391b-2c58-4beb-a97a-f8482991efb8', '8c694cb8-1114-4888-b93b-cd48b886f161', 'E-002', now(), null, now(), null, true, 0 ),
	('e6988bdf-a0f2-43ab-8e05-ba57d1141586',uuid_generate_v4(),'36293791-f1e5-43d8-8661-765e47b313ac', '2c55391b-2c58-4beb-a97a-f8482991efb9', '8c694cb8-1114-4888-b93b-cd48b886f161', 'E-003', now(), null, now(), null, true, 0 );

-- Testing query here
SELECT COUNT(id) FROM roles;

INSERT INTO verification(id, verification_code, expired, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
(uuid_generate_v4(), '12345', now(), null, now(), null, now(), true, 0);

SELECT u.id, u.email, u.role_id FROM users u INNER JOIN roles r ON u.role_id = r.id WHERE email = 'adnim';

SELECT COUNT(id) FROM users;

 SELECT pf.full_name AS fullName, eph.trx_no AS trxNo, 
 eh.title AS title, et.type AS type,
 ed.price AS price, pm.created_at AS date
 FROM payment pm 
 JOIN users u ON u.id = pm.user_id 
 JOIN profile pf ON pf.id = u.profile_id 
 JOIN event_payment_history eph ON eph.payment_id = pm.id 
 JOIN event_header eh ON eh.id = eph.event_header_id 
 JOIN event_type et ON et.id = eh.event_type_id 
 JOIN event_detail ed ON ed.event_header_id = eh.id 
 WHERE pm.user_id = '2c55391b-2c58-4beb-a97a-f8482991efb7';

SELECT * FROM thread_polling_header;



