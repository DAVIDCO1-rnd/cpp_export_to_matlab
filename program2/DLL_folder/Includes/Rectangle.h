#define EXPORT __declspec (dllexport)

class Rectangle : public Shape {

public:
	EXPORT Rectangle(int newx, int newy, int newwidth, int newheight);
	EXPORT int getWidth();
	EXPORT int getHeight();
	EXPORT void setWidth(int newwidth);
	EXPORT void setHeight(int newheight);
	EXPORT void draw();

private:
	int width;
	int height;
};
