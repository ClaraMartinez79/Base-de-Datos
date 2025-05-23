CREATE TABLE Departamentos (
id_departamento SERIAL PRIMARY KEY,
NombreDepartamento VARCHAR(100) NOT NULL,
Edificio VARCHAR(100)
);

CREATE TABLE Estudiantes (
id_estudiante SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
FechaNacimiento DATE,
direccion VARCHAR(80) NOT NULL,
ciudad VARCHAR(50) NOT NULL,
email VARCHAR(25)UNIQUE NOT NULL
);

CREATE TABLE Profesores (
id_profesor SERIAL PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Titulo VARCHAR(100),
id_departamento INT REFERENCES Departamentos(id_departamento)
);

CREATE TABLE Cursos (
id_curso SERIAL PRIMARY KEY,
NombreCurso VARCHAR(50),
descripcion TEXT, 
creditos INT, 
semestre INT, 
id_departamento INT REFERENCES Departamentos (id_departamento)
);

CREATE TABLE Inscripciones (
id_inscripcion SERIAL PRIMARY KEY,
id_estudiante INT REFERENCES Estudiantes(id_estudiante),
id_curso INT REFERENCES Cursos(id_curso),
FechaInscripcion DATE NOT NULL,
Calificacion DECIMAL
);

CREATE TABLE Aulas (
id_aula SERIAL PRIMARY KEY,
NombreAula VARCHAR(50) NOT NULL,
Capacidad INT, 
Ubicacion VARCHAR(80)
);

CREATE TABLE Horarios (
id_horario SERIAL PRIMARY KEY, 
id_curso INT REFERENCES Cursos(id_curso),
id_aula INT REFERENCES Aulas(id_aula),
FechaInicio DATE,
FechaFin DATE,
HoraInicio TIME,
HoraFin TIME
);

CREATE TABLE CursosProfesores (
id_cursoprofesor SERIAL PRIMARY KEY,
id_curso INT REFERENCES Cursos(id_curso),
id_profesor INT REFERENCES Profesores (id_profesor)
);

CREATE TABLE ProgramasEstudio (
id_ProgramaEstudio SERIAL PRIMARY KEY,
NombrePrograma VARCHAR(100) NOT NULL,
DescripcionPrograma TEXT
);

CREATE TABLE ProgramasCursos (
id_ProgramaCurso SERIAL PRIMARY KEY,
id_ProgramaEstudio INT REFERENCES ProgramasEstudio(id_ProgramaEstudio),
id_curso INT REFERENCES Cursos(id_curso)
);


INSERT INTO Campus (NombreCampus, DireccionCampus) VALUES
('Campus Central', 'Av. Universidad 1000, Lima'),
('Campus Norte', 'Jr. Libertad 321, Trujillo'),
('Campus Sur', 'Av. Independencia 456, Arequipa'),
('Campus Este', 'Calle Sol 789, Cusco'),
('Campus Oeste', 'Av. América 234, Piura'),
('Campus San Miguel', 'Jr. Grau 111, Lima'),
('Campus Los Olivos', 'Av. Túpac Amaru 567, Lima'),
('Campus Santa Anita', 'Av. Metropolitana 654, Lima'),
('Campus Callao', 'Calle Comercio 789, Callao'),
('Campus Villa El Salvador', 'Av. 200 Millas 101, Lima');

INSERT INTO Carreras (NombreCarrera, TituloOtorgado) VALUES
('Ingeniería de Sistemas', 'Ingeniero de Sistemas'),
('Matemáticas Aplicadas', 'Licenciado en Matemáticas'),
('Física', 'Licenciado en Física'),
('Biología Molecular', 'Licenciado en Biología'),
('Química Industrial', 'Ingeniero Químico'),
('Literatura Hispanoamericana', 'Licenciado en Literatura'),
('Filosofía y Ética', 'Licenciado en Filosofía'),
('Economía y Finanzas', 'Economista'),
('Psicología Clínica', 'Psicólogo'),
('Historia del Perú', 'Licenciado en Historia');

