#include "stdafx.h"
#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

bool IsTriangle(double a, double b, double c) {
	if ((a + b > c) && (a + c > b) && (c + b > a)) {
		return true;
	}
	else {
		return false;
	}
}

bool IsIsoscelesTriangle(double a, double b, double c) {

	if ((a == b) || (b == c) || (a == c)) {
		return true;
	}
	else {
		return false;
	}
}

bool IsEquilateralTriangle(double a, double b, double c) {
	if ((a == b) && (b == c)) {
		return true;
	}
	else {
		return false;
	}
}

bool IsAllArgumentDigit(char* argv[]) {
	for (int i = 1; i <= 3; i++) {
		if (!isdigit(*argv[i]))  // проверка цифра или символ  
		{
			return false;
		}
	}
	return true;
}

double GetArgument(string element) {
	replace(element.begin(), element.end(), ',', '.');
	double number = stod(element);
	return number;
}


int main(int argc, char* argv[])
{
	if (argc < 4)
	{
		cout << "This program should receive the input 3 numbers (3 sides of the triangle)" << endl;
		cout << "You did not enter enough arguments" << endl;
	}
	else
	{	
		bool isAllArgumentDigit = IsAllArgumentDigit(argv);

		if (!isAllArgumentDigit) {
			cout << "Some of the argument is not digit" << endl;
		}
		else  {
			double a = GetArgument(argv[1]);
			double b = GetArgument(argv[2]);
			double c = GetArgument(argv[3]);

			bool isTriangle = IsTriangle(a, b, c);

			if (!isTriangle) {
				cout << "It is not triangle" << endl;
			}
			else {
				bool isIsoscelesTriangle = IsIsoscelesTriangle(a, b, c);

				if (!isIsoscelesTriangle) {
					cout << "It is simple triangle" << endl;
				}
				else {
					bool isEquilateralTriangle = IsEquilateralTriangle(a, b, c);

					if (isEquilateralTriangle) {
						cout << "It is equilateral triangle" << endl;
					}
					else {
						cout << "It is isosceles triangle" << endl;
					}
				}
			}
		}
	}

	return 0;
}