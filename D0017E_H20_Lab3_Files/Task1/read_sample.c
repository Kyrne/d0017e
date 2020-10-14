#include <stdio.h>
#include "tga.h"

void main(){
    int width=32, height=32, *pWidth=&width, *pHeight=&height;
    PIXEL_RGB24 *pixelBuffer, **pBuffer=&pixelBuffer;

    tga_read("C:\\Users\\johnn\\Documents\\GitHub\\d0017e\\D0017E_H20_Lab3_Files\\Task1\\sample.tga", pWidth, pHeight, pBuffer);
    tga_write("C:\\Users\\johnn\\Documents\\GitHub\\d0017e\\D0017E_H20_Lab3_Files\\Task1\\sample-24bit.tga", 64, 64, pixelBuffer, 24);

}