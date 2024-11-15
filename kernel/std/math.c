#include "kernel/fonts/font_lib.h"


int sqrt(int x) {
    if (x < 0) {
        return -1; // Return -1 for negative inputs to indicate error
    }
    if (x == 0 || x == 1) {
        return x; // The square root of 0 is 0, and the square root of 1 is 1
    }
    int start = 1, end = x, result;
    while (start <= end) {
        int mid = (start + end) / 2;
        if (mid * mid == x) {
            return mid;
        }
        // If mid*mid is less than x, discard the left half
        if (mid * mid < x) {
            start = mid + 1;
            result = mid;
        }
        // If mid*mid is greater than x, discard the right half
        else {
            end = mid - 1;
        }
    }
    return result;
}

int oglindit (int nr, int *zero_before)
{
	int ogli=0;
	int only_zero=1;
	*zero_before=0;
	while (nr) {
		int cif=nr%10;
		if (only_zero&&cif!=0) only_zero=0;
		if (only_zero&&cif==0) *zero_before=*zero_before+1;
		ogli=ogli*10+cif;
		nr/=10;
	}
	return ogli;
}

int size_hex(int dec)
{
	int index=0;
	while (dec) {
		dec/=16;
		index++;
	}
	index--;
	return index;
}

int bin_to_dec (int bin)
{
	int dec=0;
	int index=1;
	while (bin) {
		dec+=(bin%10)*index;
		index*=2;
		bin/=10;
	}
	return dec;
}

char hex_nr[105];
char * dec_to_hex (int dec)
{
	char cifs[16]="0123456789ABCDEF";
	for(int i=0; i<105; i++) hex_nr[i]='A';
	int index=size_hex(dec)+2;
	hex_nr[index+1]='\0';
	while (dec!=0) {
		int cif=dec%16;
		char code=cifs[cif];
		hex_nr[index]=code;
		dec/=16;
		index--;
	}
	hex_nr[0]='0'; hex_nr[1]='x';
	return hex_nr;
}

unsigned int abs (int data)
{
	if (data<0) return -1*data;
	return data;
}

int num_len (int nr) {
	int cnt=0;
	while (nr) {
		cnt++;
		nr/=10;
	}
	return cnt;
}

__attribute__((optimize("O0")))
void div0()
{
	int x=9;
	x/=0;
}