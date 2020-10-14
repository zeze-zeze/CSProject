#include <stdio.h>

int foo2(){
    char *buf;
    char *p[10];
    scanf("%s", &buf);
    int len;
    len = strlen(buf);
    if(len < 10){
        memcpy(p, buf, len);
        memset(p + len, ' ', 10 - len);
    }
    return 0;
}


void func(int a, int b){
    printf("QQQ");
}

void main(){
    int a;
    scanf("%d", &a);
    printf("%d", a);
    func(1, 2);
}
