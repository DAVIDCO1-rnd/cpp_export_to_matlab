#define EXPORT __declspec (dllexport)

class Circle {

public:
	EXPORT Circle(int newx, int newy, int newradius);
	EXPORT int getRadius();
	EXPORT void setRadius(int newradius);
	EXPORT void draw();
	EXPORT int getX();
	EXPORT int getY();
	EXPORT float calcArea();
	EXPORT float calcPerimeter();

private:
	int radius;
	int x;
	int y;
};
