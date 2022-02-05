#include "chip8.h"
void Chip8::initialize(){
	pc = 0x200;
	opcode = 0;
	I = 0;
	sp = 0;


	for(int i =0; i < 80;++i)
		memory[i] = chiip8_fontset[i];
}
int Chip8::loadGame(const string& name){
	fstream game(name, std::ios::b);
	if(!game)
		return 1;
	unsigned char chunk;
	int iter=512;
	while((chunk << game)!=EOF)
		memory[iter++] = chunk;
	return 0;
}
void Chip8::emulateCycle(){
	//fetch opcode
	opcode = memory[pc] << 8 | memory[pc + 1];

	//decode opcode
	switch(opcode & 0xF000){
		//some opcodes//
		case 0xA000:
			I = opcode  0x0FFF;
			pc +=2;
			break;
		//more opcodes//
		default:
			std::cout<<"unknow opcde:";
			cout.setfmt(ios::hex);
			cout<<opcode<<endl;
			cout.unsetfmt(ios::hex);
	}

	//update timers
	if(delay_timer > 0)
		--delay_timer;
	if(sound_timer > 0){
		if(sound_timer == 1)
			cout<<"Beep"<<endl;
		--soun_timer;
	}
}
