// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

interface GL11Ext : JObject, GL
{
    void glTexParameterfv(int target, int pname, float[]@ param, int offset);
    void glCurrentPaletteMatrixOES(int matrixpaletteindex);
    void glDrawTexfOES(float x, float y, float z, float width, float height);
    void glDrawTexfvOES(float[]@ coords, int offset);
    void glDrawTexfvOES(FloatBuffer@ coords);
    void glDrawTexiOES(int x, int y, int z, int width, int height);
    void glDrawTexivOES(int[]@ coords, int offset);
    void glDrawTexivOES(IntBuffer@ coords);
    void glDrawTexsOES(int16 x, int16 y, int16 z, int16 width, int16 height);
    void glDrawTexsvOES(int16[]@ coords, int offset);
    void glDrawTexsvOES(ShortBuffer@ coords);
    void glDrawTexxOES(int x, int y, int z, int width, int height);
    void glDrawTexxvOES(int[]@ coords, int offset);
    void glDrawTexxvOES(IntBuffer@ coords);
    void glEnable(int cap);
    void glEnableClientState(int array_);
    void glLoadPaletteFromModelViewMatrixOES();
    void glMatrixIndexPointerOES(int size, int type, int stride, Buffer@ pointer);
    void glMatrixIndexPointerOES(int size, int type, int stride, int offset);
    void glWeightPointerOES(int size, int type, int stride, Buffer@ pointer);
    void glWeightPointerOES(int size, int type, int stride, int offset);
}

namespace GL11Ext
{
    const int GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742;
    const int GL_MATRIX_INDEX_ARRAY_OES = 34884;
    const int GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889;
    const int GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886;
    const int GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888;
    const int GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887;
    const int GL_MATRIX_PALETTE_OES = 34880;
    const int GL_MAX_PALETTE_MATRICES_OES = 34882;
    const int GL_MAX_VERTEX_UNITS_OES = 34468;
    const int GL_TEXTURE_CROP_RECT_OES = 35741;
    const int GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974;
    const int GL_WEIGHT_ARRAY_OES = 34477;
    const int GL_WEIGHT_ARRAY_POINTER_OES = 34476;
    const int GL_WEIGHT_ARRAY_SIZE_OES = 34475;
    const int GL_WEIGHT_ARRAY_STRIDE_OES = 34474;
    const int GL_WEIGHT_ARRAY_TYPE_OES = 34473;
}