INSERT INTO Cursos (NombreCurso, descripcion, creditos, semestre, id_departamento, id_campus) VALUES
('Programación I', 'Introducción a la programación', 4, 1, 1,1),
('Álgebra Lineal', 'Matrices y vectores', 3, 1, 2, 2),
('Física I', 'Cinemática y dinámica', 4, 1, 3, 3),
('Biología General', 'Estructura celular y genética', 3, 1, 4, 4),
('Química Orgánica', 'Estudio de compuestos orgánicos', 3, 2, 5, 5),
('Literatura Española', 'Autores clásicos', 2, 2, 6, 6),
('Lógica', 'Fundamentos del pensamiento crítico', 2, 2, 7,7),
('Macroeconomía', 'Economía a nivel nacional', 3, 2, 8, 8),
('Psicología del Desarrollo', 'Etapas del desarrollo humano', 3, 2, 9, 9),
('Historia Universal', 'De la antigüedad a la modernidad', 3, 2, 10, 10);

INSERT INTO Departamentos (NombreDepartamento, Edificio) VALUES
('Ingeniería Informática', 'Edificio A'),
('Matemáticas', 'Edificio B'),
('Física', 'Edificio C'),
('Biología', 'Edificio D'),
('Química', 'Edificio E'),
('Literatura', 'Edificio F'),
('Filosofía', 'Edificio G'),
('Economía', 'Edificio H'),
('Psicología', 'Edificio I'),
('Historia', 'Edificio J');

INSERT INTO Estudiantes (nombre, apellido, FechaNacimiento, direccion, email) VALUES
('Juan', 'Pérez', '2000-04-10', 'Calle Falsa 123', 'juanp@email.com'),
('María', 'García', '1999-09-15', 'Av. Central 456', 'mariag@email.com'),
('Luis', 'Torres', '2001-12-01', 'Jr. Lima 789', 'luist@email.com'),
('Ana', 'Ramírez', '2002-01-20', 'Calle Sur 321', 'anar@email.com'),
('Pedro', 'Sánchez', '2000-06-11', 'Av. Norte 654', 'pedros@email.com'),
('Lucía', 'Flores', '1998-03-22', 'Pasaje Uno 111', 'luciaf@email.com'),
('Carlos', 'Lopez', '2003-05-30', 'Jr. Este 222', 'carlosl@email.com'),
('Diana', 'Reyes', '2000-07-25', 'Av. Oeste 333', 'dianar@email.com'),
('Jorge', 'Castro', '1999-11-19', 'Calle Real 999',  'jorgec@email.com'),
('Andrea', 'Mendoza', '2001-08-14', 'Av. Central 007', 'andream@email.com');

INSERT INTO Profesores (Nombre, Apellido, Titulo, id_departamento, email) VALUES
('Ricardo', 'Fernández', 'PhD en Informática', 1, 'Ricardo@email.com'),
('Marta', 'Jiménez', 'MSc en Matemáticas', 2, 'Marta@email.com'),
('Javier', 'Ruiz', 'PhD en Física', 3, 'Javier@email.com'),
('Elena', 'Navarro', 'MSc en Biología', 4, 'Elena@email.com'),
('Alfredo', 'Castañeda', 'PhD en Química', 5, 'Alfredo@email.com'),
('Carmen', 'Villanueva', 'Lic. en Letras', 6, 'Carmen@email.com'),
('Sofía', 'Herrera', 'PhD en Filosofía', 7, 'Sofia@email.com'),
('Daniel', 'Salas', 'MSc en Economía', 8, 'Daniel@email.com'),
('Paula', 'Delgado', 'PhD en Psicología', 9, 'Paula@email.com'),
('Oscar', 'Ortiz', 'PhD en Historia', 10, 'Oscar@email.com');

INSERT INTO Inscripciones (id_estudiante, id_curso, FechaInscripcion, Calificacion) VALUES
(1, 1, '2025-01-15', 15.5),
(2, 2, '2025-01-16', 17.2),
(3, 3, '2025-01-17', 14.0),
(4, 4, '2025-01-18', 18.0),
(5, 5, '2025-01-19', 16.8),
(6, 6, '2025-01-20', 19.0),
(7, 7, '2025-01-21', 13.5),
(8, 8, '2025-01-22', 17.5),
(9, 9, '2025-01-23', 18.3),
(10, 10, '2025-01-24', 14.9);

