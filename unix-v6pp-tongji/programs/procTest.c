#include <stdio.h>
#include <sys.h>
int main1()
{
	int ws = 0;
	int i, j, k, pid, ppid;
	if (fork())
	{
		//2#
		sleep(2);
		for (k = 1; k < 6; k++)
		{
			printf("%d,%d; ", k, getppid(k));
		}
		printf("\n");
	}
	else
	{
		//3#
		if (fork())
		{
			sleep(1);
			ppid = getppid(4);
			printf("Process %d# finished: My father is %d\n", 4, ppid);
			if (fork())
			{
				//3#
				// sleep(1);
				pid = getpid();
				ppid = getppid(pid);
				for (k = 0; k < ws; k++)
				{
					i = wait(&j);
					printf("Process %d#:My child %d is finished with exit status %d\n", pid, i, j);
				}
				printf("Process %d# finished: My father is %d\n", pid, ppid);
				ppid = getppid(4);
				printf("Process %d# finished: My father is %d\n", 4, ppid);
				exit(ppid);
			}
			else
			{
				//5#
				pid = getpid();
				ppid = getppid(pid);
				printf("Process %d# finished: My father is %d\n", pid, ppid);
				ppid = getppid(4);
				printf("Process %d# finished: My father is %d\n", 4, ppid);
				exit(ppid);
			}
		}
		else
		{
			//4#
			pid = getpid();
			ppid = getppid(pid);
			printf("Process %d# finished: My father is %d\n", pid, ppid);
			exit(ppid);
		}
	}
}