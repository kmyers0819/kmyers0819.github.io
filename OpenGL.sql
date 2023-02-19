CREATE SCHEMA OpenGL;

CREATE TABLE OpenGL.Tools(
   ID       INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,Type     VARCHAR(20) NOT NULL
  ,Name     VARCHAR(20) NOT NULL
  ,Comments VARCHAR(250) NOT NULL
  ,Link     VARCHAR(250) NOT NULL
);

INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (1,'Debug','apitrace','Tools for tracing OpenGL, Direct3D, and other graphics APIs.','http://apitrace.github.io/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (2,'Debug','CodeXL','AMD''s tool suite that includes debugger, profiler and frame/shader analysis.','https://github.com/GPUOpen-Archive/CodeXL');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (3,'Debug','GL-SL Debugger','Tool for debugging OpenGL programs.','http://glsl-debugger.github.io/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (4,'Debug','GLIntercept','OpenGL function call interceptor for Windows.','https://github.com/dtrebilco/glintercept');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (5,'Debug','Intel-GPA','Intel''s OpenGL Graphics Performance Analyzer.','https://www.intel.com/content/www/us/en/developer/tools/graphics-performance-analyzers/overview.html');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (6,'Debug','NVIDIA Nsight','Development platform for graphics applications.','https://developer.nvidia.com/nsight-visual-studio-edition');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (7,'Debug','RenderDoc','RenderDoc is a stand-alone graphics debugging tool.','https://github.com/baldurk/renderdoc');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (8,'Debug','tracy','A real time remote telemetry frame profiler for games and other applications.','https://github.com/wolfpld/tracy');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (9,'Debug','vogl','OpenGL capture and playback debugger developed by Valve.','https://github.com/ValveSoftware/vogl');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (10,'Editor','GLSL Sandbox','Online live editor for fragment shaders.','https://glslsandbox.com/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (11,'Editor','GLSLbin','[DISCONTINUED] Fragment shader sandbox supporting glslify.','http://glslb.in/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (12,'Editor','SHDR Editor','Live GLSL shader editor, viewer and validator.','http://shdr.bkcore.com/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (13,'Editor','Shader Toy','Most popular live editor for fragment shaders.','https://www.shadertoy.com/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (14,'Editor','ShaderFrog','WebGL Shader Editor and Composer','https://shaderfrog.com/app/?query=');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (15,'Library','assimp','Portable library to import 3D models in a uniform manner.','https://github.com/assimp/assimp');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (16,'Library','Bullet','It provides state of the art collision detection, soft body and rigid body dynamics.','https://pybullet.org/wordpress/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (17,'Library','fltk','C++ toolkit to generate UI widgets portably.','https://www.fltk.org/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (18,'Library','freeGLUT','Mature library that allows to create/manage windows containing OpenGL contexts.','https://freeglut.sourceforge.net/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (19,'Library','GLFW','Modern library for creating/interact windows with OpenGL contexts.','https://www.glfw.org/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (20,'Library','GLFM','Supplies an OpenGL ES context and input events for mobile devices and the web.','https://github.com/brackeen/glfm');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (21,'Library','glm','Mathematics library for graphics software based on the GLSL specifications.','http://glm.g-truc.net/0.9.6/index.html');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (22,'Library','Magnum','It is a 2D/3D graphics engine for modern OpenGL.','https://github.com/mosra/magnum');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (23,'Library','MathFu','C++ math library developed primarily for games focused on simplicity and efficiency.','http://google.github.io/mathfu/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (24,'Library','Newton','It is a cross-platform life-like physics.','http://newtondynamics.com/forum/newton.php');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (25,'Library','OGLplus','Collection of libraries which implement an object-oriented facade over OpenGL.','https://oglplus.org/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (26,'Library','SDL','Designed to provide low level access to multimedia and graphics hardware.','http://www.libsdl.org/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (27,'Library','SFML','Simple interface to ease the development of games and multimedia applications.','https://www.sfml-dev.org/');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (28,'Library','SOIL','[DISCONTINUED] Tiny C library used primarily for uploading textures into OpenGL.','https://github.com/pavelliavonau/SOIL');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (29,'Library','SOIL2','Fork of the Jonathan Dummer''s Simple OpenGL Image Library. Tiny C library used primarily for uploading textures into OpenGL.','https://github.com/SpartanJ/SOIL2');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (30,'Library','Pangolin','Lightweight portable rapid development library for managing OpenGL display / interaction and abstracting video input.','https://github.com/stevenlovegrove/Pangolin');
INSERT INTO OpenGL.Tools(ID,Type,Name,Comments,Link) VALUES (31,'Library','morphologica','OpenGL graphics engine for data visualization, especially of numerical simulations.','https://github.com/ABRG-Models/morphologica');


CREATE VIEW OpenGL.DebugTools AS SELECT ID, Name, Comments, Link FROM OpenGL.Tools WHERE Type = 'Debug';
CREATE VIEW OpenGL.Editors AS SELECT ID, Name, Comments, Link FROM OpenGL.Tools WHERE Type = 'Editor';
CREATE VIEW OpenGL.Libraries AS SELECT ID, Name, Comments, Link FROM OpenGL.Tools WHERE Type = 'Library';