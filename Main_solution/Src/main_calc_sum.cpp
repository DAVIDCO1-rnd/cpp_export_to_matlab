#include <iostream>
#include "calc_sum.h"

int main() {
	int num1 = 4;
	int num2 = 3;
	int res = my_func(num1, num2);
	std::cout << num1 << " + " << num2 << " = " << res << std::endl;
}