#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

void main(){
    char *p;
    //read(0, p, 20);
    //write(1, p, 20);
    char s[400]; 
    int fd;    
    fd = open("./test1.c", O_WRONLY|O_CREAT);
    write(fd, s, sizeof(s));
}