INSERT INTO Horarios (id_curso, id_aula, FechaInicio, FechaFin, HoraInicio, HoraFin) VALUES
(1, 1, '2025-03-01', '2025-06-30', '08:00', '10:00'),
(2, 2, '2025-03-01', '2025-06-30', '10:00', '12:00'),
(3, 3, '2025-03-01', '2025-06-30', '12:00', '14:00'),
(4, 4, '2025-03-01', '2025-06-30', '08:00', '10:00'),
(5, 5, '2025-03-01', '2025-06-30', '10:00', '12:00'),
(6, 6, '2025-03-01', '2025-06-30', '12:00', '14:00'),
(7, 7, '2025-03-01', '2025-06-30', '14:00', '16:00'),
(8, 8, '2025-03-01', '2025-06-30', '08:00', '10:00'),
(9, 9, '2025-03-01', '2025-06-30', '10:00', '12:00'),
(10, 10, '2025-03-01', '2025-06-30', '12:00', '14:00');

INSERT INTO CursosProfesores (id_curso, id_profesor) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

INSERT INTO ProgramasEstudio (NombrePrograma, DescripcionPrograma) VALUES
('Ingeniería Informática', 'Programa de formación en informática y programación'),
('Matemáticas Aplicadas', 'Enfoque en cálculo y análisis de datos'),
('Ciencias Físicas', 'Carrera en investigación y física aplicada'),
('Biociencias', 'Estudios en biología celular y genética'),
('Química Pura', 'Investigación y laboratorios químicos'),
('Letras y Humanidades', 'Estudio literario y crítico de textos'),
('Filosofía Clásica', 'Análisis filosófico desde la antigüedad'),
('Economía Global', 'Entorno económico internacional y finanzas'),
('Psicología Clínica', 'Psicología del comportamiento humano'),
('Historia Contemporánea', 'Estudios históricos modernos y contemporáneos');

