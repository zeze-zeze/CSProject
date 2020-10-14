#include<stdio.h>

int main(){
    int i=0, j=0, k=0;
    for(i=0; i<10; i++){
        if(i<5){
            for(j=0; j<3; j++){
                printf("aaa");
            }
        }
        else{
            for(k=0; k<3; k++){
                printf("bbb");
            }
        }
    }
}
