//header for chip8 processor
#ifndef CHIP8_H
#define CHIP8_H
#include <string>
#include <iostream>
#include <fstream>

class Chip8{
	static const int mem_buf=4096;
	static const int reg_buf=16;
	static const int res_buf=64 * 32;
	static const int key_buf=16;
	unsigned short int opcode;
	unsigned char memory[mem_buf];
	unsigned char v[16];
	unsigned short int I;
	unsigned short int PC;
	unsigned char gfx[res_buf];
	unsigned char delay_timer;
	unsigned char sound_timer;
	unsigned char key[key_buf];
	bool flag=false;
	void initialize();
	public:
		Chip8(const string& name){
			if(flag)
				std::cout<<"game is on"<<std::endl;
			else{
				initialize();
				if(loadGame(const string& name))
					std::cout<<"error loading game"<<std::endl;
				else
					std::cout<<"successfull"<<std::endl;
			}
		}
		Chip8(){};
		int loadGame(const string& name);
		void initialize();
		void emulateCycle();
};
#endif__//endof chip8.h