INSERT INTO ProgramasCursos (id_ProgramaEstudio, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Estudiantes_Carreras (id_estudiante, id_carrera, FechaInscripcion) VALUES
(1, 1, '2024-03-15'),
(2, 2, '2024-03-16'),
(3, 3, '2024-03-17'),
(4, 4, '2024-03-18'),
(5, 5, '2024-03-19'),
(6, 6, '2024-03-20'),
(7, 7, '2024-03-21'),
(8, 8, '2024-03-22'),
(9, 9, '2024-03-23'),
(10, 10, '2024-03-24');


CREATE TABLE Campus (
id_campus SERIAL PRIMARY KEY,
NombreCampus VARCHAR(100) NOT NULL,
DireccionCampus VARCHAR(200)
);

CREATE TABLE Carreras (
id_carrera SERIAL PRIMARY KEY,
NombreCarrera VARCHAR(100) NOT NULL,
TituloOtorgado VARCHAR(100)
);

CREATE TABLE Estudiantes_Carreras (
id_estudiante_carreras SERIAL PRIMARY KEY,
id_estudiante INT NOT NULL,
id_carrera INT NOT NULL,
FechaInscripcion DATE DEFAULT CURRENT_DATE,
FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
FOREIGN KEY (id_carrera) REFERENCES Carreras(id_carrera)    
);
---------------------------------------------------------------------
ALTER TABLE Estudiantes
ADD COLUMN id_carrera INT;

ALTER TABLE Estudiantes
ADD CONSTRAINT FK_estudiante_carrera
FOREIGN KEY (id_carrera) REFERENCES Carreras(id_carrera)
ON DELETE SET NULL;

ALTER TABLE Cursos
ADD COLUMN id_campus INT,

ADD CONSTRAINT fk_curso_campus
FOREIGN KEY (id_campus) REFERENCES Campus(id_campus)
ON DELETE SET NULL;

ALTER TABLE Profesores
ADD COLUMN Email VARCHAR(50) UNIQUE;

DROP TABLE Aulas CASCADE ;

ALTER TABLE Estudiantes
DROP COLUMN ciudad;
---------------------------------------------------------------------
--1
SELECT nombre, apellido
FROM Estudiantes;
--2
SELECT *
FROM Cursos
WHERE creditos = 3;
--3
SELECT 
    e.nombre AS nombreEstudiante,
    e.apellido AS apellidoEstudiante,
    c.NombreCurso
FROM 
    Inscripciones i
INNER JOIN Estudiantes e ON i.id_estudiante = e.id_estudiante
INNER JOIN Cursos c ON i.id_curso = c.id_curso;
--4
SELECT 
    e.nombre AS NombreEstudiante,
    e.apellido AS ApellidoEstudiante,
    c.NombreCurso
FROM 
    Estudiantes e
LEFT JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
LEFT JOIN Cursos c ON i.id_curso = c.id_curso;
--5
SELECT c.NombreCurso,
    e.nombre AS NombreEstudiante,
    e.apellido AS ApellidoEstudiante
FROM Estudiantes e
RIGHT JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
RIGHT JOIN Cursos c ON i.id_curso = c.id_curso;
--6
SELECT  c.NombreCurso,
    COUNT(i.id_estudiante) AS CantidadEstudiantes
FROM Cursos c
LEFT JOIN Inscripciones i ON c.id_curso = i.id_curso
GROUP BY  c.NombreCurso;
--7
SELECT nombre, apellido, FechaNacimiento
FROM Estudiantes
WHERE FechaNacimiento BETWEEN '1998-01-01' AND '2003-12-31';
--8
SELECT *
FROM Cursos
ORDER BY NombreCurso ASC;
--9
WITH InscripcionesPorEstudiante AS (
    SELECT 
        Estudiantes.id_estudiante,
        Estudiantes.nombre,
        Estudiantes.apellido,
        COUNT(Inscripciones.id_curso) AS TotalInscripciones
    FROM Estudiantes
    LEFT JOIN Inscripciones ON Estudiantes.id_estudiante = Inscripciones.id_estudiante
    GROUP BY Estudiantes.id_estudiante, Estudiantes.nombre, Estudiantes.apellido
)
SELECT 
    nombre,
    apellido,
    TotalInscripciones
FROM InscripcionesPorEstudiante
ORDER BY TotalInscripciones DESC
LIMIT 3;
--10
WITH ConteoInscripciones AS (
    SELECT 
        d.NombreDepartamento,
        c.id_curso,
        c.NombreCurso,
        COUNT(i.id_estudiante) AS TotalInscritos
    FROM Cursos c
    JOIN Departamentos d ON c.id_departamento = d.id_departamento
    LEFT JOIN Inscripciones i ON c.id_curso = i.id_curso
    GROUP BY d.NombreDepartamento, c.id_curso, c.NombreCurso
),
MaximosPorDepartamento AS (
    SELECT 
        NombreDepartamento,
        MAX(TotalInscritos) AS MaxInscritos
    FROM ConteoInscripciones
    GROUP BY NombreDepartamento
)
SELECT 
    C.NombreDepartamento,
    C.NombreCurso,
    C.TotalInscritos
FROM ConteoInscripciones C
JOIN MaximosPorDepartamento mpd 
    ON C.NombreDepartamento = mpd.NombreDepartamento 
    AND C.TotalInscritos = mpd.MaxInscritos;
--11
SELECT p.Nombre AS NombreProf,
       p.Apellido AS ApellidoProf,
       COUNT(cp.id_curso) AS TotalCursos
FROM Profesores p
JOIN CursosProfesores cp ON p.id_profesor = cp.id_profesor
GROUP BY p.id_profesor, p.Nombre, p.Apellido
HAVING COUNT(cp.id_curso) > 2;
--12
WITH PromediosCursos AS (
    SELECT  c.id_curso,
        c.NombreCurso,
        AVG(i.Calificacion) AS PromedioCalificacion
    FROM Cursos c
    JOIN Inscripciones i ON c.id_curso = i.id_curso
    GROUP BY c.id_curso, c.NombreCurso
),
CursosConPrograma AS (
    SELECT p.id_ProgramaEstudio,
        p.NombrePrograma,
        pc.id_curso,
        c.NombreCurso,
        c.PromedioCalificacion
    FROM  ProgramasEstudio p
    JOIN ProgramasCursos pc ON p.id_ProgramaEstudio = pc.id_ProgramaEstudio
    JOIN PromediosCursos c ON pc.id_curso = c.id_curso
),

MaxPromediosPorPrograma AS (
    SELECT id_ProgramaEstudio,
        MAX(PromedioCalificacion) AS MaxPromedio
    FROM CursosConPrograma
    GROUP BY id_ProgramaEstudio
)
SELECT cp.NombrePrograma AS "Programa",
    cp.NombreCurso AS "Curso Destacado",
    cp.PromedioCalificacion AS "Promedio"
FROM CursosConPrograma cp
JOIN MaxPromediosPorPrograma m ON cp.id_ProgramaEstudio = m.id_ProgramaEstudio
    AND cp.PromedioCalificacion = m.MaxPromedio
ORDER BY cp.NombrePrograma;
