£
îÃ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8c
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
n
ConstConst*
_output_shapes

:*
dtype0*1
value(B&"                        
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
\
Const_2Const*
_output_shapes
:*
dtype0*!
valueB"            

NoOpNoOp
Î
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*
value~B| Bv
-
variable
	keras_api

signatures
A?
VARIABLE_VALUEVariable#variable/.ATTRIBUTES/VARIABLE_VALUE
 
 
;
add_aPlaceholder*
_output_shapes
:*
dtype0
;
add_bPlaceholder*
_output_shapes
:*
dtype0

PartitionedCallPartitionedCalladd_aadd_b*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_78
L
get_const_matrix_inputPlaceholder*
_output_shapes
:*
dtype0

PartitionedCall_1PartitionedCallget_const_matrix_inputConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_63
L
get_const_scalar_inputPlaceholder*
_output_shapes
:*
dtype0

PartitionedCall_2PartitionedCallget_const_scalar_inputConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_31
L
get_const_vector_inputPlaceholder*
_output_shapes
:*
dtype0

PartitionedCall_3PartitionedCallget_const_vector_inputConst_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_47
H
get_variable_dummyPlaceholder*
_output_shapes
:*
dtype0
¤
StatefulPartitionedCallStatefulPartitionedCallget_variable_dummyVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_94
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¹
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_139

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_152ÞI
Ø
>
 __inference_signature_wrapper_78
a
b
identity
PartitionedCallPartitionedCallab*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_add_702
PartitionedCall]
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

:::; 7

_output_shapes
:

_user_specified_namea:;7

_output_shapes
:

_user_specified_nameb
ö
?
__inference_get_vector_38	
input	
add_x
identityD
addAddV2add_xinput*
T0*
_output_shapes
:2
addL
IdentityIdentityadd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

:::? ;

_output_shapes
:

_user_specified_nameinput: 

_output_shapes
:
æ
H
 __inference_signature_wrapper_63	
input
unknown
identity
PartitionedCallPartitionedCallinputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_get_matrix_542
PartitionedCall]
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
:::? ;

_output_shapes
:

_user_specified_nameinput:$ 

_output_shapes

:
Æ
e
 __inference_signature_wrapper_94	
dummy
unknown
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCalldummyunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *$
fR
__inference_get_variable_852
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes

::22
StatefulPartitionedCallStatefulPartitionedCall:? ;

_output_shapes
:

_user_specified_namedummy
ô
0
__inference_add_70
a
b
identity<
addAddV2ab*
T0*
_output_shapes
:2
addL
IdentityIdentityadd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

:::; 7

_output_shapes
:

_user_specified_namea:;7

_output_shapes
:

_user_specified_nameb
æ
g
__inference_get_variable_85	
dummy
readvariableop_resource
identity¢ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes

::2 
ReadVariableOpReadVariableOp:? ;

_output_shapes
:

_user_specified_namedummy
í

__inference__traced_save_139
file_prefix'
#savev2_variable_read_readvariableop
savev2_const_3

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÃ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*V
valueMBKB#variable/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slicesâ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: 
Ö
H
 __inference_signature_wrapper_31	
input
unknown
identity
PartitionedCallPartitionedCallinputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_get_scalar_222
PartitionedCall]
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
:: :? ;

_output_shapes
:

_user_specified_nameinput:

_output_shapes
: 
æ

w
__inference__traced_restore_152
file_prefix
assignvariableop_variable

identity_2¢AssignVariableOpÉ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*V
valueMBKB#variable/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slicesµ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp9
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2IdentityIdentity_1:output:0^AssignVariableOp*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Þ
H
 __inference_signature_wrapper_47	
input
unknown
identity
PartitionedCallPartitionedCallinputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_get_vector_382
PartitionedCall]
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

:::? ;

_output_shapes
:

_user_specified_nameinput: 

_output_shapes
:
þ
?
__inference_get_matrix_54	
input	
add_x
identityD
addAddV2add_xinput*
T0*
_output_shapes
:2
addL
IdentityIdentityadd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
:::? ;

_output_shapes
:

_user_specified_nameinput:$ 

_output_shapes

:
ð
=
__inference_serve_101
request	
add_x
identityF
addAddV2add_xrequest*
T0*
_output_shapes
:2
addL
IdentityIdentityadd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
:: :A =

_output_shapes
:
!
_user_specified_name	request:

_output_shapes
: 
î
?
__inference_get_scalar_22	
input	
add_x
identityD
addAddV2add_xinput*
T0*
_output_shapes
:2
addL
IdentityIdentityadd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
:: :? ;

_output_shapes
:

_user_specified_nameinput:

_output_shapes
: "±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*v
addo

a
add_a:0

b
add_b:0%
output_0
PartitionedCall:0tensorflow/serving/predict*
get_const_matrixp
)
input 
get_const_matrix_input:0'
output_0
PartitionedCall_1:0tensorflow/serving/predict*
get_const_scalarp
)
input 
get_const_scalar_input:0'
output_0
PartitionedCall_2:0tensorflow/serving/predict*
get_const_vectorp
)
input 
get_const_vector_input:0'
output_0
PartitionedCall_3:0tensorflow/serving/predict*
get_variablep
%
dummy
get_variable_dummy:0+
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict:í
ý
variable
	keras_api

signatures
add

get_matrix

get_scalar
get_variable

get_vector
		serve"÷
_tf_keras_modelÝ{"class_name": "MyModel", "name": "my_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "MyModel"}}
: 2Variable
"
_generic_user_object
t

get_const_scalar
get_const_vector
get_const_matrix
add
get_variable"
signature_map
Ù2Ö
__inference_add_70¿
²
FullArgSpec
args
jself
ja
jb
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
a
	
b
Ñ2Î
__inference_get_matrix_54°
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢

input
Ñ2Î
__inference_get_scalar_22°
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢

input
×2Ô
__inference_get_variable_85´
²
FullArgSpec
args
jself
jdummy
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢

dummy
Ñ2Î
__inference_get_vector_38°
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢

input
Ï2Ì
__inference_serve_101²
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢

request
ÅBÂ
 __inference_signature_wrapper_31input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÅBÂ
 __inference_signature_wrapper_47input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÅBÂ
 __inference_signature_wrapper_63input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÂB¿
 __inference_signature_wrapper_78ab"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÅBÂ
 __inference_signature_wrapper_94dummy"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
	J
Const
J	
Const_1
J	
Const_2L
__inference_add_706)¢&
¢
	
a
	
b
ª "	L
__inference_get_matrix_54/¢
¢

input
ª "	L
__inference_get_scalar_22/¢
¢

input
ª "	L
__inference_get_variable_85-¢
¢

dummy
ª " L
__inference_get_vector_38/¢
¢

input
ª "	J
__inference_serve_1011!¢
¢

request
ª "	w
 __inference_signature_wrapper_31S(¢%
¢ 
ª

input
input"$ª!

output_0
output_0w
 __inference_signature_wrapper_47S(¢%
¢ 
ª

input
input"$ª!

output_0
output_0w
 __inference_signature_wrapper_63S(¢%
¢ 
ª

input
input"$ª!

output_0
output_0
 __inference_signature_wrapper_78[3¢0
¢ 
)ª&

a	
a

b	
b"$ª!

output_0
output_0u
 __inference_signature_wrapper_94Q(¢%
¢ 
ª

dummy
dummy""ª

output_0
output_0 