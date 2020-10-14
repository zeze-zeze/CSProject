#include <stdio.h>

int foo2(int a, char b, int c, char d, int e, short f, int g){
    char *buf;
    char *p[10];
    scanf("%s", &buf);
    int len;
    len = strlen(buf);
    if(len < 10){
        memcpy(p, buf, len);
        memset(p + len, ' ', 10 - len);
    }
    printf("%d%c%d%c%d%d%d", a, b, c, d, e, f, g);
    return 0;
}


void func(int a, int b){
    printf("QQQ");
    printf("%d%d", a, b);
}

void main(){
    int a;
    scanf("%d", &a);
    printf("%d", a);
    func(1, 2);
}
