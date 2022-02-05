#include <stdio.h>
#include <stdlib.h>

float circle(void);
float square(void);
float rectangle(void);
float cuboid(void);
float sphere(void);
float cone(void);
float cylinder(void);

int main(void)
{
	int ans;
	float jawaban;

	printf("chose one:\n");
	printf("1.circle\n"
		"2.square\n"
		"3.rectangle\n"
		"4.cubaoid\n"
		"5.sphere\n"
		"6.cone\n"
		"7.cylinder\n");
	scanf("%d",&ans);
	system("clear");
	switch(ans){
		case 1:
			printf("you choose circle operation\n");
			jawaban=circle();
			break;
		case 2:
			printf("you choose square operation\n");
			jawaban=square();
			break;
		case 3:
			printf("you choose rectangle operation\n");
			jawaban=rectangle();
			break;
		case 4:
			printf("you choose cuboid operation\n");
			jawaban=cuboid();
			break;
		case 5:
			printf("you choose sphere operation\n");
			jawaban=sphere();
			break;
		case 6:
			printf("you choose cone operation\n");
			jawaban=cone();
			break;
		case 7:
			printf("you choose cylinder operation\n");
			jawaban=cylinder(); 
		default:
			printf("you put wrong input");
			jawaban=0;
	}
	printf("the answer is %f\n",jawaban);
	ans=getchar();
	return 0;
}
float circle(void)
{
	float r;

	printf("input the r:");
	scanf("%f",&r);

	return r*r*22.0/7;
}
float rectangle()
{
	float height;
	float width;

	printf("input the width:");
	scanf("%f",&width);
	printf("input the height:");
	scanf("%f",&height);
	return height*width;
}
float square()
{
	float width;

	printf("input the long:");
	scanf("%f",&width);
	return width*width;
}
float cuboid()
{
	float width;
	printf("input the long:");
	scanf("%f",&width);
	return width * width *width;
}
float sphere()
{
	float r;
	printf("input the radius:");
	scanf("%f",&r);
	return 4.0/3 * r * r * r * 22.0/7;
}
float cone()
{
	float r;
	float height;

	printf("input the radius:");
	scanf("%f",&r);
	printf("input the height:");
	scanf("%f",&height);
	return 1.0/3 * r*height * 22.0/7;
}
float cylinder()
{
	float r;
	float height;

	printf("input the radius:");
	scanf("%f",&r);
	printf("input the height:");
	scanf("%f",&height);
	
	return 22.0/7 * r * height;
}
