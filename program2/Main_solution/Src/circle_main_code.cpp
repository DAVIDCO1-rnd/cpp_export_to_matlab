#include <iostream>
#include "Shape.h"
#include "Circle.h"
#include "Rectangle.h"
#include <vector>

using std::vector;

int main(void) {
	int centerX = 9;
	int centerY = 7;
	int radius = 5;

	Circle* circle = new Circle(centerX, centerY, radius);

	float area = circle->calcArea();
	float perimeter = circle->calcPerimeter();

	std::cout << "area of circle with radius " << radius << " = " << area << std::endl;
	std::cout << "perimeter of circle with radius " << radius << " = " << perimeter << std::endl;

	getchar();
	return 0;
}