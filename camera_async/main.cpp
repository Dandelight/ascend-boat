#include "stdio.h"
#include "stdlib.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "pthread.h"
#include <unistd.h>
extern "C" {
#include "peripheral_api.h"
}

int Camera0UserFunc(const void* pdata, int size, void* param)
{
    // pdata为指向图像内存的首地址指针，建议用户可以直接读取，但是不建议修改内容，如果需要修改，建议先拷贝到用户自定义的内存空间内再修改
    printf("Camera0UserFunc Get frame size = %d ", size);
    int checksum = 0;
    for(int i=0; i<size; ++i) {
        checksum += ((char*)pdata)[i];
    }
    printf("checksum: %0x\n", checksum);
    return 1;
}


//进程退出时自动释放摄像头资源，不需要调用CloseCamera/CloseMic接口
int main()
{
    int ret;
    int para, i;
    unsigned char *framebuffer;
    int framebuffer_size;
    struct CameraResolution resolution;
    struct MICProperties micprop;
    struct CameraResolution supported_resolution[HIAI_MAX_CAMERARESOLUTION_COUNT];

    // 媒体库初始化
    ret = MediaLibInit();
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("MediaLibInit failed %d\r\n", ret);
        return -1;
    }
    printf("MediaLibInit success %d\r\n", ret);

    ret = IsChipAlive(NULL);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("IsChipAlive failed %d\r\n", ret);
        return -1;
    }
    printf("IsChipAlive success ret %d\r\n", ret);

    // 打开摄像头
    ret = OpenCamera(0);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("OpenCamera 0 failed %d\r\n", ret);
        return -1;
    }

    ret = GetCameraProperty(0, CAMERA_PROP_SUPPORTED_RESOLUTION, supported_resolution);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("GetCameraProperty 0 failed %d\r\n", ret);
        return -1;
    }
    i = 0;
    do{
        printf("Camera0 supportted width = %d, height = %d\r\n", supported_resolution[i].width, supported_resolution[i].height);
        i++;
    }while(supported_resolution[i].width != -1);


    // 帧率设置
    para = 5;
    ret = SetCameraProperty(0, CAMERA_PROP_FPS, &para);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("SetCameraProperty 0 failed %d\r\n", ret);
        return -1;
    }


    // 分辨率设置
    resolution.height = 1080;
    resolution.width = 1920;
    ret = SetCameraProperty(0, CAMERA_PROP_RESOLUTION, &resolution);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("SetCameraProperty 0 failed %d\r\n", ret);
        return -1;
    }


    // 注册用户回调函数
    ret = CapCamera(0, Camera0UserFunc , NULL);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("CapCamera 0 failed %d\r\n", ret);
        return -1;
    }

    // 睡眠5秒模拟用户使用流程
    sleep(5);
    // 关闭摄像头
    ret = CloseCamera(0);
    if(LIBMEDIA_STATUS_OK != ret) {
        printf("CloseCamera 0 failed %d\r\n", ret);
        return -1;
    }
    printf("CloseCamera 0 success %d\r\n", ret);

    return 0;
}
