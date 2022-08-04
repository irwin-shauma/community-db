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
    current_balance float,
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
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
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
    
    --New
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
    status varchar(36),
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
    full_name text,
    company text,
    industry text,
    positions text,
    premium_payment_history_id varchar(36),
    file_id varchar(36),
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
    is_active boolean,
    "version" integer
);

CREATE TABLE roles (
    id varchar(36),
    role_code varchar(36),
    role_name text,
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
    is_active boolean,
    "version" integer
);

CREATE TABLE thread_details (
    id varchar(36),
    thread_detail_code varchar(36),
    thread_header_id varchar(36),
    file_id varchar(36),
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
    title text,
    
    user_id varchar(36),

    thread_type_id varchar(36),
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

-- New
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
)

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
    type_code varchar(36),
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
    user_code varchar(36),
    email text,
    passwords text,
    role_id varchar(36),
    verification_id varchar(36),

    profile_id varchar(36),
    token_id varchar(36),
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
    is_active boolean,
    "version" integer
);

CREATE TABLE verification (
    id varchar(36),
    verification_code text,
    expired timestamp,
    created_by varchar(36),
    created_at timestamp,
    updated_by varchar(36),
    updated_at timestamp,
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
)



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

-- New
ALTER TABLE thread_polling_like
    ADD CONSTRAINT thread_polling_like_bk UNIQUE (thread_polling_like_code);

-- New
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
    ADD CONSTRAINT thread_type_bk UNIQUE (type_code);

ALTER TABLE thread_types
    ADD CONSTRAINT thread_type_pk PRIMARY KEY (id);

ALTER TABLE users
    ADD CONSTRAINT user_code_bk UNIQUE (user_code);

ALTER TABLE users
    ADD CONSTRAINT user_pk PRIMARY KEY (id);
   
ALTER TABLE tokens
    ADD CONSTRAINT token_pk PRIMARY KEY (id);

ALTER TABLE verification
    ADD CONSTRAINT verification_code_bk UNIQUE (verification_code);

ALTER TABLE verification
    ADD CONSTRAINT verification_pk PRIMARY KEY (id);
   
-- FK
	
ALTER TABLE balance
    ADD CONSTRAINT balance_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE event_header
    ADD CONSTRAINT event_type_fk FOREIGN KEY (event_type_id) REFERENCES event_type(id);

ALTER TABLE event_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

--New
ALTER TABLE event_header
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE article_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE thread_details
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE event_detail
    ADD CONSTRAINT event_header_fk FOREIGN KEY (event_header_id) REFERENCES event_header(id);
   
ALTER TABLE event_payment_history
	ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE event_payment_history
	ADD CONSTRAINT event_header_fk FOREIGN KEY(event_header_id) REFERENCES event_header(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE premium_payment_history
	ADD CONSTRAINT premium_type_fk FOREIGN KEY(premium_type_id) REFERENCES premium_type(id);
   


ALTER TABLE payment
    ADD CONSTRAINT payment_fk FOREIGN KEY (file_id) REFERENCES file(id);

ALTER TABLE users
    ADD CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES roles(id);

ALTER TABLE thread_details
    ADD CONSTRAINT thread_details_fk FOREIGN KEY (thread_header_id) REFERENCES thread_headers(id);

ALTER TABLE bookmark
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES thread_headers(id);

ALTER TABLE thread_like
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES thread_headers(id);

ALTER TABLE thread_polling_detail
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES thread_polling_header(id);

ALTER TABLE thread_like
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE thread_polling_answer ADD CONSTRAINT thread_polling_answer_fk FOREIGN KEY (thread_detail_polling_id) REFERENCES thread_polling_detail(id);


-- New
ALTER TABLE thread_polling_like
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES thread_polling_header(id);

-- New
ALTER TABLE thread_polling_like
    ADD CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES users(id);

ALTER TABLE thread_headers
    ADD CONSTRAINT thread_type_fk FOREIGN KEY (thread_type_id) REFERENCES thread_types(id);

ALTER TABLE thread_headers
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);


ALTER TABLE bookmark
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);


ALTER TABLE thread_polling_answer
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);


ALTER TABLE thread_details
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE payment
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE users
    ADD CONSTRAINT verification_fk FOREIGN KEY (verification_id) REFERENCES verification(id);

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
    ('35a2b727-6c8a-4448-a14a-3d15c5c1beef', 'ROLE2', 'Role 2', null, now(), null, now(), true, 0),
    ('10b9b0bb-c6aa-444b-9ea1-5362b9c14bca', 'ROLE3', 'Role 3', null, now(), null, now(), true, 0),
    ('db30715b-1a03-43dc-a274-616c55422f0b', 'ROLE4', 'Role 4', null, now(), null, now(), true, 0),
    ('5ba4cb43-c61d-4b3b-9b8d-48d7c49a028f', 'ROLE5', 'Role 5', null, now(), null, now(), true, 0);
   
INSERT INTO profile (id, profile_code, full_name, company, industry, positions, premium_payment_history_id, file_id, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
	('3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a', uuid_generate_v4(), 'Admin', 'Lawencon', 'IT', 'Manager', null, null, null, now(), null, now(), true, 0);
   
INSERT INTO users (id, user_code, email, passwords, role_id, verification_id, profile_id, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
    (uuid_generate_v4(), uuid_generate_v4(), 'admin', '$2a$10$pN0DCKfxFrcTgdbiPc62SOtycNH1Hd7qRmLMACR7j9JANR8AR8OKy', 'dbbda007-34bd-4c68-bfca-4bc97881fef2', null, '3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a'  ,null, now(), null, now(), true, 0),
    (uuid_generate_v4(), uuid_generate_v4(), 'user1', 'user1', '35a2b727-6c8a-4448-a14a-3d15c5c1beef', null, null, null, now(), null, now(), true, 0),
    (uuid_generate_v4(), uuid_generate_v4(), 'user2', 'user2', '10b9b0bb-c6aa-444b-9ea1-5362b9c14bca', null, null, null, now(), null, now(), true, 0),
    (uuid_generate_v4(), uuid_generate_v4(), 'user3', 'user3', 'db30715b-1a03-43dc-a274-616c55422f0b', null, null, null, now(), null, now(), true, 0),
    (uuid_generate_v4(), uuid_generate_v4(), 'user4', 'user4', '5ba4cb43-c61d-4b3b-9b8d-48d7c49a028f', null, null, null, now(), null, now(), true, 0);
   
   

	
INSERT INTO 
   
-- Testing query here
SELECT COUNT(id) FROM roles;

INSERT INTO verification(id, verification_code, expired, created_by, created_at, updated_by, updated_at, is_active, "version")
VALUES
(uuid_generate_v4(), '12345', now(), null, now(), null, now(), true, 0);

SELECT u.id, u.email, u.role_id FROM users u INNER JOIN roles r ON u.role_id = r.id WHERE email = 'adnim';




