#include "kernel/fonts/font_lib.h"
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