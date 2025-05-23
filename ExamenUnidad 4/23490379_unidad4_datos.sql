--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campus (id_campus, nombrecampus, direccioncampus) FROM stdin;
1	Campus Central	Av. Universidad 1000, Lima
2	Campus Norte	Jr. Libertad 321, Trujillo
3	Campus Sur	Av. Independencia 456, Arequipa
4	Campus Este	Calle Sol 789, Cusco
5	Campus Oeste	Av. América 234, Piura
6	Campus San Miguel	Jr. Grau 111, Lima
7	Campus Los Olivos	Av. Túpac Amaru 567, Lima
8	Campus Santa Anita	Av. Metropolitana 654, Lima
9	Campus Callao	Calle Comercio 789, Callao
10	Campus Villa El Salvador	Av. 200 Millas 101, Lima
\.


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carreras (id_carrera, nombrecarrera, titulootorgado) FROM stdin;
1	Ingeniería de Sistemas	Ingeniero de Sistemas
2	Matemáticas Aplicadas	Licenciado en Matemáticas
3	Física	Licenciado en Física
4	Biología Molecular	Licenciado en Biología
5	Química Industrial	Ingeniero Químico
6	Literatura Hispanoamericana	Licenciado en Literatura
7	Filosofía y Ética	Licenciado en Filosofía
8	Economía y Finanzas	Economista
9	Psicología Clínica	Psicólogo
10	Historia del Perú	Licenciado en Historia
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (id_departamento, nombredepartamento, edificio) FROM stdin;
1	Ingeniería Informática	Edificio A
2	Matemáticas	Edificio B
3	Física	Edificio C
4	Biología	Edificio D
5	Química	Edificio E
6	Literatura	Edificio F
7	Filosofía	Edificio G
8	Economía	Edificio H
9	Psicología	Edificio I
10	Historia	Edificio J
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursos (id_curso, nombrecurso, descripcion, creditos, semestre, id_departamento, id_campus) FROM stdin;
1	Programación I	Introducción a la programación	4	1	1	1
2	Álgebra Lineal	Matrices y vectores	3	1	2	2
3	Física I	Cinemática y dinámica	4	1	3	3
4	Biología General	Estructura celular y genética	3	1	4	4
5	Química Orgánica	Estudio de compuestos orgánicos	3	2	5	5
6	Literatura Española	Autores clásicos	2	2	6	6
7	Lógica	Fundamentos del pensamiento crítico	2	2	7	7
8	Macroeconomía	Economía a nivel nacional	3	2	8	8
9	Psicología del Desarrollo	Etapas del desarrollo humano	3	2	9	9
10	Historia Universal	De la antigüedad a la modernidad	3	2	10	10
\.


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (id_profesor, nombre, apellido, titulo, id_departamento, email) FROM stdin;
1	Ricardo	Fernández	PhD en Informática	1	Ricardo@email.com
2	Marta	Jiménez	MSc en Matemáticas	2	Marta@email.com
3	Javier	Ruiz	PhD en Física	3	Javier@email.com
4	Elena	Navarro	MSc en Biología	4	Elena@email.com
5	Alfredo	Castañeda	PhD en Química	5	Alfredo@email.com
6	Carmen	Villanueva	Lic. en Letras	6	Carmen@email.com
7	Sofía	Herrera	PhD en Filosofía	7	Sofia@email.com
8	Daniel	Salas	MSc en Economía	8	Daniel@email.com
9	Paula	Delgado	PhD en Psicología	9	Paula@email.com
10	Oscar	Ortiz	PhD en Historia	10	Oscar@email.com
\.


--
-- Data for Name: cursosprofesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursosprofesores (id_cursoprofesor, id_curso, id_profesor) FROM stdin;
11	1	1
12	2	2
13	3	3
14	4	4
15	5	5
16	6	6
17	7	7
18	8	8
19	9	9
20	10	10
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (id_estudiante, nombre, apellido, fechanacimiento, direccion, email, id_carrera) FROM stdin;
1	Juan	Pérez	2000-04-10	Calle Falsa 123	juanp@email.com	\N
2	María	García	1999-09-15	Av. Central 456	mariag@email.com	\N
3	Luis	Torres	2001-12-01	Jr. Lima 789	luist@email.com	\N
4	Ana	Ramírez	2002-01-20	Calle Sur 321	anar@email.com	\N
5	Pedro	Sánchez	2000-06-11	Av. Norte 654	pedros@email.com	\N
6	Lucía	Flores	1998-03-22	Pasaje Uno 111	luciaf@email.com	\N
7	Carlos	Lopez	2003-05-30	Jr. Este 222	carlosl@email.com	\N
8	Diana	Reyes	2000-07-25	Av. Oeste 333	dianar@email.com	\N
9	Jorge	Castro	1999-11-19	Calle Real 999	jorgec@email.com	\N
10	Andrea	Mendoza	2001-08-14	Av. Central 007	andream@email.com	\N
\.


