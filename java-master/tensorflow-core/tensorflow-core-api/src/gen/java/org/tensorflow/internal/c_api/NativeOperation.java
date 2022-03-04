// Targeted by JavaCPP version 1.5.6: DO NOT EDIT THIS FILE

package org.tensorflow.internal.c_api;

import java.nio.*;
import org.bytedeco.javacpp.*;
import org.bytedeco.javacpp.annotation.*;

import static org.tensorflow.internal.c_api.global.tensorflow.*;


/** \addtogroup core
 *  \{
 <p>
 *  Represents a node in the computation graph. */
@Name("tensorflow::Operation") @NoOffset @Properties(inherit = org.tensorflow.internal.c_api.presets.tensorflow.class)
public class NativeOperation extends Pointer {
    static { Loader.load(); }
    /** Pointer cast constructor. Invokes {@link Pointer#Pointer(Pointer)}. */
    public NativeOperation(Pointer p) { super(p); }
    /** Native array allocator. Access with {@link Pointer#position(long)}. */
    public NativeOperation(long size) { super((Pointer)null); allocateArray(size); }
    private native void allocateArray(long size);
    @Override public NativeOperation position(long position) {
        return (NativeOperation)super.position(position);
    }
    @Override public NativeOperation getPointer(long i) {
        return new NativeOperation((Pointer)this).offsetAddress(i);
    }

  public NativeOperation() { super((Pointer)null); allocate(); }
  private native void allocate();
  public NativeOperation(Node n) { super((Pointer)null); allocate(n); }
  private native void allocate(Node n);

  
  
  

  
  
  

  public native Node node();

  

  public native @Cast("bool") @Name("operator ==") boolean equals(@Const @ByRef NativeOperation other);
}
