#include<stdio.h>
#include<sys.h>
int main1()
{
    int pid,ppid;
    pid=getpid();
    ppid=getppid(pid);
    printf("This is Process %d# speaking...\n",pid);
    printf("My parent process iD is: %d#\n",ppid);
    return 0;
}