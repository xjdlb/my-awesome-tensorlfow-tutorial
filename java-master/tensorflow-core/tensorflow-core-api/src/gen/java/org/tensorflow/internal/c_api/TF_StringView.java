// Targeted by JavaCPP version 1.5.6: DO NOT EDIT THIS FILE

package org.tensorflow.internal.c_api;

import java.nio.*;
import org.bytedeco.javacpp.*;
import org.bytedeco.javacpp.annotation.*;

import static org.tensorflow.internal.c_api.global.tensorflow.*;


// --------------------------------------------------------------------------
// Used to return strings across the C API. The caller does not take ownership
// of the underlying data pointer and is not responsible for freeing it.
@Properties(inherit = org.tensorflow.internal.c_api.presets.tensorflow.class)
public class TF_StringView extends Pointer {
    static { Loader.load(); }
    /** Default native constructor. */
    public TF_StringView() { super((Pointer)null); allocate(); }
    /** Native array allocator. Access with {@link Pointer#position(long)}. */
    public TF_StringView(long size) { super((Pointer)null); allocateArray(size); }
    /** Pointer cast constructor. Invokes {@link Pointer#Pointer(Pointer)}. */
    public TF_StringView(Pointer p) { super(p); }
    private native void allocate();
    private native void allocateArray(long size);
    @Override public TF_StringView position(long position) {
        return (TF_StringView)super.position(position);
    }
    @Override public TF_StringView getPointer(long i) {
        return new TF_StringView((Pointer)this).offsetAddress(i);
    }

  public native @Cast("const char*") BytePointer data(); public native TF_StringView data(BytePointer setter);
  public native @Cast("size_t") long len(); public native TF_StringView len(long setter);
}
