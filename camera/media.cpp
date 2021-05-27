#include<peripheral_api.h>
#include<cstdio>
int main() {
        int ret;
        ret = MediaLibInit();
        printf("%d\n", ret);
}

