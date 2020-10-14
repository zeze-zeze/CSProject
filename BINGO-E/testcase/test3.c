#include<stdio.h>

int main(){
    int i=0; 
    while(i<10){
        switch(i){
            case 1:
            case 2:{
                printf("a");
                break;
            }
            case 3:
            case 4:
            case 5:{
                printf("b");
                break;
            }
            case 6:
            case 7:
            case 8:
            case 9:{
                printf("c");
                break;
            }
        }
        i+=1;  
    }
}
