#include <stdio.h>
#include <sys.h>
#include <file.h>
void main1()
{
    char data1[13] = "Hello World!";
    char data2[13];
    int fd = 0;
    int count = 0;
    int i, j;
    fd = creat("Jessy", 0666); // �մ����õ��ļ������ʷ�ʽ�ǿ�д
    if (fd > 0)
    {
        printf("The file %d is created.\n", fd);
    }
    else
    {
        printf("The file can not be created.\n");
    }
    close(fd);
    if (fork())
    {
        i = wait(&j);
        fd = open("Jessy", 1); // �Կɶ��ķ�ʽ���ļ�
        count = read(fd, data2, j);
        printf("%d characters are read from file %d: %s.", count, fd, data2);
        printf("\n");
        close(fd);
    }
    else
    {
        fd = open("Jessy", 2); // �Կ�д�ķ�ʽ���ļ�
        count = write(fd, data1, sizeof(data1));
        if (count == sizeof(data1))
        {
            printf("%d characters have been written into the file %d.\n", count, fd);
        }
        else
        {
            printf("The file can not be written successfully.\n");
        }
        close(fd);
        exit(count);
    }
}