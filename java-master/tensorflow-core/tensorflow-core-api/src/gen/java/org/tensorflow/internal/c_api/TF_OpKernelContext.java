// Targeted by JavaCPP version 1.5.6: DO NOT EDIT THIS FILE

package org.tensorflow.internal.c_api;

import java.nio.*;
import org.bytedeco.javacpp.*;
import org.bytedeco.javacpp.annotation.*;

import static org.tensorflow.internal.c_api.global.tensorflow.*;

@Opaque @Properties(inherit = org.tensorflow.internal.c_api.presets.tensorflow.class)
public class TF_OpKernelContext extends Pointer {
    /** Empty constructor. Calls {@code super((Pointer)null)}. */
    public TF_OpKernelContext() { super((Pointer)null); }
    /** Pointer cast constructor. Invokes {@link Pointer#Pointer(Pointer)}. */
    public TF_OpKernelContext(Pointer p) { super(p); }
}