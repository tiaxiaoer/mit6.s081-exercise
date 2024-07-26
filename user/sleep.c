//#include "stdlib.h"

#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int sleep(int n){
    for(int i=0; i<n; i++){
        sys_sleep();
    }
}

int main(int argc, char *argv[]){
    if(argc <= 1){
        fprintf(2, "usage: sleep time long\n");
        exit(1);
    } 
    sleep(atoi(argv[1]));
    exit(0);
}
