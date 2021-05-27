extern "C" {
#include "peripheral_api.h"
}
#include<fcntl.h>
#include<unistd.h>
#include<cstring>
#include<cstdio>

bool check_cam_ret(int ret) {
        if(ret==LIBMEDIA_STATUS_OK) {
                perror("Looks good!");
                return true;
        }
        else {
                perror("Bad.");
                return false;
        }
}

void activateCamera(int camId) {
	enum CameraProperties prop = CAMERA_PROP_CAP_MODE;
	enum CameraCapMode mode = CAMERA_CAP_ACTIVE;
	int ret;
	ret = SetCameraProperty(camId, prop, (void*)&mode);
	check_cam_ret(ret);
	if(ret) {
		printf("-------------\n");
	}
	return;
}

#define BUF_SIZE (1920*1080+1024)
char buf[BUF_SIZE];

int main() {
        MediaLibInit();
        int bufSize = BUF_SIZE;
        int ret;
        int cameraIds[2] = {0, 0};
        uint32_t cnt = 2;
        ret = QueryCameraIds(cameraIds, &cnt);
	if(check_cam_ret(ret)) {
		printf("There are %d camera(s) available\n", cnt);
		for(int i=0; i<2; ++i) {
			printf("Camera %d: %d\n", i, cameraIds[i]);
		}
	}
	ret = OpenCamera(cameraIds[0]);
	if(check_cam_ret(ret)) {
		printf("OPEN CAMERA\n");
	}

	activateCamera(cameraIds[0]);
    memset(buf, 0, sizeof(buf));
	ret = ReadFrameFromCamera(cameraIds[0], buf, &bufSize);
	if(check_cam_ret(ret)) {
		printf("I've fetched some data from camera!\n");
		printf("Let's have it written to a file:\n");
        int fd = open("image", O_WRONLY|O_CREAT, 644);
        if(fd<0) {
                perror("Could not open file");
        }
        write(fd, buf, bufSize);
	}


	ret = CloseCamera(cameraIds[0]);
	if(check_cam_ret) {
		printf("...And close it.\n");
	}

	
        return 0;
}
