create schema raw;

create table raw.requests
(
	id serial not null,
	users_id int,
	requests_date timestamp not null,
	request_uri text
);

INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 1, '2020-03-01 08:11:33.000000', '/login');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 1, '2020-03-01 09:15:42.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 1, '2020-03-02 12:15:58.000000', '/project/delete');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 1, '2020-03-02 14:16:27.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 2, '2020-03-01 16:16:35.000000', '/login');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 2, '2020-03-01 17:16:59.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 2, '2020-03-01 17:17:11.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 2, '2020-03-01 17:17:33.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 2, '2020-03-01 17:17:44.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 3, '2020-03-02 08:17:56.000000', '/login');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 3, '2020-03-02 08:18:04.000000', '/logout');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 4, '2020-03-03 09:18:12.000000', '/');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:27.000000', '/');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:33.000000', '/account/settings');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:37.000000', '/account/settings');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:41.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:44.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:47.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 5, '2020-03-04 08:18:50.000000', '/project/delete');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 6, '2020-03-02 13:18:53.000000', '/project/delete');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 6, '2020-03-02 13:21:13.000000', '/project/delete');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:26.000000', '/login');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:31.000000', '/account/settings');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:38.000000', '/account/settings');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:42.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:46.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:19:54.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:20:07.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:20:03.000000', '/project/update');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 7, '2020-03-03 08:20:13.000000', '/project/new');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 8, '2020-03-01 08:20:18.000000', '/account/notifications');
INSERT INTO raw.requests (id, users_id, requests_date, request_uri) VALUES (default, 8, '2020-03-01 08:20:26.000000', '/account/settings');
