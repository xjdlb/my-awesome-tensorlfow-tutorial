// Targeted by JavaCPP version 1.5.6: DO NOT EDIT THIS FILE

package org.tensorflow.internal.c_api;

import java.nio.*;
import org.bytedeco.javacpp.*;
import org.bytedeco.javacpp.annotation.*;

import static org.tensorflow.internal.c_api.global.tensorflow.*;

@NoOffset @Properties(inherit = org.tensorflow.internal.c_api.presets.tensorflow.class)
public class TF_OperationDescription extends Pointer {
    static { Loader.load(); }
    /** Pointer cast constructor. Invokes {@link Pointer#Pointer(Pointer)}. */
    public TF_OperationDescription(Pointer p) { super(p); }


  public native @ByRef NodeBuilder node_builder(); public native TF_OperationDescription node_builder(NodeBuilder setter);
  public native TF_Graph graph(); public native TF_OperationDescription graph(TF_Graph setter);
  
}