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