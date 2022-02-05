//:c09:Rectangle.cpp
//Accessor and mutators

class Rectangle{
	int wide, high;
	public:
		Rectangle(int w=0, int h=0):wide(w),high(h){}
		int getWidth()const{return wide;}	//read
		void setWidth(int w){wide = w;}	//set
		int getHeight()const{return high;}	//read
		void setHeight(int h){high = h;}	//set
};

int main(){
	Rectangle r(19,47);
	//change widht and height;
	r.setHeight(2 * r.getWidth());
	r.setWidth(2 * r.getHeight());
}
