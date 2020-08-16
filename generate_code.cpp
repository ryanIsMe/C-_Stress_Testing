#include<bits/stdc++.h>
using namespace std;
int random(int x , int y)
{
	return x + rand() % (y-x+1) ;
}
int main()
{
	srand((long long) time(0)) ;
	long long a = random(1,100) ;
	cout << a ;
	return 0;
}