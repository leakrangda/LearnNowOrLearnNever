//:c09:Rectangle.cpp
//Accessor and mutators

class Rectangle{
	int wide, high;
	public:
		Rectangle(int w=0, int h=0):wide(w),high(h){}
		int width()const{return wide;}	//read
		void width(int w){wide = w;}	//set
		int height()const{return high;}	//read
		void height(int h){high = h;}	//set
};

int main(){
	Rectangle r(19,47);
	//change widht and height;
	r.height(2 * r.width());
	r.width(2 * r.height());
}
