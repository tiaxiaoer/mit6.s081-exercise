#include <sys/types.h>

#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int main(int argc, char *argv[]){
    int pidfd[2];
    if(pipe(pidfd)==-1){
        printf("pipe error\n");
        exit(1);
    }
    pid_t pid;
    pid=fork();
    char str[100];
    if(pid==0){ //子进程 
        read(pidfd[0], str, sizeof(str));
        fprintf((int)pidfd[1], "<%u>: received ping", (unsigned int)getpid());
        printf("<%u>:: received ping\n", (unsigned int)getpid());
        close(pidfd[1]);
    }else{      //父进程
        close(pidfd[0]);
        write(pidfd[1], "hello!", strlen("hello!")+1 );
        close(pidfd[1]);
        read(pidfd[0], str, sizeof(str));
        printf("<%u>:: received pong\n", (unsigned int)getpid());
        close(pidfd[1]);
    }
    exit(0);
}