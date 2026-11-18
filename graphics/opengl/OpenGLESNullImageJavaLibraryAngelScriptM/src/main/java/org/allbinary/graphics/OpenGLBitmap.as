// Generated Code Do Not Modify
// package org.allbinary.graphics

class OpenGLBitmap : PlatformBitmapBase
{
    JObject@ bitmap;
    

    OpenGLBitmap@ jinit_OpenGLBitmap(JObject@ bitmap)
    {
        this.jinit_PlatformBitmapBase();
        @this.bitmap = bitmap;
        return this;
    }
    

    void getPixels(int[]@ pixels, int offset, int stride, int x, int y, int width, int height)
    {
    }
    

    void setPixels(int[]@ pixels, int offset, int stride, int x, int y, int width, int height)
    {
    }
    

    void recycle()
    {
    }
}

