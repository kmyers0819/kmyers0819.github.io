USE OpenGL;
SHOW TABLES;

SELECT * FROM libraries WHERE Comments LIKE '%3D%';

SELECT * FROM editors;

SELECT Name, Link FROM editors WHERE Comments LIKE '%WebGL%';