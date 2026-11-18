/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
 *  
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 *  
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 *  
 * Created By: Travis Berthelot 
 *   
 */
// Generated Code Do Not Modify
// package javax.microedition.lcdui

//PlatformNullImageJavaLibrary
class PlatformImage : JObjectBase
{

    PlatformImage@ jinit_PlatformImage()
    {
        return this;
    }
    

    JObject@ getImage(JObject@ graphicsSurface2)
    {
        return NullImage::NULL_IMAGE;
    }
    

    int getSurfaceWidth(JObject@ graphicsSurface2, int width)
    {
        return width;
    }
    

    int getSurfaceHeight(JObject@ graphicsSurface2, int height)
    {
        return height;
    }
    

    int getWidth(Image@ image, int width)
    {
        return width;
    }
    

    int getHeight(Image@ image, int height)
    {
        return height;
    }
    

    Graphics@ getGraphics(JObject@ graphicsSurface, int width, int height, Image@ image)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    void drawImage(Image@ image, int x, int y, int anchor, Graphics@ g2, JObject@ g)
    {
    }
    

    void drawRegion(Image@ image, int x_src, int y_src, int width, int height, int transform, int x_dst, int y_dst, int anchor, Graphics@ g)
    {
    }
    

    void getRGB(int[]@ argb, int offset, int scanlength, int x, int y, int width, int height, Image@ image)
    {
    }
    

    void setRGB(int[]@ argb, int offset, int scanlength, int x, int y, int width, int height, Image@ image)
    {
    }
    

    int[]@ getData(Image@ image)
    {
        return NullUtil::getInstance().NULL_INT_ARRAY;
    }
}

