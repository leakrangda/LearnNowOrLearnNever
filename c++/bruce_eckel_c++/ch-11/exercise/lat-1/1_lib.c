//1_lib.cpp

struct Bird{
	int bird;
};
struct Rock{
	int rock;
};

typedef struct Bird BRD;
typedef struct Rock RCK;

BRD* bird;
RCK* rock;
void* v;

int main(){
	v = rock;
	bird = v;
	return 0;
}
