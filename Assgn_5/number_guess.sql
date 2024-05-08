--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE game;
--
-- Name: game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE game OWNER TO freecodecamp;

\connect game

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer,
    secret_number integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(23) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 624, 1);
INSERT INTO public.games VALUES (2, 933, 932, 44);
INSERT INTO public.games VALUES (3, 887, 886, 45);
INSERT INTO public.games VALUES (4, 304, 301, 44);
INSERT INTO public.games VALUES (5, 103, 102, 44);
INSERT INTO public.games VALUES (6, 466, 465, 44);
INSERT INTO public.games VALUES (7, 495, 494, 47);
INSERT INTO public.games VALUES (8, 190, 189, 48);
INSERT INTO public.games VALUES (9, 51, 48, 47);
INSERT INTO public.games VALUES (10, 363, 362, 47);
INSERT INTO public.games VALUES (11, 153, 152, 47);
INSERT INTO public.games VALUES (12, 1001, 1000, 49);
INSERT INTO public.games VALUES (13, 915, 914, 50);
INSERT INTO public.games VALUES (14, 182, 179, 49);
INSERT INTO public.games VALUES (15, 584, 583, 49);
INSERT INTO public.games VALUES (16, 365, 364, 49);
INSERT INTO public.games VALUES (17, 180, 179, 51);
INSERT INTO public.games VALUES (18, 416, 415, 52);
INSERT INTO public.games VALUES (19, 24, 21, 51);
INSERT INTO public.games VALUES (20, 963, 962, 51);
INSERT INTO public.games VALUES (21, 911, 910, 51);
INSERT INTO public.games VALUES (22, 447, 446, 53);
INSERT INTO public.games VALUES (23, 293, 292, 53);
INSERT INTO public.games VALUES (24, 121, 120, 54);
INSERT INTO public.games VALUES (25, 204, 203, 54);
INSERT INTO public.games VALUES (26, 607, 604, 53);
INSERT INTO public.games VALUES (27, 494, 492, 53);
INSERT INTO public.games VALUES (28, 1000, 999, 53);
INSERT INTO public.games VALUES (29, 662, 661, 55);
INSERT INTO public.games VALUES (30, 387, 386, 55);
INSERT INTO public.games VALUES (31, 695, 694, 56);
INSERT INTO public.games VALUES (32, 50, 49, 56);
INSERT INTO public.games VALUES (33, 83, 80, 55);
INSERT INTO public.games VALUES (34, 804, 802, 55);
INSERT INTO public.games VALUES (35, 448, 447, 55);
INSERT INTO public.games VALUES (36, 117, 116, 57);
INSERT INTO public.games VALUES (37, 422, 421, 57);
INSERT INTO public.games VALUES (38, 308, 307, 58);
INSERT INTO public.games VALUES (39, 642, 641, 58);
INSERT INTO public.games VALUES (40, 462, 459, 57);
INSERT INTO public.games VALUES (41, 510, 508, 57);
INSERT INTO public.games VALUES (42, 856, 855, 57);
INSERT INTO public.games VALUES (43, 376, 375, 59);
INSERT INTO public.games VALUES (44, 284, 283, 59);
INSERT INTO public.games VALUES (45, 679, 678, 60);
INSERT INTO public.games VALUES (46, 333, 332, 60);
INSERT INTO public.games VALUES (47, 495, 492, 59);
INSERT INTO public.games VALUES (48, 940, 938, 59);
INSERT INTO public.games VALUES (49, 723, 722, 59);
INSERT INTO public.games VALUES (50, 151, 150, 61);
INSERT INTO public.games VALUES (51, 1001, 1000, 61);
INSERT INTO public.games VALUES (52, 909, 908, 62);
INSERT INTO public.games VALUES (53, 28, 27, 62);
INSERT INTO public.games VALUES (54, 380, 377, 61);
INSERT INTO public.games VALUES (55, 227, 225, 61);
INSERT INTO public.games VALUES (56, 728, 727, 61);
INSERT INTO public.games VALUES (57, 952, 951, 63);
INSERT INTO public.games VALUES (58, 111, 110, 63);
INSERT INTO public.games VALUES (59, 874, 873, 64);
INSERT INTO public.games VALUES (60, 287, 286, 64);
INSERT INTO public.games VALUES (61, 292, 289, 63);
INSERT INTO public.games VALUES (62, 909, 907, 63);
INSERT INTO public.games VALUES (63, 998, 997, 63);
INSERT INTO public.games VALUES (64, 965, 964, 65);
INSERT INTO public.games VALUES (65, 866, 865, 66);
INSERT INTO public.games VALUES (66, 550, 547, 65);
INSERT INTO public.games VALUES (67, 760, 758, 65);
INSERT INTO public.games VALUES (68, 774, 773, 65);
INSERT INTO public.games VALUES (69, 600, 599, 67);
INSERT INTO public.games VALUES (70, 595, 594, 68);
INSERT INTO public.games VALUES (71, 419, 416, 67);
INSERT INTO public.games VALUES (72, 793, 791, 67);
INSERT INTO public.games VALUES (73, 458, 457, 67);
INSERT INTO public.games VALUES (74, 893, 892, 69);
INSERT INTO public.games VALUES (75, 524, 523, 70);
INSERT INTO public.games VALUES (76, 289, 286, 69);
INSERT INTO public.games VALUES (77, 117, 115, 69);
INSERT INTO public.games VALUES (78, 992, 991, 69);
INSERT INTO public.games VALUES (79, 765, 764, 72);
INSERT INTO public.games VALUES (80, 455, 452, 71);
INSERT INTO public.games VALUES (81, 1, 1, 71);
INSERT INTO public.games VALUES (82, 747, 746, 73);
INSERT INTO public.games VALUES (83, 580, 579, 74);
INSERT INTO public.games VALUES (84, 256, 253, 73);
INSERT INTO public.games VALUES (85, 712, 711, 73);
INSERT INTO public.games VALUES (86, 503, 502, 73);
INSERT INTO public.games VALUES (87, 10, 178, 1);
INSERT INTO public.games VALUES (88, 425, 424, 75);
INSERT INTO public.games VALUES (89, 876, 875, 76);
INSERT INTO public.games VALUES (90, 542, 539, 75);
INSERT INTO public.games VALUES (91, 632, 631, 75);
INSERT INTO public.games VALUES (92, 67, 66, 75);
INSERT INTO public.games VALUES (93, 194, 193, 77);
INSERT INTO public.games VALUES (94, 989, 988, 77);
INSERT INTO public.games VALUES (95, 422, 421, 78);
INSERT INTO public.games VALUES (96, 404, 403, 78);
INSERT INTO public.games VALUES (97, 448, 445, 77);
INSERT INTO public.games VALUES (98, 409, 407, 77);
INSERT INTO public.games VALUES (99, 765, 764, 77);
INSERT INTO public.games VALUES (100, 613, 613, 83);
INSERT INTO public.games VALUES (101, 956, 956, 83);
INSERT INTO public.games VALUES (102, 946, 946, 84);
INSERT INTO public.games VALUES (103, 881, 881, 84);
INSERT INTO public.games VALUES (104, 587, 585, 83);
INSERT INTO public.games VALUES (105, 148, 147, 83);
INSERT INTO public.games VALUES (106, 891, 891, 83);
INSERT INTO public.games VALUES (107, 589, 588, 85);
INSERT INTO public.games VALUES (108, 986, 985, 86);
INSERT INTO public.games VALUES (109, 547, 546, 86);
INSERT INTO public.games VALUES (110, 946, 943, 85);
INSERT INTO public.games VALUES (111, 144, 142, 85);
INSERT INTO public.games VALUES (112, 86, 85, 85);
INSERT INTO public.games VALUES (113, 523, 522, 87);
INSERT INTO public.games VALUES (114, 148, 147, 87);
INSERT INTO public.games VALUES (115, 140, 139, 88);
INSERT INTO public.games VALUES (116, 180, 179, 88);
INSERT INTO public.games VALUES (117, 112, 109, 87);
INSERT INTO public.games VALUES (118, 242, 240, 87);
INSERT INTO public.games VALUES (119, 57, 56, 87);
INSERT INTO public.games VALUES (120, 206, 205, 89);
INSERT INTO public.games VALUES (121, 753, 752, 89);
INSERT INTO public.games VALUES (122, 245, 244, 90);
INSERT INTO public.games VALUES (123, 263, 262, 90);
INSERT INTO public.games VALUES (124, 176, 173, 89);
INSERT INTO public.games VALUES (125, 72, 70, 89);
INSERT INTO public.games VALUES (126, 49, 48, 89);
INSERT INTO public.games VALUES (127, 788, 787, 91);
INSERT INTO public.games VALUES (128, 151, 150, 91);
INSERT INTO public.games VALUES (129, 324, 323, 92);
INSERT INTO public.games VALUES (130, 852, 851, 92);
INSERT INTO public.games VALUES (131, 265, 262, 91);
INSERT INTO public.games VALUES (132, 156, 154, 91);
INSERT INTO public.games VALUES (133, 148, 147, 91);
INSERT INTO public.games VALUES (134, 434, 433, 93);
INSERT INTO public.games VALUES (135, 166, 165, 93);
INSERT INTO public.games VALUES (136, 704, 703, 94);
INSERT INTO public.games VALUES (137, 653, 652, 94);
INSERT INTO public.games VALUES (138, 18, 15, 93);
INSERT INTO public.games VALUES (139, 457, 455, 93);
INSERT INTO public.games VALUES (140, 938, 937, 93);
INSERT INTO public.games VALUES (141, 104, 103, 95);
INSERT INTO public.games VALUES (142, 358, 357, 95);
INSERT INTO public.games VALUES (143, 253, 252, 96);
INSERT INTO public.games VALUES (144, 306, 305, 96);
INSERT INTO public.games VALUES (145, 68, 65, 95);
INSERT INTO public.games VALUES (146, 302, 300, 95);
INSERT INTO public.games VALUES (147, 826, 825, 95);
INSERT INTO public.games VALUES (148, 844, 843, 97);
INSERT INTO public.games VALUES (149, 65, 64, 97);
INSERT INTO public.games VALUES (150, 965, 964, 98);
INSERT INTO public.games VALUES (151, 105, 104, 98);
INSERT INTO public.games VALUES (152, 382, 379, 97);
INSERT INTO public.games VALUES (153, 307, 305, 97);
INSERT INTO public.games VALUES (154, 344, 343, 97);
INSERT INTO public.games VALUES (155, 936, 935, 99);
INSERT INTO public.games VALUES (156, 208, 207, 99);
INSERT INTO public.games VALUES (157, 724, 723, 100);
INSERT INTO public.games VALUES (158, 196, 195, 99);
INSERT INTO public.games VALUES (159, 872, 871, 101);
INSERT INTO public.games VALUES (160, 837, 836, 101);
INSERT INTO public.games VALUES (161, 9, 8, 102);
INSERT INTO public.games VALUES (162, 974, 973, 102);
INSERT INTO public.games VALUES (163, 962, 959, 101);
INSERT INTO public.games VALUES (164, 216, 214, 101);
INSERT INTO public.games VALUES (165, 425, 424, 101);
INSERT INTO public.games VALUES (166, 605, 604, 103);
INSERT INTO public.games VALUES (167, 726, 725, 103);
INSERT INTO public.games VALUES (168, 486, 485, 104);
INSERT INTO public.games VALUES (169, 202, 201, 104);
INSERT INTO public.games VALUES (170, 863, 860, 103);
INSERT INTO public.games VALUES (171, 188, 186, 103);
INSERT INTO public.games VALUES (172, 340, 339, 103);
INSERT INTO public.games VALUES (173, 472, 471, 105);
INSERT INTO public.games VALUES (174, 434, 433, 106);
INSERT INTO public.games VALUES (175, 464, 461, 105);
INSERT INTO public.games VALUES (176, 605, 603, 105);
INSERT INTO public.games VALUES (177, 198, 197, 105);
INSERT INTO public.games VALUES (178, 877, 876, 107);
INSERT INTO public.games VALUES (179, 82, 81, 107);
INSERT INTO public.games VALUES (180, 429, 428, 108);
INSERT INTO public.games VALUES (181, 12, 11, 108);
INSERT INTO public.games VALUES (182, 511, 508, 107);
INSERT INTO public.games VALUES (183, 726, 724, 107);
INSERT INTO public.games VALUES (184, 802, 801, 107);
INSERT INTO public.games VALUES (185, 730, 729, 109);
INSERT INTO public.games VALUES (186, 581, 580, 109);
INSERT INTO public.games VALUES (187, 28, 27, 110);
INSERT INTO public.games VALUES (188, 512, 511, 110);
INSERT INTO public.games VALUES (189, 24, 21, 109);
INSERT INTO public.games VALUES (190, 76, 74, 109);
INSERT INTO public.games VALUES (191, 186, 185, 109);
INSERT INTO public.games VALUES (192, 386, 384, 111);
INSERT INTO public.games VALUES (193, 318, 317, 111);
INSERT INTO public.games VALUES (194, 668, 667, 112);
INSERT INTO public.games VALUES (195, 595, 594, 112);
INSERT INTO public.games VALUES (196, 459, 456, 111);
INSERT INTO public.games VALUES (197, 73, 71, 111);
INSERT INTO public.games VALUES (198, 242, 241, 111);
INSERT INTO public.games VALUES (199, 654, 653, 113);
INSERT INTO public.games VALUES (200, 351, 350, 113);
INSERT INTO public.games VALUES (201, 821, 820, 114);
INSERT INTO public.games VALUES (202, 481, 480, 114);
INSERT INTO public.games VALUES (203, 270, 267, 113);
INSERT INTO public.games VALUES (204, 505, 503, 113);
INSERT INTO public.games VALUES (205, 236, 235, 113);
INSERT INTO public.games VALUES (206, 745, 744, 115);
INSERT INTO public.games VALUES (207, 980, 979, 115);
INSERT INTO public.games VALUES (208, 705, 704, 116);
INSERT INTO public.games VALUES (209, 84, 83, 116);
INSERT INTO public.games VALUES (210, 65, 62, 115);
INSERT INTO public.games VALUES (211, 583, 581, 115);
INSERT INTO public.games VALUES (212, 462, 461, 115);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Adrian');
INSERT INTO public.users VALUES (13, 'user_1715172665581');
INSERT INTO public.users VALUES (12, 'user_1715172665582');
INSERT INTO public.users VALUES (15, 'user_1715172786233');
INSERT INTO public.users VALUES (14, 'user_1715172786234');
INSERT INTO public.users VALUES (17, 'user_1715173035131');
INSERT INTO public.users VALUES (16, 'user_1715173035132');
INSERT INTO public.users VALUES (18, 'Barry');
INSERT INTO public.users VALUES (19, 'Garry');
INSERT INTO public.users VALUES (21, 'user_1715173303295');
INSERT INTO public.users VALUES (20, 'user_1715173303296');
INSERT INTO public.users VALUES (23, 'user_1715173487716');
INSERT INTO public.users VALUES (22, 'user_1715173487717');
INSERT INTO public.users VALUES (25, 'user_1715173574813');
INSERT INTO public.users VALUES (24, 'user_1715173574814');
INSERT INTO public.users VALUES (27, 'user_1715173609539');
INSERT INTO public.users VALUES (26, 'user_1715173609540');
INSERT INTO public.users VALUES (29, 'user_1715173669347');
INSERT INTO public.users VALUES (28, 'user_1715173669348');
INSERT INTO public.users VALUES (31, 'user_1715173712685');
INSERT INTO public.users VALUES (30, 'user_1715173712686');
INSERT INTO public.users VALUES (33, 'user_1715173717844');
INSERT INTO public.users VALUES (32, 'user_1715173717845');
INSERT INTO public.users VALUES (37, 'user_1715173984113');
INSERT INTO public.users VALUES (35, 'user_1715173751246');
INSERT INTO public.users VALUES (34, 'user_1715173751247');
INSERT INTO public.users VALUES (36, 'user_1715173984114');
INSERT INTO public.users VALUES (39, 'user_1715173989114');
INSERT INTO public.users VALUES (38, 'user_1715173989115');
INSERT INTO public.users VALUES (41, 'user_1715173994516');
INSERT INTO public.users VALUES (40, 'user_1715173994517');
INSERT INTO public.users VALUES (43, 'user_1715174012286');
INSERT INTO public.users VALUES (42, 'user_1715174012287');
INSERT INTO public.users VALUES (44, 'user_1715175008319');
INSERT INTO public.users VALUES (45, 'user_1715175008318');
INSERT INTO public.users VALUES (46, 'Garr');
INSERT INTO public.users VALUES (47, 'user_1715175141173');
INSERT INTO public.users VALUES (48, 'user_1715175141172');
INSERT INTO public.users VALUES (49, 'user_1715175190208');
INSERT INTO public.users VALUES (50, 'user_1715175190207');
INSERT INTO public.users VALUES (51, 'user_1715175273473');
INSERT INTO public.users VALUES (52, 'user_1715175273472');
INSERT INTO public.users VALUES (53, 'user_1715175471763');
INSERT INTO public.users VALUES (54, 'user_1715175471762');
INSERT INTO public.users VALUES (55, 'user_1715175498086');
INSERT INTO public.users VALUES (56, 'user_1715175498085');
INSERT INTO public.users VALUES (57, 'user_1715175542865');
INSERT INTO public.users VALUES (58, 'user_1715175542864');
INSERT INTO public.users VALUES (59, 'user_1715175608642');
INSERT INTO public.users VALUES (60, 'user_1715175608641');
INSERT INTO public.users VALUES (61, 'user_1715175629850');
INSERT INTO public.users VALUES (62, 'user_1715175629849');
INSERT INTO public.users VALUES (63, 'user_1715175635180');
INSERT INTO public.users VALUES (64, 'user_1715175635179');
INSERT INTO public.users VALUES (65, 'user_1715175899614');
INSERT INTO public.users VALUES (66, 'user_1715175899613');
INSERT INTO public.users VALUES (67, 'user_1715175984596');
INSERT INTO public.users VALUES (68, 'user_1715175984595');
INSERT INTO public.users VALUES (69, 'user_1715175989058');
INSERT INTO public.users VALUES (70, 'user_1715175989057');
INSERT INTO public.users VALUES (71, 'user_1715176107603');
INSERT INTO public.users VALUES (72, 'user_1715176107602');
INSERT INTO public.users VALUES (73, 'user_1715176148681');
INSERT INTO public.users VALUES (74, 'user_1715176148680');
INSERT INTO public.users VALUES (75, 'user_1715176206815');
INSERT INTO public.users VALUES (76, 'user_1715176206814');
INSERT INTO public.users VALUES (77, 'user_1715176231857');
INSERT INTO public.users VALUES (78, 'user_1715176231856');
INSERT INTO public.users VALUES (79, 'user_1715176274265');
INSERT INTO public.users VALUES (80, 'user_1715176274264');
INSERT INTO public.users VALUES (81, 'user_1715176278844');
INSERT INTO public.users VALUES (82, 'user_1715176278843');
INSERT INTO public.users VALUES (83, 'user_1715176288421');
INSERT INTO public.users VALUES (84, 'user_1715176288420');
INSERT INTO public.users VALUES (85, 'user_1715176295569');
INSERT INTO public.users VALUES (86, 'user_1715176295568');
INSERT INTO public.users VALUES (87, 'user_1715176327173');
INSERT INTO public.users VALUES (88, 'user_1715176327172');
INSERT INTO public.users VALUES (89, 'user_1715176367554');
INSERT INTO public.users VALUES (90, 'user_1715176367553');
INSERT INTO public.users VALUES (91, 'user_1715176411521');
INSERT INTO public.users VALUES (92, 'user_1715176411520');
INSERT INTO public.users VALUES (93, 'user_1715176420429');
INSERT INTO public.users VALUES (94, 'user_1715176420428');
INSERT INTO public.users VALUES (95, 'user_1715176458851');
INSERT INTO public.users VALUES (96, 'user_1715176458850');
INSERT INTO public.users VALUES (97, 'user_1715176474718');
INSERT INTO public.users VALUES (98, 'user_1715176474717');
INSERT INTO public.users VALUES (99, 'user_1715176511400');
INSERT INTO public.users VALUES (100, 'user_1715176511399');
INSERT INTO public.users VALUES (101, 'user_1715176536001');
INSERT INTO public.users VALUES (102, 'user_1715176536000');
INSERT INTO public.users VALUES (103, 'user_1715176544863');
INSERT INTO public.users VALUES (104, 'user_1715176544862');
INSERT INTO public.users VALUES (105, 'user_1715176580018');
INSERT INTO public.users VALUES (106, 'user_1715176580017');
INSERT INTO public.users VALUES (107, 'user_1715176591265');
INSERT INTO public.users VALUES (108, 'user_1715176591264');
INSERT INTO public.users VALUES (109, 'user_1715176632631');
INSERT INTO public.users VALUES (110, 'user_1715176632630');
INSERT INTO public.users VALUES (111, 'user_1715176684744');
INSERT INTO public.users VALUES (112, 'user_1715176684743');
INSERT INTO public.users VALUES (113, 'user_1715176691081');
INSERT INTO public.users VALUES (114, 'user_1715176691080');
INSERT INTO public.users VALUES (115, 'user_1715176735391');
INSERT INTO public.users VALUES (116, 'user_1715176735390');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 212, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 116, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

