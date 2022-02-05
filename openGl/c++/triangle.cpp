#include <iostream>
#include <cstdlib>
using namespace std;

#include "vgl.h"
#include "LoadShaders.h"

enum VAO_IDs{Triangles, NumVAOs};
enum Buffer_IDs{ArrayBuffer,NumBuffers};
enum Attrib_IDs{vPosition};

GLuint VAOs[NumVAOs];
GLuint Buffers[NumBuffers];

const GLuint NumVertices = 6;


void init(void){
	glGenVertexArrays(NumVAOs, VAOs);
	glBindVertexArray(VAOs[Triangles]);
	GLfloat vertices[NumVertices][2] = {
		{ -0.90, -0.90},	//triangle 1
		{ 0.85, -0.90},
		{-0.90, 0.85},
		{0.90, -0.85},		//triangle 2
		{0.90, 0.90},
		{-0.85, 0.90}
	};
	glGenBuffers(NumBuffers, Buffers);
	glBindBuffer(GL_ARRAY_BUFFER, Buffers[ArrayBuffer]);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices),vertices,
			GL_STATIC_DRAW);
	ShaderInfo shaders[] = {
		{GL_VERTEX_SHADER, "triangle.vert"},
		{GL_FRAGMENT_SHADER, "triangle.frag"},
		{GL_NONE, NULL}
	};

	GLuint program = LoadShaders(shaders);
	glUseProgram(program);
	glEnableVertexAttribArray(vPosition);
}
void display(void){
	glClear(GL_COLOR_BUFFER_BIT);
	glBindVertexArray(VAOs[Triangles]);
	glDrawArrays(GL_TRIANGLES, 0, NumVertices);

	glFlush();
}
int main(int argc, char** argv){
	glutINit(&argc, argv);
	glutInitDisplayMode(GLUT_RGBA);
	glutInitWindowSize(512, 512);
	glutInitContextVersion(4, 3);
	glutInitContextProfile(GLUT_CORE_PROFILE);
	glutCreateWindow(argv[0]);

	if(glewInit()){
		cerr << "Unable to initialize GLEW ... exiting"<<endl;
		exit(EXIT_FAILURE);
	}
	init();
	glutDisplayFunc(display);
	glutMainLoop();
}
