#include <stdio.h>
#include "tga.h"

void main(){
    int width=32, height=32, *pWidth=&width, *pHeight=&height;
    PIXEL_RGB24 *pixelBuffer, **pBuffer=&pixelBuffer;

    tga_read("sample.tga", pWidth, pHeight, pBuffer);
    tga_write("sample-24bit.tga", 64, 64, pixelBuffer, 24);

}