--
-- Data for Name: estudiantes_carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes_carreras (id_estudiante_carreras, id_estudiante, id_carrera, fechainscripcion) FROM stdin;
11	1	1	2024-03-15
12	2	2	2024-03-16
13	3	3	2024-03-17
14	4	4	2024-03-18
15	5	5	2024-03-19
16	6	6	2024-03-20
17	7	7	2024-03-21
18	8	8	2024-03-22
19	9	9	2024-03-23
20	10	10	2024-03-24
\.


--
-- Data for Name: horarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horarios (id_horario, id_curso, id_aula, fechainicio, fechafin, horainicio, horafin) FROM stdin;
1	1	1	2025-03-01	2025-06-30	08:00:00	10:00:00
2	2	2	2025-03-01	2025-06-30	10:00:00	12:00:00
3	3	3	2025-03-01	2025-06-30	12:00:00	14:00:00
4	4	4	2025-03-01	2025-06-30	08:00:00	10:00:00
5	5	5	2025-03-01	2025-06-30	10:00:00	12:00:00
6	6	6	2025-03-01	2025-06-30	12:00:00	14:00:00
7	7	7	2025-03-01	2025-06-30	14:00:00	16:00:00
8	8	8	2025-03-01	2025-06-30	08:00:00	10:00:00
9	9	9	2025-03-01	2025-06-30	10:00:00	12:00:00
10	10	10	2025-03-01	2025-06-30	12:00:00	14:00:00
\.


--
-- Data for Name: inscripciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscripciones (id_inscripcion, id_estudiante, id_curso, fechainscripcion, calificacion) FROM stdin;
1	1	1	2025-01-15	15.5
2	2	2	2025-01-16	17.2
3	3	3	2025-01-17	14.0
4	4	4	2025-01-18	18.0
5	5	5	2025-01-19	16.8
6	6	6	2025-01-20	19.0
7	7	7	2025-01-21	13.5
8	8	8	2025-01-22	17.5
9	9	9	2025-01-23	18.3
10	10	10	2025-01-24	14.9
\.


--
-- Data for Name: programasestudio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programasestudio (id_programaestudio, nombreprograma, descripcionprograma) FROM stdin;
1	Ingeniería Informática	Programa de formación en informática y programación
2	Matemáticas Aplicadas	Enfoque en cálculo y análisis de datos
3	Ciencias Físicas	Carrera en investigación y física aplicada
4	Biociencias	Estudios en biología celular y genética
5	Química Pura	Investigación y laboratorios químicos
6	Letras y Humanidades	Estudio literario y crítico de textos
7	Filosofía Clásica	Análisis filosófico desde la antigüedad
8	Economía Global	Entorno económico internacional y finanzas
9	Psicología Clínica	Psicología del comportamiento humano
10	Historia Contemporánea	Estudios históricos modernos y contemporáneos
\.


--
-- Data for Name: programascursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programascursos (id_programacurso, id_programaestudio, id_curso) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	6	6
7	7	7
8	8	8
9	9	9
10	10	10
\.


--
-- Name: campus_id_campus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campus_id_campus_seq', 10, true);


--
-- Name: carreras_id_carrera_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carreras_id_carrera_seq', 10, true);


--
-- Name: cursos_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_id_curso_seq', 10, true);


--
-- Name: cursosprofesores_id_cursoprofesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursosprofesores_id_cursoprofesor_seq', 20, true);


--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_id_departamento_seq', 10, true);


--
-- Name: estudiantes_carreras_id_estudiante_carreras_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_carreras_id_estudiante_carreras_seq', 20, true);


--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 10, true);


--
-- Name: horarios_id_horario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horarios_id_horario_seq', 10, true);


--
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscripciones_id_inscripcion_seq', 10, true);


--
-- Name: profesores_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesores_id_profesor_seq', 10, true);


--
-- Name: programascursos_id_programacurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programascursos_id_programacurso_seq', 10, true);


--
-- Name: programasestudio_id_programaestudio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programasestudio_id_programaestudio_seq', 10, true);


--
-- PostgreSQL database dump complete
--

