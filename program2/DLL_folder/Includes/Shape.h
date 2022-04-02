#define EXPORT __declspec (dllexport)

class Shape {

private:
	int x;
	int y;

public:
	EXPORT Shape(int newx, int newy);
	EXPORT int getX();
	EXPORT int getY();
	EXPORT void setX(int newx);
	EXPORT void setY(int newy);
	EXPORT void moveTo(int newx, int newy);
	EXPORT void rMoveTo(int deltax, int deltay);
	EXPORT virtual void draw() = 0;
};
