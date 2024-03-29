int strlen(const char *s)
{
    int size=0;
    while (s[size++]!='\0') continue;
    return size;
}
int strcmp(const char *s1, const char *s2)
{
    int i=0;
    if (strlen(s1)<strlen(s2)) return -1;
    if (strlen(s1)>strlen(s2)) return 1;
    while (s1[i]!='\0'&&s2[i]!='\0') {
        if (s1[i]<s2[i]) return -1;
        if (s1[i]>s2[i]) return 1;
        i++;
    }
    return 0;
}