/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

class NullGL10 : JObjectBase, GL10
{

    NullGL10@ jinit_NullGL10()
    {
        return this;
    }
    

    void glActiveTexture(int texture)
    {
        return;
    }
    

    void glAlphaFunc(int func, float ref)
    {
        return;
    }
    

    void glBindTexture(int target, int texture)
    {
        return;
    }
    

    void glBlendFunc(int sfactor, int dfactor)
    {
        return;
    }
    

    void glClear(int mask)
    {
        return;
    }
    

    void glClearColor(float red, float green, float blue, float alpha)
    {
        return;
    }
    

    void glClearDepthf(float depth)
    {
        return;
    }
    

    void glClearStencil(int s)
    {
        return;
    }
    

    void glClientActiveTexture(int texture)
    {
        return;
    }
    

    void glColor4f(float red, float green, float blue, float alpha)
    {
        return;
    }
    

    void glColorMask(bool red, bool green, bool blue, bool alpha)
    {
        return;
    }
    

    void glColorPointer(int size, int type, int stride, Buffer@ pointer)
    {
        return;
    }
    

    void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer@ data)
    {
        return;
    }
    

    void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer@ data)
    {
        return;
    }
    

    void glCopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border)
    {
        return;
    }
    

    void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    {
        return;
    }
    

    void glCullFace(int mode)
    {
        return;
    }
    

    void glDeleteTextures(int n, int[]@ textures, int offset)
    {
        return;
    }
    

    void glDeleteTextures(int n, IntBuffer@ textures)
    {
        return;
    }
    

    void glDepthFunc(int func)
    {
        return;
    }
    

    void glDepthMask(bool flag)
    {
        return;
    }
    

    void glDepthRangef(float zNear, float zFar)
    {
        return;
    }
    

    void glDisable(int cap)
    {
        return;
    }
    

    void glDisableClientState(int array_)
    {
        return;
    }
    

    void glDrawArrays(int mode, int first, int count)
    {
        return;
    }
    

    void glDrawElements(int mode, int count, int type, Buffer@ indices)
    {
        return;
    }
    

    void glEnable(int cap)
    {
        return;
    }
    

    void glEnableClientState(int array_)
    {
        return;
    }
    

    void glFinish()
    {
        return;
    }
    

    void glFlush()
    {
        return;
    }
    

    void glFogf(int pname, float param)
    {
        return;
    }
    

    void glFogfv(int pname, float[]@ params, int offset)
    {
        return;
    }
    

    void glFogfv(int pname, FloatBuffer@ params)
    {
        return;
    }
    

    void glFrontFace(int mode)
    {
        return;
    }
    

    void glFrustumf(float left, float right, float bottom, float top, float zNear, float zFar)
    {
        return;
    }
    

    void glGenTextures(int n, int[]@ textures, int offset)
    {
        return;
    }
    

    void glGenTextures(int n, IntBuffer@ textures)
    {
        return;
    }
    

    int glGetError()
    {
        return 0;
    }
    

    void glGetIntegerv(int pname, int[]@ params, int offset)
    {
        return;
    }
    

    void glGetIntegerv(int pname, IntBuffer@ params)
    {
        return;
    }
    

    string glGetString(int name)
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    void glHint(int target, int mode)
    {
        return;
    }
    

    void glLightModelf(int pname, float param)
    {
        return;
    }
    

    void glLightModelfv(int pname, float[]@ params, int offset)
    {
        return;
    }
    

    void glLightModelfv(int pname, FloatBuffer@ params)
    {
        return;
    }
    

    void glLightf(int light, int pname, float param)
    {
        return;
    }
    

    void glLightfv(int light, int pname, float[]@ params, int offset)
    {
        return;
    }
    

    void glLightfv(int light, int pname, FloatBuffer@ params)
    {
        return;
    }
    

    void glLineWidth(float width)
    {
        return;
    }
    

    void glLoadIdentity()
    {
        return;
    }
    

    void glLoadMatrixf(float[]@ m, int offset)
    {
        return;
    }
    

    void glLoadMatrixf(FloatBuffer@ m)
    {
        return;
    }
    

    void glLogicOp(int opcode)
    {
        return;
    }
    

    void glMaterialf(int face, int pname, float param)
    {
        return;
    }
    

    void glMaterialfv(int face, int pname, float[]@ params, int offset)
    {
        return;
    }
    

    void glMaterialfv(int face, int pname, FloatBuffer@ params)
    {
        return;
    }
    

    void glMatrixMode(int mode)
    {
        return;
    }
    

    void glMultMatrixf(float[]@ m, int offset)
    {
        return;
    }
    

    void glMultMatrixf(FloatBuffer@ m)
    {
        return;
    }
    

    void glMultiTexCoord4f(int target, float s, float t, float r, float q)
    {
        return;
    }
    

    void glNormal3f(float nx, float ny, float nz)
    {
        return;
    }
    

    void glNormalPointer(int type, int stride, Buffer@ pointer)
    {
        return;
    }
    

    void glOrthof(float left, float right, float bottom, float top, float zNear, float zFar)
    {
        return;
    }
    

    void glPixelStorei(int pname, int param)
    {
        return;
    }
    

    void glPointSize(float size)
    {
        return;
    }
    

    void glPolygonOffset(float factor, float units)
    {
        return;
    }
    

    void glPopMatrix()
    {
        return;
    }
    

    void glPushMatrix()
    {
        return;
    }
    

    void glReadPixels(int x, int y, int width, int height, int format, int type, Buffer@ pixels)
    {
        return;
    }
    

    void glRotatef(float angle, float x, float y, float z)
    {
        return;
    }
    

    void glRotatex(int angle, int x, int y, int z)
    {
        return;
    }
    

    void glSampleCoverage(float value, bool invert)
    {
        return;
    }
    

    void glScalef(float x, float y, float z)
    {
        return;
    }
    

    void glScalex(int x, int y, int z)
    {
        return;
    }
    

    void glScissor(int x, int y, int width, int height)
    {
        return;
    }
    

    void glShadeModel(int mode)
    {
        return;
    }
    

    void glStencilFunc(int func, int ref, int mask)
    {
        return;
    }
    

    void glStencilMask(int mask)
    {
        return;
    }
    

    void glStencilOp(int fail, int zfail, int zpass)
    {
        return;
    }
    

    void glTexCoordPointer(int size, int type, int stride, Buffer@ pointer)
    {
        return;
    }
    

    void glTexEnvf(int target, int pname, float param)
    {
        return;
    }
    

    void glTexEnvfv(int target, int pname, float[]@ params, int offset)
    {
        return;
    }
    

    void glTexEnvfv(int target, int pname, FloatBuffer@ params)
    {
        return;
    }
    

    void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, Buffer@ pixels)
    {
        return;
    }
    

    void glTexParameterf(int target, int pname, float param)
    {
        return;
    }
    

    void glTexParameteri(int target, int pname, int param)
    {
        return;
    }
    

    void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer@ pixels)
    {
        return;
    }
    

    void glTranslatef(float x, float y, float z)
    {
        return;
    }
    

    void glVertexPointer(int size, int type, int stride, Buffer@ pointer)
    {
        return;
    }
    

    void glViewport(int x, int y, int width, int height)
    {
        return;
    }
    

    void glBegin(int i)
    {
        return;
    }
    

    void glEnd()
    {
        return;
    }
    

    void glVertex3f(float f, float f2, float f3)
    {
        return;
    }
    

    void glPolygonMode(int i, int i1)
    {
        return;
    }
}

namespace NullGL10
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GL10 = NullGL10().jinit_NullGL10();
    }

    NullGL10@ jcell_NULL_GL10;
    NullGL10@ get_NULL_GL10() property { jclinit(); return jcell_NULL_GL10; }
    void set_NULL_GL10(NullGL10@ value) property { jclinit(); @jcell_NULL_GL10 = value; }
}

