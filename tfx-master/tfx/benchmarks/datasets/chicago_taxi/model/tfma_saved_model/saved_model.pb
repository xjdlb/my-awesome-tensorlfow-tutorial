Ĳ0
?H?H
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
?
AsString

input"T

output"
Ttype:
2		
"
	precisionint?????????"

scientificbool( "
shortestbool( "
widthint?????????"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
?
BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
?
EncodeProto	
sizes
values2Tinput_types	
bytes"
field_nameslist(string)"
message_typestring"'
descriptor_sourcestring
local://"
Tinput_types
list(type)(0
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(?
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 ?
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	?
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z
?


LogicalNot
x

y

#
	LogicalOr
x

y

z
?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
2
LookupTableSizeV2
table_handle
size	?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
9
Maximum
x"T
y"T
z"T"
Ttype:
	2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
n
NotEqual
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(?
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
?
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*2.1.02unknown8??-

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
?
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
?
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*?
value?B?BcompanyBdropoff_census_tractBdropoff_community_areaBdropoff_latitudeBdropoff_longitudeBfareBpayment_typeBpickup_census_tractBpickup_community_areaBpickup_latitudeBpickup_longitudeBtipsB
trip_milesBtrip_secondsBtrip_start_dayBtrip_start_hourBtrip_start_monthBtrip_start_timestamp
i
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keys*
Tdense
 *?
_output_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::::::::::::::*
dense_shapes
 *

num_sparse*
ragged_split_types
 *
ragged_value_types
 *&
sparse_types
2									
?

asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*?
valueB} Bw/tmp/tmpacpcplz0/pipeline/Transform/transform_graph/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary
?
asset_path_1Const"/device:CPU:**
_output_shapes
: *
dtype0*?
value?B By/tmp/tmpacpcplz0/pipeline/Transform/transform_graph/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary
A
IdentityIdentity
asset_path*
T0*
_output_shapes
: 
E

Identity_1Identityasset_path_1*
T0*
_output_shapes
: 
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?lG@
V
transform/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *??GC
V
transform/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *?VMA
V
transform/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *?9E
V
transform/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *V?>D
V
transform/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *?<?I
S
transform/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R

?
transform/Const_7Const*
_output_shapes
: *
dtype0*?
value?B? B~/tmp/tmpacpcplz0/pipeline/Transform/transform_graph/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
T
transform/Const_8Const*
_output_shapes
: *
dtype0	*
value
B	 R?
?
transform/Const_9Const*
_output_shapes
: *
dtype0*?
value?B? B?/tmp/tmpacpcplz0/pipeline/Transform/transform_graph/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary

transform/Const_10Const*
_output_shapes
:	*
dtype0*9
value0B.	"$?)'BI^'B*?'B#?'BN?'B??'B1?'Bհ'B??'B
?
transform/Const_11Const*
_output_shapes
:*
dtype0*A
value8B6",?v?j??Tc?¯\?W?R?µM??	I???C?@???=??
?
transform/Const_12Const*
_output_shapes
:
*
dtype0*=
value4B2
"(z)'B?V'B??'B#?'BN?'B??'Bߙ'Bհ'B\?'B?	(B
?
transform/Const_13Const*
_output_shapes
:*
dtype0*E
value<B:"0O|???m?½d??8^?? X?©R?µM??	I???C?@???=???1??
?
0transform/transform/inputs/company/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
(transform/transform/inputs/company/shapePlaceholderWithDefault0transform/transform/inputs/company/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
)transform/transform/inputs/company/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
*transform/transform/inputs/company/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
7transform/transform/inputs/F_payment_type/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
/transform/transform/inputs/F_payment_type/shapePlaceholderWithDefault7transform/transform/inputs/F_payment_type/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
0transform/transform/inputs/F_payment_type/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
1transform/transform/inputs/F_payment_type/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
?transform/transform/inputs/F_dropoff_census_tract/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
7transform/transform/inputs/F_dropoff_census_tract/shapePlaceholderWithDefault?transform/transform/inputs/F_dropoff_census_tract/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
8transform/transform/inputs/F_dropoff_census_tract/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
9transform/transform/inputs/F_dropoff_census_tract/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
Atransform/transform/inputs/F_dropoff_community_area/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
9transform/transform/inputs/F_dropoff_community_area/shapePlaceholderWithDefaultAtransform/transform/inputs/F_dropoff_community_area/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
:transform/transform/inputs/F_dropoff_community_area/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
;transform/transform/inputs/F_dropoff_community_area/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
;transform/transform/inputs/F_dropoff_latitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
3transform/transform/inputs/F_dropoff_latitude/shapePlaceholderWithDefault;transform/transform/inputs/F_dropoff_latitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
4transform/transform/inputs/F_dropoff_latitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
5transform/transform/inputs/F_dropoff_latitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
<transform/transform/inputs/F_dropoff_longitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
4transform/transform/inputs/F_dropoff_longitude/shapePlaceholderWithDefault<transform/transform/inputs/F_dropoff_longitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
5transform/transform/inputs/F_dropoff_longitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
6transform/transform/inputs/F_dropoff_longitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/transform/inputs/fare/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
%transform/transform/inputs/fare/shapePlaceholderWithDefault-transform/transform/inputs/fare/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
&transform/transform/inputs/fare/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
'transform/transform/inputs/fare/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
>transform/transform/inputs/F_pickup_census_tract/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
6transform/transform/inputs/F_pickup_census_tract/shapePlaceholderWithDefault>transform/transform/inputs/F_pickup_census_tract/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
7transform/transform/inputs/F_pickup_census_tract/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
8transform/transform/inputs/F_pickup_census_tract/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
@transform/transform/inputs/F_pickup_community_area/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
8transform/transform/inputs/F_pickup_community_area/shapePlaceholderWithDefault@transform/transform/inputs/F_pickup_community_area/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
9transform/transform/inputs/F_pickup_community_area/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
:transform/transform/inputs/F_pickup_community_area/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
:transform/transform/inputs/F_pickup_latitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
2transform/transform/inputs/F_pickup_latitude/shapePlaceholderWithDefault:transform/transform/inputs/F_pickup_latitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
3transform/transform/inputs/F_pickup_latitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
4transform/transform/inputs/F_pickup_latitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
;transform/transform/inputs/F_pickup_longitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
3transform/transform/inputs/F_pickup_longitude/shapePlaceholderWithDefault;transform/transform/inputs/F_pickup_longitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
4transform/transform/inputs/F_pickup_longitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
5transform/transform/inputs/F_pickup_longitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/transform/inputs/tips/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
%transform/transform/inputs/tips/shapePlaceholderWithDefault-transform/transform/inputs/tips/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
&transform/transform/inputs/tips/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
'transform/transform/inputs/tips/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
5transform/transform/inputs/F_trip_miles/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
-transform/transform/inputs/F_trip_miles/shapePlaceholderWithDefault5transform/transform/inputs/F_trip_miles/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
.transform/transform/inputs/F_trip_miles/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
/transform/transform/inputs/F_trip_miles/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
7transform/transform/inputs/F_trip_seconds/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
/transform/transform/inputs/F_trip_seconds/shapePlaceholderWithDefault7transform/transform/inputs/F_trip_seconds/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
0transform/transform/inputs/F_trip_seconds/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
1transform/transform/inputs/F_trip_seconds/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
9transform/transform/inputs/F_trip_start_day/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
1transform/transform/inputs/F_trip_start_day/shapePlaceholderWithDefault9transform/transform/inputs/F_trip_start_day/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
2transform/transform/inputs/F_trip_start_day/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
3transform/transform/inputs/F_trip_start_day/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
:transform/transform/inputs/F_trip_start_hour/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
2transform/transform/inputs/F_trip_start_hour/shapePlaceholderWithDefault:transform/transform/inputs/F_trip_start_hour/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
3transform/transform/inputs/F_trip_start_hour/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
4transform/transform/inputs/F_trip_start_hour/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
;transform/transform/inputs/F_trip_start_month/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
3transform/transform/inputs/F_trip_start_month/shapePlaceholderWithDefault;transform/transform/inputs/F_trip_start_month/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
4transform/transform/inputs/F_trip_start_month/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
5transform/transform/inputs/F_trip_start_month/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
?transform/transform/inputs/F_trip_start_timestamp/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
7transform/transform/inputs/F_trip_start_timestamp/shapePlaceholderWithDefault?transform/transform/inputs/F_trip_start_timestamp/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
8transform/transform/inputs/F_trip_start_timestamp/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
9transform/transform/inputs/F_trip_start_timestamp/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
6transform/transform/inputs/inputs/company/indices_copyIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:?????????
?
5transform/transform/inputs/inputs/company/values_copyIdentityParseExample/ParseExampleV2:18*
T0*#
_output_shapes
:?????????
?
4transform/transform/inputs/inputs/company/shape_copyIdentityParseExample/ParseExampleV2:36*
T0	*
_output_shapes
:
?
=transform/transform/inputs/inputs/F_payment_type/indices_copyIdentityParseExample/ParseExampleV2:6*
T0	*'
_output_shapes
:?????????
?
<transform/transform/inputs/inputs/F_payment_type/values_copyIdentityParseExample/ParseExampleV2:24*
T0*#
_output_shapes
:?????????
?
;transform/transform/inputs/inputs/F_payment_type/shape_copyIdentityParseExample/ParseExampleV2:42*
T0	*
_output_shapes
:
?
Etransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copyIdentityParseExample/ParseExampleV2:1*
T0	*'
_output_shapes
:?????????
?
Dtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copyIdentityParseExample/ParseExampleV2:19*
T0	*#
_output_shapes
:?????????
?
Ctransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copyIdentityParseExample/ParseExampleV2:37*
T0	*
_output_shapes
:
?
Gtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copyIdentityParseExample/ParseExampleV2:2*
T0	*'
_output_shapes
:?????????
?
Ftransform/transform/inputs/inputs/F_dropoff_community_area/values_copyIdentityParseExample/ParseExampleV2:20*
T0	*#
_output_shapes
:?????????
?
Etransform/transform/inputs/inputs/F_dropoff_community_area/shape_copyIdentityParseExample/ParseExampleV2:38*
T0	*
_output_shapes
:
?
Atransform/transform/inputs/inputs/F_dropoff_latitude/indices_copyIdentityParseExample/ParseExampleV2:3*
T0	*'
_output_shapes
:?????????
?
@transform/transform/inputs/inputs/F_dropoff_latitude/values_copyIdentityParseExample/ParseExampleV2:21*
T0*#
_output_shapes
:?????????
?
?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copyIdentityParseExample/ParseExampleV2:39*
T0	*
_output_shapes
:
?
Btransform/transform/inputs/inputs/F_dropoff_longitude/indices_copyIdentityParseExample/ParseExampleV2:4*
T0	*'
_output_shapes
:?????????
?
Atransform/transform/inputs/inputs/F_dropoff_longitude/values_copyIdentityParseExample/ParseExampleV2:22*
T0*#
_output_shapes
:?????????
?
@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copyIdentityParseExample/ParseExampleV2:40*
T0	*
_output_shapes
:
?
3transform/transform/inputs/inputs/fare/indices_copyIdentityParseExample/ParseExampleV2:5*
T0	*'
_output_shapes
:?????????
?
2transform/transform/inputs/inputs/fare/values_copyIdentityParseExample/ParseExampleV2:23*
T0*#
_output_shapes
:?????????
?
1transform/transform/inputs/inputs/fare/shape_copyIdentityParseExample/ParseExampleV2:41*
T0	*
_output_shapes
:
?
Dtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copyIdentityParseExample/ParseExampleV2:7*
T0	*'
_output_shapes
:?????????
?
Ctransform/transform/inputs/inputs/F_pickup_census_tract/values_copyIdentityParseExample/ParseExampleV2:25*
T0	*#
_output_shapes
:?????????
?
Btransform/transform/inputs/inputs/F_pickup_census_tract/shape_copyIdentityParseExample/ParseExampleV2:43*
T0	*
_output_shapes
:
?
Ftransform/transform/inputs/inputs/F_pickup_community_area/indices_copyIdentityParseExample/ParseExampleV2:8*
T0	*'
_output_shapes
:?????????
?
Etransform/transform/inputs/inputs/F_pickup_community_area/values_copyIdentityParseExample/ParseExampleV2:26*
T0	*#
_output_shapes
:?????????
?
Dtransform/transform/inputs/inputs/F_pickup_community_area/shape_copyIdentityParseExample/ParseExampleV2:44*
T0	*
_output_shapes
:
?
@transform/transform/inputs/inputs/F_pickup_latitude/indices_copyIdentityParseExample/ParseExampleV2:9*
T0	*'
_output_shapes
:?????????
?
?transform/transform/inputs/inputs/F_pickup_latitude/values_copyIdentityParseExample/ParseExampleV2:27*
T0*#
_output_shapes
:?????????
?
>transform/transform/inputs/inputs/F_pickup_latitude/shape_copyIdentityParseExample/ParseExampleV2:45*
T0	*
_output_shapes
:
?
Atransform/transform/inputs/inputs/F_pickup_longitude/indices_copyIdentityParseExample/ParseExampleV2:10*
T0	*'
_output_shapes
:?????????
?
@transform/transform/inputs/inputs/F_pickup_longitude/values_copyIdentityParseExample/ParseExampleV2:28*
T0*#
_output_shapes
:?????????
?
?transform/transform/inputs/inputs/F_pickup_longitude/shape_copyIdentityParseExample/ParseExampleV2:46*
T0	*
_output_shapes
:
?
3transform/transform/inputs/inputs/tips/indices_copyIdentityParseExample/ParseExampleV2:11*
T0	*'
_output_shapes
:?????????
?
2transform/transform/inputs/inputs/tips/values_copyIdentityParseExample/ParseExampleV2:29*
T0*#
_output_shapes
:?????????
?
1transform/transform/inputs/inputs/tips/shape_copyIdentityParseExample/ParseExampleV2:47*
T0	*
_output_shapes
:
?
;transform/transform/inputs/inputs/F_trip_miles/indices_copyIdentityParseExample/ParseExampleV2:12*
T0	*'
_output_shapes
:?????????
?
:transform/transform/inputs/inputs/F_trip_miles/values_copyIdentityParseExample/ParseExampleV2:30*
T0*#
_output_shapes
:?????????
?
9transform/transform/inputs/inputs/F_trip_miles/shape_copyIdentityParseExample/ParseExampleV2:48*
T0	*
_output_shapes
:
?
=transform/transform/inputs/inputs/F_trip_seconds/indices_copyIdentityParseExample/ParseExampleV2:13*
T0	*'
_output_shapes
:?????????
?
<transform/transform/inputs/inputs/F_trip_seconds/values_copyIdentityParseExample/ParseExampleV2:31*
T0	*#
_output_shapes
:?????????
?
;transform/transform/inputs/inputs/F_trip_seconds/shape_copyIdentityParseExample/ParseExampleV2:49*
T0	*
_output_shapes
:
?
?transform/transform/inputs/inputs/F_trip_start_day/indices_copyIdentityParseExample/ParseExampleV2:14*
T0	*'
_output_shapes
:?????????
?
>transform/transform/inputs/inputs/F_trip_start_day/values_copyIdentityParseExample/ParseExampleV2:32*
T0	*#
_output_shapes
:?????????
?
=transform/transform/inputs/inputs/F_trip_start_day/shape_copyIdentityParseExample/ParseExampleV2:50*
T0	*
_output_shapes
:
?
@transform/transform/inputs/inputs/F_trip_start_hour/indices_copyIdentityParseExample/ParseExampleV2:15*
T0	*'
_output_shapes
:?????????
?
?transform/transform/inputs/inputs/F_trip_start_hour/values_copyIdentityParseExample/ParseExampleV2:33*
T0	*#
_output_shapes
:?????????
?
>transform/transform/inputs/inputs/F_trip_start_hour/shape_copyIdentityParseExample/ParseExampleV2:51*
T0	*
_output_shapes
:
?
Atransform/transform/inputs/inputs/F_trip_start_month/indices_copyIdentityParseExample/ParseExampleV2:16*
T0	*'
_output_shapes
:?????????
?
@transform/transform/inputs/inputs/F_trip_start_month/values_copyIdentityParseExample/ParseExampleV2:34*
T0	*#
_output_shapes
:?????????
?
?transform/transform/inputs/inputs/F_trip_start_month/shape_copyIdentityParseExample/ParseExampleV2:52*
T0	*
_output_shapes
:
?
Etransform/transform/inputs/inputs/F_trip_start_timestamp/indices_copyIdentityParseExample/ParseExampleV2:17*
T0	*'
_output_shapes
:?????????
?
Dtransform/transform/inputs/inputs/F_trip_start_timestamp/values_copyIdentityParseExample/ParseExampleV2:35*
T0	*#
_output_shapes
:?????????
?
Ctransform/transform/inputs/inputs/F_trip_start_timestamp/shape_copyIdentityParseExample/ParseExampleV2:53*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)transform/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)transform/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
!transform/transform/strided_sliceStridedSlice9transform/transform/inputs/inputs/F_trip_miles/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
p
.transform/transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
,transform/transform/SparseTensor/dense_shapePack!transform/transform/strided_slice.transform/transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
!transform/transform/SparseToDenseSparseToDense;transform/transform/inputs/inputs/F_trip_miles/indices_copy,transform/transform/SparseTensor/dense_shape:transform/transform/inputs/inputs/F_trip_miles/values_copy/transform/transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
T0*#
_output_shapes
:?????????*
squeeze_dims

|
6transform/transform/scale_to_z_score/mean_and_var/SizeSizetransform/transform/Squeeze*
T0*
_output_shapes
: 
?
6transform/transform/scale_to_z_score/mean_and_var/CastCast6transform/transform/scale_to_z_score/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
7transform/transform/scale_to_z_score/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
5transform/transform/scale_to_z_score/mean_and_var/SumSumtransform/transform/Squeeze7transform/transform/scale_to_z_score/mean_and_var/Const*
T0*
_output_shapes
: 
?
9transform/transform/scale_to_z_score/mean_and_var/truedivRealDiv5transform/transform/scale_to_z_score/mean_and_var/Sum6transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
?
5transform/transform/scale_to_z_score/mean_and_var/subSubtransform/transform/Squeeze9transform/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
8transform/transform/scale_to_z_score/mean_and_var/SquareSquare5transform/transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:?????????
?
9transform/transform/scale_to_z_score/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/transform/scale_to_z_score/mean_and_var/Sum_1Sum8transform/transform/scale_to_z_score/mean_and_var/Square9transform/transform/scale_to_z_score/mean_and_var/Const_1*
T0*
_output_shapes
: 
?
;transform/transform/scale_to_z_score/mean_and_var/truediv_1RealDiv7transform/transform/scale_to_z_score/mean_and_var/Sum_16transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
|
7transform/transform/scale_to_z_score/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
~
=transform/transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
?transform/transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?
(transform/transform/scale_to_z_score/subSubtransform/transform/Squeezetransform/Const*
T0*#
_output_shapes
:?????????
e
)transform/transform/scale_to_z_score/SqrtSqrttransform/Const_1*
T0*
_output_shapes
: 
t
/transform/transform/scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
-transform/transform/scale_to_z_score/NotEqualNotEqual)transform/transform/scale_to_z_score/Sqrt/transform/transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: 
?
/transform/transform/scale_to_z_score/zeros_like	ZerosLike(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:?????????
?
)transform/transform/scale_to_z_score/CastCast-transform/transform/scale_to_z_score/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
?
(transform/transform/scale_to_z_score/addAddV2/transform/transform/scale_to_z_score/zeros_like)transform/transform/scale_to_z_score/Cast*
T0*#
_output_shapes
:?????????
?
+transform/transform/scale_to_z_score/Cast_1Cast(transform/transform/scale_to_z_score/add*

DstT0
*

SrcT0*#
_output_shapes
:?????????
?
,transform/transform/scale_to_z_score/truedivRealDiv(transform/transform/scale_to_z_score/sub)transform/transform/scale_to_z_score/Sqrt*
T0*#
_output_shapes
:?????????
?
-transform/transform/scale_to_z_score/SelectV2SelectV2+transform/transform/scale_to_z_score/Cast_1,transform/transform/scale_to_z_score/truediv(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:?????????
s
)transform/transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_1StridedSlice1transform/transform/inputs/inputs/fare/shape_copy)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_1/dense_shapePack#transform/transform/strided_slice_10transform/transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/transform/SparseToDense_1SparseToDense3transform/transform/inputs/inputs/fare/indices_copy.transform/transform/SparseTensor_1/dense_shape2transform/transform/inputs/inputs/fare/values_copy1transform/transform/SparseToDense_1/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
8transform/transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/transform/Squeeze_1*
T0*
_output_shapes
: 
?
8transform/transform/scale_to_z_score_1/mean_and_var/CastCast8transform/transform/scale_to_z_score_1/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
9transform/transform/scale_to_z_score_1/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/transform/scale_to_z_score_1/mean_and_var/SumSumtransform/transform/Squeeze_19transform/transform/scale_to_z_score_1/mean_and_var/Const*
T0*
_output_shapes
: 
?
;transform/transform/scale_to_z_score_1/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_1/mean_and_var/Sum8transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
?
7transform/transform/scale_to_z_score_1/mean_and_var/subSubtransform/transform/Squeeze_1;transform/transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
:transform/transform/scale_to_z_score_1/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:?????????
?
;transform/transform/scale_to_z_score_1/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
9transform/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_1/mean_and_var/Square;transform/transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*
_output_shapes
: 
?
=transform/transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_1/mean_and_var/Sum_18transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
~
9transform/transform/scale_to_z_score_1/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
?transform/transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
Atransform/transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?
*transform/transform/scale_to_z_score_1/subSubtransform/transform/Squeeze_1transform/Const_2*
T0*#
_output_shapes
:?????????
g
+transform/transform/scale_to_z_score_1/SqrtSqrttransform/Const_3*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
/transform/transform/scale_to_z_score_1/NotEqualNotEqual+transform/transform/scale_to_z_score_1/Sqrt1transform/transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: 
?
1transform/transform/scale_to_z_score_1/zeros_like	ZerosLike*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:?????????
?
+transform/transform/scale_to_z_score_1/CastCast/transform/transform/scale_to_z_score_1/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
?
*transform/transform/scale_to_z_score_1/addAddV21transform/transform/scale_to_z_score_1/zeros_like+transform/transform/scale_to_z_score_1/Cast*
T0*#
_output_shapes
:?????????
?
-transform/transform/scale_to_z_score_1/Cast_1Cast*transform/transform/scale_to_z_score_1/add*

DstT0
*

SrcT0*#
_output_shapes
:?????????
?
.transform/transform/scale_to_z_score_1/truedivRealDiv*transform/transform/scale_to_z_score_1/sub+transform/transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:?????????
?
/transform/transform/scale_to_z_score_1/SelectV2SelectV2-transform/transform/scale_to_z_score_1/Cast_1.transform/transform/scale_to_z_score_1/truediv*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:?????????
s
)transform/transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_2StridedSlice;transform/transform/inputs/inputs/F_trip_seconds/shape_copy)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_2/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_2/dense_shapePack#transform/transform/strided_slice_20transform/transform/SparseTensor_2/dense_shape/1*
N*
T0	*
_output_shapes
:
s
1transform/transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
#transform/transform/SparseToDense_2SparseToDense=transform/transform/inputs/inputs/F_trip_seconds/indices_copy.transform/transform/SparseTensor_2/dense_shape<transform/transform/inputs/inputs/F_trip_seconds/values_copy1transform/transform/SparseToDense_2/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_2Squeeze#transform/transform/SparseToDense_2*
T0	*#
_output_shapes
:?????????*
squeeze_dims

?
8transform/transform/scale_to_z_score_2/mean_and_var/CastCasttransform/transform/Squeeze_2*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
8transform/transform/scale_to_z_score_2/mean_and_var/SizeSize8transform/transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: 
?
:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1Cast8transform/transform/scale_to_z_score_2/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
9transform/transform/scale_to_z_score_2/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
7transform/transform/scale_to_z_score_2/mean_and_var/SumSum8transform/transform/scale_to_z_score_2/mean_and_var/Cast9transform/transform/scale_to_z_score_2/mean_and_var/Const*
T0*
_output_shapes
: 
?
;transform/transform/scale_to_z_score_2/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_2/mean_and_var/Sum:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
?
7transform/transform/scale_to_z_score_2/mean_and_var/subSub8transform/transform/scale_to_z_score_2/mean_and_var/Cast;transform/transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
:transform/transform/scale_to_z_score_2/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:?????????
?
;transform/transform/scale_to_z_score_2/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_2/mean_and_var/Square;transform/transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*
_output_shapes
: 
?
=transform/transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
~
9transform/transform/scale_to_z_score_2/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
?transform/transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
Atransform/transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?
+transform/transform/scale_to_z_score_2/CastCasttransform/transform/Squeeze_2*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
*transform/transform/scale_to_z_score_2/subSub+transform/transform/scale_to_z_score_2/Casttransform/Const_4*
T0*#
_output_shapes
:?????????
g
+transform/transform/scale_to_z_score_2/SqrtSqrttransform/Const_5*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
/transform/transform/scale_to_z_score_2/NotEqualNotEqual+transform/transform/scale_to_z_score_2/Sqrt1transform/transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: 
?
1transform/transform/scale_to_z_score_2/zeros_like	ZerosLike*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:?????????
?
-transform/transform/scale_to_z_score_2/Cast_1Cast/transform/transform/scale_to_z_score_2/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
?
*transform/transform/scale_to_z_score_2/addAddV21transform/transform/scale_to_z_score_2/zeros_like-transform/transform/scale_to_z_score_2/Cast_1*
T0*#
_output_shapes
:?????????
?
-transform/transform/scale_to_z_score_2/Cast_2Cast*transform/transform/scale_to_z_score_2/add*

DstT0
*

SrcT0*#
_output_shapes
:?????????
?
.transform/transform/scale_to_z_score_2/truedivRealDiv*transform/transform/scale_to_z_score_2/sub+transform/transform/scale_to_z_score_2/Sqrt*
T0*#
_output_shapes
:?????????
?
/transform/transform/scale_to_z_score_2/SelectV2SelectV2-transform/transform/scale_to_z_score_2/Cast_2.transform/transform/scale_to_z_score_2/truediv*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:?????????
s
)transform/transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_3StridedSlice;transform/transform/inputs/inputs/F_payment_type/shape_copy)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_3/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_3/dense_shapePack#transform/transform/strided_slice_30transform/transform/SparseTensor_3/dense_shape/1*
N*
T0	*
_output_shapes
:
r
1transform/transform/SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
?
#transform/transform/SparseToDense_3SparseToDense=transform/transform/inputs/inputs/F_payment_type/indices_copy.transform/transform/SparseTensor_3/dense_shape<transform/transform/inputs/inputs/F_payment_type/values_copy1transform/transform/SparseToDense_3/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_3Squeeze#transform/transform/SparseToDense_3*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/Squeeze_3Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:?????????
?
}transform/transform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
Jtransform/transform/compute_and_apply_vocabulary/vocabulary/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ftransform/transform/compute_and_apply_vocabulary/vocabulary/ExpandDims
ExpandDimstransform/Const_6Jtransform/transform/compute_and_apply_vocabulary/vocabulary/ExpandDims/dim*
T0	*
_output_shapes
:
?
Atransform/transform/compute_and_apply_vocabulary/vocabulary/ConstConst*
_output_shapes
:*
dtype0*B
value9B7B-vocab_compute_and_apply_vocabulary_vocabulary
?
Atransform/transform/compute_and_apply_vocabulary/vocabulary/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Otransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/transform/compute_and_apply_vocabulary/vocabulary/strided_sliceStridedSliceAtransform/transform/compute_and_apply_vocabulary/vocabulary/ShapeOtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stackQtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_1Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Mtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shapePackItransform/transform/compute_and_apply_vocabulary/vocabulary/strided_sliceMtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape/1*
N*
T0*
_output_shapes
:
?
Etransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1ReshapeAtransform/transform/compute_and_apply_vocabulary/vocabulary/ConstKtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape*
T0*
_output_shapes

:
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1StridedSliceCtransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_1Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2StridedSliceCtransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_2Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Etransform/transform/compute_and_apply_vocabulary/vocabulary/Fill/dimsPackKtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_1*
N*
T0*
_output_shapes
:
?
@transform/transform/compute_and_apply_vocabulary/vocabulary/FillFillEtransform/transform/compute_and_apply_vocabulary/vocabulary/Fill/dimsKtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_2*
T0*
_output_shapes
:
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3StridedSliceCtransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_3Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Mtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shapePackKtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_3Mtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape/1*
N*
T0*
_output_shapes
:
?
Etransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2ReshapeFtransform/transform/compute_and_apply_vocabulary/vocabulary/ExpandDimsKtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape*
T0	*
_output_shapes

:
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"      
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4StridedSliceCtransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_4Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_5Const*
_output_shapes
:*
dtype0*
valueB"      
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5StridedSliceCtransform/transform/compute_and_apply_vocabulary/vocabulary/Shape_5Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Gtransform/transform/compute_and_apply_vocabulary/vocabulary/Fill_1/dimsPackKtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_4*
N*
T0*
_output_shapes
:
?
Btransform/transform/compute_and_apply_vocabulary/vocabulary/Fill_1FillGtransform/transform/compute_and_apply_vocabulary/vocabulary/Fill_1/dimsKtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_5*
T0*
_output_shapes
:
?
Atransform/transform/compute_and_apply_vocabulary/vocabulary/stackPack@transform/transform/compute_and_apply_vocabulary/vocabulary/FillBtransform/transform/compute_and_apply_vocabulary/vocabulary/Fill_1*
N*
T0*
_output_shapes

:*

axis
?
Gtransform/transform/compute_and_apply_vocabulary/vocabulary/EncodeProtoEncodeProtoAtransform/transform/compute_and_apply_vocabulary/vocabulary/stackEtransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_1Etransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape_2*
Tinput_types
2	*
_output_shapes
:*?
descriptor_source??bytes://
?
5third_party/py/tensorflow_transform/annotations.proto/third_party.py.tensorflow_transform.annotations"&
BucketBoundaries

boundaries ("K
VocabularyMetadata
	file_name (	"
unfiltered_vocabulary_size (*8
field_names)
'	file_nameunfiltered_vocabulary_size*T
message_typeDBthird_party.py.tensorflow_transform.annotations.VocabularyMetadata
?
Qtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6StridedSliceGtransform/transform/compute_and_apply_vocabulary/vocabulary/EncodeProtoQtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stackStransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_1Stransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
_transform/transform/compute_and_apply_vocabulary/vocabulary/tft_schema_override_global_sentinelConst*
_output_shapes
: *
dtype0*
valueB Bunused
?
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/Const_1Const*
_output_shapes
: *
dtype0*g
value^B\ BVtype.googleapis.com/third_party.py.tensorflow_transform.annotations.VocabularyMetadata
?
Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	
?
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableIdentity*
	key_index?????????*
value_index?????????
?
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
?
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

?
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
?
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_3*#
_output_shapes
:?????????*
num_buckets

?
rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/transform/Squeeze_3Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
?
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:?????????
?
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*#
_output_shapes
:?????????
?
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:?????????
?
Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_4StridedSlice4transform/transform/inputs/inputs/company/shape_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_4/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_4/dense_shapePack#transform/transform/strided_slice_40transform/transform/SparseTensor_4/dense_shape/1*
N*
T0	*
_output_shapes
:
r
1transform/transform/SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
?
#transform/transform/SparseToDense_4SparseToDense6transform/transform/inputs/inputs/company/indices_copy.transform/transform/SparseTensor_4/dense_shape5transform/transform/inputs/inputs/company/values_copy1transform/transform/SparseToDense_4/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_4Squeeze#transform/transform/SparseToDense_4*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/transform/Squeeze_4Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*#
_output_shapes
:?????????
?
?transform/transform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
Ltransform/transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
Htransform/transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims
ExpandDimstransform/Const_8Ltransform/transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims/dim*
T0	*
_output_shapes
:
?
Ctransform/transform/compute_and_apply_vocabulary_1/vocabulary/ConstConst*
_output_shapes
:*
dtype0*D
value;B9B/vocab_compute_and_apply_vocabulary_1_vocabulary
?
Ctransform/transform/compute_and_apply_vocabulary_1/vocabulary/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Qtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_sliceStridedSliceCtransform/transform/compute_and_apply_vocabulary_1/vocabulary/ShapeQtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stackStransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_1Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Otransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shapePackKtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_sliceOtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape/1*
N*
T0*
_output_shapes
:
?
Gtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1ReshapeCtransform/transform/compute_and_apply_vocabulary_1/vocabulary/ConstMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape*
T0*
_output_shapes

:
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1StridedSliceEtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_1Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2StridedSliceEtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_2Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Gtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill/dimsPackMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1*
N*
T0*
_output_shapes
:
?
Btransform/transform/compute_and_apply_vocabulary_1/vocabulary/FillFillGtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill/dimsMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2*
T0*
_output_shapes
:
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3StridedSliceEtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_3Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Otransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shapePackMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3Otransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape/1*
N*
T0*
_output_shapes
:
?
Gtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2ReshapeHtransform/transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDimsMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape*
T0	*
_output_shapes

:
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"      
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4StridedSliceEtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_4Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_5Const*
_output_shapes
:*
dtype0*
valueB"      
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5StridedSliceEtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Shape_5Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1/dimsPackMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4*
N*
T0*
_output_shapes
:
?
Dtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1FillItransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1/dimsMtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5*
T0*
_output_shapes
:
?
Ctransform/transform/compute_and_apply_vocabulary_1/vocabulary/stackPackBtransform/transform/compute_and_apply_vocabulary_1/vocabulary/FillDtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1*
N*
T0*
_output_shapes

:*

axis
?
Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/EncodeProtoEncodeProtoCtransform/transform/compute_and_apply_vocabulary_1/vocabulary/stackGtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1Gtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2*
Tinput_types
2	*
_output_shapes
:*?
descriptor_source??bytes://
?
5third_party/py/tensorflow_transform/annotations.proto/third_party.py.tensorflow_transform.annotations"&
BucketBoundaries

boundaries ("K
VocabularyMetadata
	file_name (	"
unfiltered_vocabulary_size (*8
field_names)
'	file_nameunfiltered_vocabulary_size*T
message_typeDBthird_party.py.tensorflow_transform.annotations.VocabularyMetadata
?
Stransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6StridedSliceItransform/transform/compute_and_apply_vocabulary_1/vocabulary/EncodeProtoStransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stackUtransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_1Utransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
atransform/transform/compute_and_apply_vocabulary_1/vocabulary/tft_schema_override_global_sentinelConst*
_output_shapes
: *
dtype0*
valueB Bunused
?
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/Const_1Const*
_output_shapes
: *
dtype0*g
value^B\ BVtype.googleapis.com/third_party.py.tensorflow_transform.annotations.VocabularyMetadata
?
Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	
?
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table
Identity_1*
	key_index?????????*
value_index?????????
?
ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
?
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

?
Rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
?
\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_4*#
_output_shapes
:?????????*
num_buckets

?
ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/transform/Squeeze_4Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
?
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAdd\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketrtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:?????????
?
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*#
_output_shapes
:?????????
?
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:?????????
?
Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubRtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_5StridedSlice>transform/transform/inputs/inputs/F_pickup_latitude/shape_copy)transform/transform/strided_slice_5/stack+transform/transform/strided_slice_5/stack_1+transform/transform/strided_slice_5/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_5/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_5/dense_shapePack#transform/transform/strided_slice_50transform/transform/SparseTensor_5/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/transform/SparseToDense_5SparseToDense@transform/transform/inputs/inputs/F_pickup_latitude/indices_copy.transform/transform/SparseTensor_5/dense_shape?transform/transform/inputs/inputs/F_pickup_latitude/values_copy1transform/transform/SparseToDense_5/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_5Squeeze#transform/transform/SparseToDense_5*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
|
1transform/transform/bucketize/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
p
0transform/transform/bucketize/quantiles/sort/NegNegtransform/Const_10*
T0*
_output_shapes
:	
?
2transform/transform/bucketize/quantiles/sort/ShapeShape0transform/transform/bucketize/quantiles/sort/Neg*
T0*
_output_shapes
:
?
@transform/transform/bucketize/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
:transform/transform/bucketize/quantiles/sort/strided_sliceStridedSlice2transform/transform/bucketize/quantiles/sort/Shape@transform/transform/bucketize/quantiles/sort/strided_slice/stackBtransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/bucketize/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
3transform/transform/bucketize/quantiles/sort/TopKV2TopKV20transform/transform/bucketize/quantiles/sort/Neg:transform/transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	
?
2transform/transform/bucketize/quantiles/sort/Neg_1Neg3transform/transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDims2transform/transform/bucketize/quantiles/sort/Neg_16transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	
~
3transform/transform/bucketize/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
2transform/transform/bucketize/quantiles/sort_1/NegNeg2transform/transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	
?
4transform/transform/bucketize/quantiles/sort_1/ShapeShape2transform/transform/bucketize/quantiles/sort_1/Neg*
T0*
_output_shapes
:
?
Btransform/transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
<transform/transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice4transform/transform/bucketize/quantiles/sort_1/ShapeBtransform/transform/bucketize/quantiles/sort_1/strided_slice/stackDtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
5transform/transform/bucketize/quantiles/sort_1/TopKV2TopKV22transform/transform/bucketize/quantiles/sort_1/Neg<transform/transform/bucketize/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	
?
4transform/transform/bucketize/quantiles/sort_1/Neg_1Neg5transform/transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
p
.transform/transform/bucketize/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
/transform/transform/bucketize/assert_rank/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
`
Xtransform/transform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
Q
Itransform/transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
?
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
htransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
btransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapehtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ytransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastbtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
?
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
?
ctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:	
?
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:?????????
?
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
?
ftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:
?
dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
?
`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:

?
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:?????????
?
\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*	
num
?
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:?????????
?
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubYtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
s
1transform/transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
1transform/transform/bucketize/apply_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
9transform/transform/bucketize/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
3transform/transform/bucketize/apply_buckets/ReshapeReshape4transform/transform/bucketize/quantiles/sort_1/Neg_19transform/transform/bucketize/apply_buckets/Reshape/shape*
T0*
_output_shapes
:	
|
:transform/transform/bucketize/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
6transform/transform/bucketize/apply_buckets/ExpandDims
ExpandDims3transform/transform/bucketize/apply_buckets/Reshape:transform/transform/bucketize/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:	
?
3transform/transform/bucketize/apply_buckets/Shape_1Shape6transform/transform/bucketize/apply_buckets/ExpandDims*
T0*
_output_shapes
:
?
Atransform/transform/bucketize/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/transform/bucketize/apply_buckets/strided_slice_1StridedSlice3transform/transform/bucketize/apply_buckets/Shape_1Atransform/transform/bucketize/apply_buckets/strided_slice_1/stackCtransform/transform/bucketize/apply_buckets/strided_slice_1/stack_1Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
?transform/transform/bucketize/apply_buckets/EncodeProto/sizes/0Pack;transform/transform/bucketize/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
?
=transform/transform/bucketize/apply_buckets/EncodeProto/sizesPack?transform/transform/bucketize/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
?
7transform/transform/bucketize/apply_buckets/EncodeProtoEncodeProto=transform/transform/bucketize/apply_buckets/EncodeProto/sizes6transform/transform/bucketize/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
Atransform/transform/bucketize/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/transform/bucketize/apply_buckets/strided_slice_2StridedSlice7transform/transform/bucketize/apply_buckets/EncodeProtoAtransform/transform/bucketize/apply_buckets/strided_slice_2/stackCtransform/transform/bucketize/apply_buckets/strided_slice_2/stack_1Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
3transform/transform/bucketize/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_6StridedSlice?transform/transform/inputs/inputs/F_pickup_longitude/shape_copy)transform/transform/strided_slice_6/stack+transform/transform/strided_slice_6/stack_1+transform/transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_6/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_6/dense_shapePack#transform/transform/strided_slice_60transform/transform/SparseTensor_6/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/transform/SparseToDense_6SparseToDenseAtransform/transform/inputs/inputs/F_pickup_longitude/indices_copy.transform/transform/SparseTensor_6/dense_shape@transform/transform/inputs/inputs/F_pickup_longitude/values_copy1transform/transform/SparseToDense_6/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_6Squeeze#transform/transform/SparseToDense_6*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
~
3transform/transform/bucketize_1/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
r
2transform/transform/bucketize_1/quantiles/sort/NegNegtransform/Const_11*
T0*
_output_shapes
:
?
4transform/transform/bucketize_1/quantiles/sort/ShapeShape2transform/transform/bucketize_1/quantiles/sort/Neg*
T0*
_output_shapes
:
?
Btransform/transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
<transform/transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_1/quantiles/sort/ShapeBtransform/transform/bucketize_1/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_1/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
5transform/transform/bucketize_1/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_1/quantiles/sort/Neg<transform/transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
::
?
4transform/transform/bucketize_1/quantiles/sort/Neg_1Neg5transform/transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:
z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_1/quantiles/sort/Neg_18transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
?
5transform/transform/bucketize_1/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
4transform/transform/bucketize_1/quantiles/sort_1/NegNeg4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:
?
6transform/transform/bucketize_1/quantiles/sort_1/ShapeShape4transform/transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:
?
Dtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
>transform/transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_1/quantiles/sort_1/ShapeDtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_1/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
7transform/transform/bucketize_1/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_1/quantiles/sort_1/Neg>transform/transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::
?
6transform/transform/bucketize_1/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
r
0transform/transform/bucketize_1/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
1transform/transform/bucketize_1/assert_rank/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
?
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
jtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
dtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
?
etransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
?
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_6*
T0*#
_output_shapes
:?????????
?
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
?
htransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:
?
ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
?
btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:
?
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_6*
T0*#
_output_shapes
:?????????
?
^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*	
num
?
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:?????????
?
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
3transform/transform/bucketize_1/apply_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
;transform/transform/bucketize_1/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
5transform/transform/bucketize_1/apply_buckets/ReshapeReshape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1;transform/transform/bucketize_1/apply_buckets/Reshape/shape*
T0*
_output_shapes
:
~
<transform/transform/bucketize_1/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
8transform/transform/bucketize_1/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_1/apply_buckets/Reshape<transform/transform/bucketize_1/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:
?
5transform/transform/bucketize_1/apply_buckets/Shape_1Shape8transform/transform/bucketize_1/apply_buckets/ExpandDims*
T0*
_output_shapes
:
?
Ctransform/transform/bucketize_1/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_1/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_1/apply_buckets/Shape_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Atransform/transform/bucketize_1/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_1/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
?
?transform/transform/bucketize_1/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_1/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
?
9transform/transform/bucketize_1/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_1/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_1/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
Ctransform/transform/bucketize_1/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_1/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_1/apply_buckets/EncodeProtoCtransform/transform/bucketize_1/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
5transform/transform/bucketize_1/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_7StridedSlice?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copy)transform/transform/strided_slice_7/stack+transform/transform/strided_slice_7/stack_1+transform/transform/strided_slice_7/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_7/dense_shapePack#transform/transform/strided_slice_70transform/transform/SparseTensor_7/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/transform/SparseToDense_7SparseToDenseAtransform/transform/inputs/inputs/F_dropoff_latitude/indices_copy.transform/transform/SparseTensor_7/dense_shape@transform/transform/inputs/inputs/F_dropoff_latitude/values_copy1transform/transform/SparseToDense_7/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_7Squeeze#transform/transform/SparseToDense_7*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
~
3transform/transform/bucketize_2/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
r
2transform/transform/bucketize_2/quantiles/sort/NegNegtransform/Const_12*
T0*
_output_shapes
:

?
4transform/transform/bucketize_2/quantiles/sort/ShapeShape2transform/transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:
?
Btransform/transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
<transform/transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_2/quantiles/sort/ShapeBtransform/transform/bucketize_2/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_2/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
5transform/transform/bucketize_2/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_2/quantiles/sort/Neg<transform/transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:

?
4transform/transform/bucketize_2/quantiles/sort/Neg_1Neg5transform/transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:

z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_2/quantiles/sort/Neg_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

?
5transform/transform/bucketize_2/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
4transform/transform/bucketize_2/quantiles/sort_1/NegNeg4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:

?
6transform/transform/bucketize_2/quantiles/sort_1/ShapeShape4transform/transform/bucketize_2/quantiles/sort_1/Neg*
T0*
_output_shapes
:
?
Dtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
>transform/transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_2/quantiles/sort_1/ShapeDtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_2/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
7transform/transform/bucketize_2/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_2/quantiles/sort_1/Neg>transform/transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:

?
6transform/transform/bucketize_2/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

r
0transform/transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
1transform/transform/bucketize_2/assert_rank/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
?
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
jtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
dtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

?
etransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:

?
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_7*
T0*#
_output_shapes
:?????????
?
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
?
htransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:
?
ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
?
btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:
?
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_7*
T0*#
_output_shapes
:?????????
?
^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*	
num
?
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:?????????
?
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
3transform/transform/bucketize_2/apply_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
;transform/transform/bucketize_2/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
5transform/transform/bucketize_2/apply_buckets/ReshapeReshape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1;transform/transform/bucketize_2/apply_buckets/Reshape/shape*
T0*
_output_shapes
:

~
<transform/transform/bucketize_2/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
8transform/transform/bucketize_2/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_2/apply_buckets/Reshape<transform/transform/bucketize_2/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:

?
5transform/transform/bucketize_2/apply_buckets/Shape_1Shape8transform/transform/bucketize_2/apply_buckets/ExpandDims*
T0*
_output_shapes
:
?
Ctransform/transform/bucketize_2/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_2/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_2/apply_buckets/Shape_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Atransform/transform/bucketize_2/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_2/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
?
?transform/transform/bucketize_2/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_2/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
?
9transform/transform/bucketize_2/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_2/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_2/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
Ctransform/transform/bucketize_2/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_2/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_2/apply_buckets/EncodeProtoCtransform/transform/bucketize_2/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
5transform/transform/bucketize_2/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_8StridedSlice@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copy)transform/transform/strided_slice_8/stack+transform/transform/strided_slice_8/stack_1+transform/transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_8/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_8/dense_shapePack#transform/transform/strided_slice_80transform/transform/SparseTensor_8/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/transform/SparseToDense_8SparseToDenseBtransform/transform/inputs/inputs/F_dropoff_longitude/indices_copy.transform/transform/SparseTensor_8/dense_shapeAtransform/transform/inputs/inputs/F_dropoff_longitude/values_copy1transform/transform/SparseToDense_8/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_8Squeeze#transform/transform/SparseToDense_8*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
~
3transform/transform/bucketize_3/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
r
2transform/transform/bucketize_3/quantiles/sort/NegNegtransform/Const_13*
T0*
_output_shapes
:
?
4transform/transform/bucketize_3/quantiles/sort/ShapeShape2transform/transform/bucketize_3/quantiles/sort/Neg*
T0*
_output_shapes
:
?
Btransform/transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
<transform/transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_3/quantiles/sort/ShapeBtransform/transform/bucketize_3/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_3/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
5transform/transform/bucketize_3/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_3/quantiles/sort/Neg<transform/transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
::
?
4transform/transform/bucketize_3/quantiles/sort/Neg_1Neg5transform/transform/bucketize_3/quantiles/sort/TopKV2*
T0*
_output_shapes
:
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_3/quantiles/sort/Neg_18transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
?
5transform/transform/bucketize_3/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
4transform/transform/bucketize_3/quantiles/sort_1/NegNeg4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:
?
6transform/transform/bucketize_3/quantiles/sort_1/ShapeShape4transform/transform/bucketize_3/quantiles/sort_1/Neg*
T0*
_output_shapes
:
?
Dtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
>transform/transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_3/quantiles/sort_1/ShapeDtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_3/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
7transform/transform/bucketize_3/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_3/quantiles/sort_1/Neg>transform/transform/bucketize_3/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::
?
6transform/transform/bucketize_3/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
r
0transform/transform/bucketize_3/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
1transform/transform/bucketize_3/assert_rank/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
?
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
jtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
dtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
?
etransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
?
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_8*
T0*#
_output_shapes
:?????????
?
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
?
htransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:
?
ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
?
btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:
?
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_8*
T0*#
_output_shapes
:?????????
?
^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*	
num
?
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:?????????
?
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
3transform/transform/bucketize_3/apply_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
?
Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
;transform/transform/bucketize_3/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
5transform/transform/bucketize_3/apply_buckets/ReshapeReshape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1;transform/transform/bucketize_3/apply_buckets/Reshape/shape*
T0*
_output_shapes
:
~
<transform/transform/bucketize_3/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
8transform/transform/bucketize_3/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_3/apply_buckets/Reshape<transform/transform/bucketize_3/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:
?
5transform/transform/bucketize_3/apply_buckets/Shape_1Shape8transform/transform/bucketize_3/apply_buckets/ExpandDims*
T0*
_output_shapes
:
?
Ctransform/transform/bucketize_3/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_3/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_3/apply_buckets/Shape_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Atransform/transform/bucketize_3/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_3/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
?
?transform/transform/bucketize_3/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_3/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
?
9transform/transform/bucketize_3/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_3/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_3/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
Ctransform/transform/bucketize_3/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
=transform/transform/bucketize_3/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_3/apply_buckets/EncodeProtoCtransform/transform/bucketize_3/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
5transform/transform/bucketize_3/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
#transform/transform/strided_slice_9StridedSlice>transform/transform/inputs/inputs/F_trip_start_hour/shape_copy)transform/transform/strided_slice_9/stack+transform/transform/strided_slice_9/stack_1+transform/transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_9/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.transform/transform/SparseTensor_9/dense_shapePack#transform/transform/strided_slice_90transform/transform/SparseTensor_9/dense_shape/1*
N*
T0	*
_output_shapes
:
s
1transform/transform/SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
#transform/transform/SparseToDense_9SparseToDense@transform/transform/inputs/inputs/F_trip_start_hour/indices_copy.transform/transform/SparseTensor_9/dense_shape?transform/transform/inputs/inputs/F_trip_start_hour/values_copy1transform/transform/SparseToDense_9/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_9Squeeze#transform/transform/SparseToDense_9*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_10StridedSlice=transform/transform/inputs/inputs/F_trip_start_day/shape_copy*transform/transform/strided_slice_10/stack,transform/transform/strided_slice_10/stack_1,transform/transform/strided_slice_10/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_10/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_10/dense_shapePack$transform/transform/strided_slice_101transform/transform/SparseTensor_10/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_10SparseToDense?transform/transform/inputs/inputs/F_trip_start_day/indices_copy/transform/transform/SparseTensor_10/dense_shape>transform/transform/inputs/inputs/F_trip_start_day/values_copy2transform/transform/SparseToDense_10/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_10Squeeze$transform/transform/SparseToDense_10*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_11StridedSlice?transform/transform/inputs/inputs/F_trip_start_month/shape_copy*transform/transform/strided_slice_11/stack,transform/transform/strided_slice_11/stack_1,transform/transform/strided_slice_11/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_11/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_11/dense_shapePack$transform/transform/strided_slice_111transform/transform/SparseTensor_11/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_11SparseToDenseAtransform/transform/inputs/inputs/F_trip_start_month/indices_copy/transform/transform/SparseTensor_11/dense_shape@transform/transform/inputs/inputs/F_trip_start_month/values_copy2transform/transform/SparseToDense_11/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_11Squeeze$transform/transform/SparseToDense_11*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_12StridedSliceBtransform/transform/inputs/inputs/F_pickup_census_tract/shape_copy*transform/transform/strided_slice_12/stack,transform/transform/strided_slice_12/stack_1,transform/transform/strided_slice_12/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_12/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_12/dense_shapePack$transform/transform/strided_slice_121transform/transform/SparseTensor_12/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_12SparseToDenseDtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copy/transform/transform/SparseTensor_12/dense_shapeCtransform/transform/inputs/inputs/F_pickup_census_tract/values_copy2transform/transform/SparseToDense_12/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_12Squeeze$transform/transform/SparseToDense_12*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_13StridedSliceCtransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copy*transform/transform/strided_slice_13/stack,transform/transform/strided_slice_13/stack_1,transform/transform/strided_slice_13/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_13/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_13/dense_shapePack$transform/transform/strided_slice_131transform/transform/SparseTensor_13/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_13SparseToDenseEtransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copy/transform/transform/SparseTensor_13/dense_shapeDtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copy2transform/transform/SparseToDense_13/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_13Squeeze$transform/transform/SparseToDense_13*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_14StridedSliceDtransform/transform/inputs/inputs/F_pickup_community_area/shape_copy*transform/transform/strided_slice_14/stack,transform/transform/strided_slice_14/stack_1,transform/transform/strided_slice_14/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_14/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_14/dense_shapePack$transform/transform/strided_slice_141transform/transform/SparseTensor_14/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_14SparseToDenseFtransform/transform/inputs/inputs/F_pickup_community_area/indices_copy/transform/transform/SparseTensor_14/dense_shapeEtransform/transform/inputs/inputs/F_pickup_community_area/values_copy2transform/transform/SparseToDense_14/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_14Squeeze$transform/transform/SparseToDense_14*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_15StridedSliceEtransform/transform/inputs/inputs/F_dropoff_community_area/shape_copy*transform/transform/strided_slice_15/stack,transform/transform/strided_slice_15/stack_1,transform/transform/strided_slice_15/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_15/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_15/dense_shapePack$transform/transform/strided_slice_151transform/transform/SparseTensor_15/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
$transform/transform/SparseToDense_15SparseToDenseGtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copy/transform/transform/SparseTensor_15/dense_shapeFtransform/transform/inputs/inputs/F_dropoff_community_area/values_copy2transform/transform/SparseToDense_15/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_15Squeeze$transform/transform/SparseToDense_15*
T0	*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_16StridedSlice1transform/transform/inputs/inputs/fare/shape_copy*transform/transform/strided_slice_16/stack,transform/transform/strided_slice_16/stack_1,transform/transform/strided_slice_16/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_16/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_16/dense_shapePack$transform/transform/strided_slice_161transform/transform/SparseTensor_16/dense_shape/1*
N*
T0	*
_output_shapes
:
w
2transform/transform/SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
$transform/transform/SparseToDense_16SparseToDense3transform/transform/inputs/inputs/fare/indices_copy/transform/transform/SparseTensor_16/dense_shape2transform/transform/inputs/inputs/fare/values_copy2transform/transform/SparseToDense_16/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_16Squeeze$transform/transform/SparseToDense_16*
T0*#
_output_shapes
:?????????*
squeeze_dims

t
*transform/transform/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
$transform/transform/strided_slice_17StridedSlice1transform/transform/inputs/inputs/tips/shape_copy*transform/transform/strided_slice_17/stack,transform/transform/strided_slice_17/stack_1,transform/transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_17/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/transform/transform/SparseTensor_17/dense_shapePack$transform/transform/strided_slice_171transform/transform/SparseTensor_17/dense_shape/1*
N*
T0	*
_output_shapes
:
w
2transform/transform/SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
$transform/transform/SparseToDense_17SparseToDense3transform/transform/inputs/inputs/tips/indices_copy/transform/transform/SparseTensor_17/dense_shape2transform/transform/inputs/inputs/tips/values_copy2transform/transform/SparseToDense_17/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????
?
transform/transform/Squeeze_17Squeeze$transform/transform/SparseToDense_17*
T0*#
_output_shapes
:?????????*
squeeze_dims

p
transform/transform/IsNanIsNantransform/transform/Squeeze_16*
T0*#
_output_shapes
:?????????
y
transform/transform/zeros_like	ZerosLiketransform/transform/Squeeze_16*
T0*#
_output_shapes
:?????????
}
transform/transform/CastCasttransform/transform/zeros_like*

DstT0	*

SrcT0*#
_output_shapes
:?????????
^
transform/transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>
?
transform/transform/MulMultransform/transform/Squeeze_16transform/transform/Const*
T0*#
_output_shapes
:?????????
?
transform/transform/GreaterGreatertransform/transform/Squeeze_17transform/transform/Mul*
T0*#
_output_shapes
:?????????
|
transform/transform/Cast_1Casttransform/transform/Greater*

DstT0	*

SrcT0
*#
_output_shapes
:?????????
?
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*
T0	*#
_output_shapes
:?????????
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
C
SizeSizeinput_example_tensor*
T0*
_output_shapes
: 
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
S
rangeRangerange/startSizerange/delta*#
_output_shapes
:?????????
P
ConstConst*
_output_shapes
: *
dtype0*
valueB B
0.22.0.dev
e

Identity_2IdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:?????????
d

Identity_3IdentityParseExample/ParseExampleV2:18*
T0*#
_output_shapes
:?????????
[

Identity_4IdentityParseExample/ParseExampleV2:36*
T0	*
_output_shapes
:
g

Identity_5IdentityParseExample/ParseExampleV2:1*
T0	*'
_output_shapes
:?????????
d

Identity_6IdentityParseExample/ParseExampleV2:19*
T0	*#
_output_shapes
:?????????
[

Identity_7IdentityParseExample/ParseExampleV2:37*
T0	*
_output_shapes
:
g

Identity_8IdentityParseExample/ParseExampleV2:2*
T0	*'
_output_shapes
:?????????
d

Identity_9IdentityParseExample/ParseExampleV2:20*
T0	*#
_output_shapes
:?????????
\
Identity_10IdentityParseExample/ParseExampleV2:38*
T0	*
_output_shapes
:
h
Identity_11IdentityParseExample/ParseExampleV2:3*
T0	*'
_output_shapes
:?????????
e
Identity_12IdentityParseExample/ParseExampleV2:21*
T0*#
_output_shapes
:?????????
\
Identity_13IdentityParseExample/ParseExampleV2:39*
T0	*
_output_shapes
:
h
Identity_14IdentityParseExample/ParseExampleV2:4*
T0	*'
_output_shapes
:?????????
e
Identity_15IdentityParseExample/ParseExampleV2:22*
T0*#
_output_shapes
:?????????
\
Identity_16IdentityParseExample/ParseExampleV2:40*
T0	*
_output_shapes
:
h
Identity_17IdentityParseExample/ParseExampleV2:5*
T0	*'
_output_shapes
:?????????
e
Identity_18IdentityParseExample/ParseExampleV2:23*
T0*#
_output_shapes
:?????????
\
Identity_19IdentityParseExample/ParseExampleV2:41*
T0	*
_output_shapes
:
h
Identity_20IdentityParseExample/ParseExampleV2:6*
T0	*'
_output_shapes
:?????????
e
Identity_21IdentityParseExample/ParseExampleV2:24*
T0*#
_output_shapes
:?????????
\
Identity_22IdentityParseExample/ParseExampleV2:42*
T0	*
_output_shapes
:
h
Identity_23IdentityParseExample/ParseExampleV2:7*
T0	*'
_output_shapes
:?????????
e
Identity_24IdentityParseExample/ParseExampleV2:25*
T0	*#
_output_shapes
:?????????
\
Identity_25IdentityParseExample/ParseExampleV2:43*
T0	*
_output_shapes
:
h
Identity_26IdentityParseExample/ParseExampleV2:8*
T0	*'
_output_shapes
:?????????
e
Identity_27IdentityParseExample/ParseExampleV2:26*
T0	*#
_output_shapes
:?????????
\
Identity_28IdentityParseExample/ParseExampleV2:44*
T0	*
_output_shapes
:
h
Identity_29IdentityParseExample/ParseExampleV2:9*
T0	*'
_output_shapes
:?????????
e
Identity_30IdentityParseExample/ParseExampleV2:27*
T0*#
_output_shapes
:?????????
\
Identity_31IdentityParseExample/ParseExampleV2:45*
T0	*
_output_shapes
:
i
Identity_32IdentityParseExample/ParseExampleV2:10*
T0	*'
_output_shapes
:?????????
e
Identity_33IdentityParseExample/ParseExampleV2:28*
T0*#
_output_shapes
:?????????
\
Identity_34IdentityParseExample/ParseExampleV2:46*
T0	*
_output_shapes
:
i
Identity_35IdentityParseExample/ParseExampleV2:11*
T0	*'
_output_shapes
:?????????
e
Identity_36IdentityParseExample/ParseExampleV2:29*
T0*#
_output_shapes
:?????????
\
Identity_37IdentityParseExample/ParseExampleV2:47*
T0	*
_output_shapes
:
i
Identity_38IdentityParseExample/ParseExampleV2:12*
T0	*'
_output_shapes
:?????????
e
Identity_39IdentityParseExample/ParseExampleV2:30*
T0*#
_output_shapes
:?????????
\
Identity_40IdentityParseExample/ParseExampleV2:48*
T0	*
_output_shapes
:
i
Identity_41IdentityParseExample/ParseExampleV2:13*
T0	*'
_output_shapes
:?????????
e
Identity_42IdentityParseExample/ParseExampleV2:31*
T0	*#
_output_shapes
:?????????
\
Identity_43IdentityParseExample/ParseExampleV2:49*
T0	*
_output_shapes
:
i
Identity_44IdentityParseExample/ParseExampleV2:14*
T0	*'
_output_shapes
:?????????
e
Identity_45IdentityParseExample/ParseExampleV2:32*
T0	*#
_output_shapes
:?????????
\
Identity_46IdentityParseExample/ParseExampleV2:50*
T0	*
_output_shapes
:
i
Identity_47IdentityParseExample/ParseExampleV2:15*
T0	*'
_output_shapes
:?????????
e
Identity_48IdentityParseExample/ParseExampleV2:33*
T0	*#
_output_shapes
:?????????
\
Identity_49IdentityParseExample/ParseExampleV2:51*
T0	*
_output_shapes
:
i
Identity_50IdentityParseExample/ParseExampleV2:16*
T0	*'
_output_shapes
:?????????
e
Identity_51IdentityParseExample/ParseExampleV2:34*
T0	*#
_output_shapes
:?????????
\
Identity_52IdentityParseExample/ParseExampleV2:52*
T0	*
_output_shapes
:
i
Identity_53IdentityParseExample/ParseExampleV2:17*
T0	*'
_output_shapes
:?????????
e
Identity_54IdentityParseExample/ParseExampleV2:35*
T0	*#
_output_shapes
:?????????
\
Identity_55IdentityParseExample/ParseExampleV2:53*
T0	*
_output_shapes
:
e
Identity_56Identitytransform/transform/Squeeze_14*
T0	*#
_output_shapes
:?????????
?
Identity_57IdentityWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
T0	*#
_output_shapes
:?????????
?
Identity_58IdentityXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:?????????
?
Identity_59IdentityZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:?????????
e
Identity_60Identitytransform/transform/Squeeze_10*
T0	*#
_output_shapes
:?????????
e
Identity_61Identitytransform/transform/Squeeze_11*
T0	*#
_output_shapes
:?????????
v
Identity_62Identity/transform/transform/scale_to_z_score_1/SelectV2*
T0*#
_output_shapes
:?????????
?
Identity_63IdentityZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:?????????
e
Identity_64Identitytransform/transform/Squeeze_12*
T0	*#
_output_shapes
:?????????
?
Identity_65IdentityYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2*
T0	*#
_output_shapes
:?????????
v
Identity_66Identity/transform/transform/scale_to_z_score_2/SelectV2*
T0*#
_output_shapes
:?????????
t
Identity_67Identity-transform/transform/scale_to_z_score/SelectV2*
T0*#
_output_shapes
:?????????
e
Identity_68Identitytransform/transform/Squeeze_13*
T0	*#
_output_shapes
:?????????
e
Identity_69Identitytransform/transform/Squeeze_15*
T0	*#
_output_shapes
:?????????
d
Identity_70Identitytransform/transform/Squeeze_9*
T0	*#
_output_shapes
:?????????
a
Identity_71Identitytransform/transform/Select*
T0	*#
_output_shapes
:?????????
?
Identity_72IdentityZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:?????????
a
Identity_73Identitytransform/transform/Select*
T0	*#
_output_shapes
:?????????
?
Cdnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims
ExpandDimsIdentity_62Cdnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeShape?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDims*
T0*
_output_shapes
:
?
Hdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Bdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeHdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackJdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ddnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceDdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeReshape?dnn/input_from_feature_columns/input_layer/fare_xf_1/ExpandDimsBdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Idnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ednn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims
ExpandDimsIdentity_67Idnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDims*
T0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeNdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Jdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Bdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Kdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Gdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims
ExpandDimsIdentity_66Kdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapeShapeGdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDims*
T0*
_output_shapes
:
?
Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapePdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackRdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ldnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceLdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Ddnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ReshapeReshapeGdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ExpandDimsJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape*
T0*'
_output_shapes
:?????????
?
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
1dnn/input_from_feature_columns/input_layer/concatConcatV2<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeBdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeDdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*
T0*'
_output_shapes
:?????????
?
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"   d   
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?%w?
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?%w>
?
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d
?
3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d
?
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape
:d*)
shared_namednn/hiddenlayer_0/kernel
?
9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
?
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0*
valueBd*    
?
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:d*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 
?
dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0
?
'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
?
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:d*
dtype0
?
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????d
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:?????????d
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *5
else_branch&R$
"dnn_zero_fraction_cond_false_17118*
output_shapes
: : : : : : *4
then_branch%R#
!dnn_zero_fraction_cond_true_17117
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 
?
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 
?
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
?
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation
?
dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"d   F   
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *H`@?
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *H`@>
?
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF
?
3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF
?
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape
:dF*)
shared_namednn/hiddenlayer_1/kernel
?
9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0
?
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0*
valueBF*    
?
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape:F*'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 
?
dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0
?
'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
dtype0
?
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????F
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:F*
dtype0
?
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????F
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:?????????F
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_1_cond_false_17188*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_1_cond_true_17187
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
?
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation
?
dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
:*
dtype0*
valueB"F   0   
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *??f?
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *??f>
?
Adnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0
?
3dnn/hiddenlayer_2/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0
?
dnn/hiddenlayer_2/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
dtype0*
shape
:F0*)
shared_namednn/hiddenlayer_2/kernel
?
9dnn/hiddenlayer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_2/kernel/AssignAssignVariableOpdnn/hiddenlayer_2/kernel3dnn/hiddenlayer_2/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_2/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
?
(dnn/hiddenlayer_2/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0*
valueB0*    
?
dnn/hiddenlayer_2/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_2/bias*
_output_shapes
: *
dtype0*
shape:0*'
shared_namednn/hiddenlayer_2/bias
}
7dnn/hiddenlayer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias*
_output_shapes
: 
?
dnn/hiddenlayer_2/bias/AssignAssignVariableOpdnn/hiddenlayer_2/bias(dnn/hiddenlayer_2/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_2/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0
?
'dnn/hiddenlayer_2/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
_output_shapes

:F0*
dtype0
?
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Relu'dnn/hiddenlayer_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????0
{
(dnn/hiddenlayer_2/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
_output_shapes
:0*
dtype0
?
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMul(dnn/hiddenlayer_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:?????????0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/hiddenlayer_2/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_2_cond_false_17258*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_2_cond_true_17257
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_2/fraction_of_zero_values
?
)dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_2/activation
?
dnn/hiddenlayer_2/activationHistogramSummary dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
:*
dtype0*
valueB"0   "   
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *??
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?>
?
Adnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"
?
3dnn/hiddenlayer_3/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"
?
dnn/hiddenlayer_3/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: *
dtype0*
shape
:0"*)
shared_namednn/hiddenlayer_3/kernel
?
9dnn/hiddenlayer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_3/kernel/AssignAssignVariableOpdnn/hiddenlayer_3/kernel3dnn/hiddenlayer_3/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_3/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0
?
(dnn/hiddenlayer_3/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0*
valueB"*    
?
dnn/hiddenlayer_3/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_3/bias*
_output_shapes
: *
dtype0*
shape:"*'
shared_namednn/hiddenlayer_3/bias
}
7dnn/hiddenlayer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias*
_output_shapes
: 
?
dnn/hiddenlayer_3/bias/AssignAssignVariableOpdnn/hiddenlayer_3/bias(dnn/hiddenlayer_3/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_3/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0
?
'dnn/hiddenlayer_3/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
dtype0
?
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Relu'dnn/hiddenlayer_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
{
(dnn/hiddenlayer_3/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0
?
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMul(dnn/hiddenlayer_3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????"
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:?????????"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_3/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_3/condStatelessIfdnn/zero_fraction_3/LessEqualdnn/hiddenlayer_3/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_3_cond_false_17328*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_3_cond_true_17327
h
!dnn/zero_fraction_3/cond/IdentityIdentitydnn/zero_fraction_3/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_1Identitydnn/zero_fraction_3/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_2Identitydnn/zero_fraction_3/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_3Identitydnn/zero_fraction_3/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_4Identitydnn/zero_fraction_3/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_5Identitydnn/zero_fraction_3/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Size!dnn/zero_fraction_3/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_3/fraction_of_zero_values
?
)dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_3/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_3/activation
?
dnn/hiddenlayer_3/activationHistogramSummary dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
?
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB""      
?
0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *??Ӿ
?
0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *???>
?
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"*
dtype0
?
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
?
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
?
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
?
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
:"*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:"*
dtype0
?
!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:"*
dtype0
?
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
?
dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_4/condStatelessIfdnn/zero_fraction_4/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *7
else_branch(R&
$dnn_zero_fraction_4_cond_false_17397*
output_shapes
: : : : : : *6
then_branch'R%
#dnn_zero_fraction_4_cond_true_17396
h
!dnn/zero_fraction_4/cond/IdentityIdentitydnn/zero_fraction_4/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_1Identitydnn/zero_fraction_4/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_2Identitydnn/zero_fraction_4/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_3Identitydnn/zero_fraction_4/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_4Identitydnn/zero_fraction_4/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_5Identitydnn/zero_fraction_4/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Size!dnn/zero_fraction_4/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values
?
"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
?
Hlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
:*
dtype0*
valueB"?     
?
>linear/linear_model/company_xf/weights/Initializer/zeros/ConstConst*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
: *
dtype0*
valueB
 *    
?
8linear/linear_model/company_xf/weights/Initializer/zerosFillHlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensor>linear/linear_model/company_xf/weights/Initializer/zeros/Const*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
:	?
?
&linear/linear_model/company_xf/weightsVarHandleOp*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
_output_shapes
: *
dtype0*
shape:	?*7
shared_name(&linear/linear_model/company_xf/weights
?
Glinear/linear_model/company_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/company_xf/weights*
_output_shapes
: 
?
-linear/linear_model/company_xf/weights/AssignAssignVariableOp&linear/linear_model/company_xf/weights8linear/linear_model/company_xf/weights/Initializer/zeros*
dtype0
?
:linear/linear_model/company_xf/weights/Read/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
_output_shapes
:	?*
dtype0
?
Alinear/linear_model/dropoff_latitude_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
?
/linear/linear_model/dropoff_latitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*@
shared_name1/linear/linear_model/dropoff_latitude_xf/weights
?
Plinear/linear_model/dropoff_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: 
?
6linear/linear_model/dropoff_latitude_xf/weights/AssignAssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightsAlinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros*
dtype0
?
Clinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0
?
Blinear/linear_model/dropoff_longitude_xf/weights/Initializer/zerosConst*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
?
0linear/linear_model/dropoff_longitude_xf/weightsVarHandleOp*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*A
shared_name20linear/linear_model/dropoff_longitude_xf/weights
?
Qlinear/linear_model/dropoff_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: 
?
7linear/linear_model/dropoff_longitude_xf/weights/AssignAssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightsBlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros*
dtype0
?
Dlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0
?
Mlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorConst*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
:*
dtype0*
valueB"?     
?
Clinear/linear_model/payment_type_xf/weights/Initializer/zeros/ConstConst*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
: *
dtype0*
valueB
 *    
?
=linear/linear_model/payment_type_xf/weights/Initializer/zerosFillMlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorClinear/linear_model/payment_type_xf/weights/Initializer/zeros/Const*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
:	?
?
+linear/linear_model/payment_type_xf/weightsVarHandleOp*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
_output_shapes
: *
dtype0*
shape:	?*<
shared_name-+linear/linear_model/payment_type_xf/weights
?
Llinear/linear_model/payment_type_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
: 
?
2linear/linear_model/payment_type_xf/weights/AssignAssignVariableOp+linear/linear_model/payment_type_xf/weights=linear/linear_model/payment_type_xf/weights/Initializer/zeros*
dtype0
?
?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
:	?*
dtype0
?
@linear/linear_model/pickup_latitude_xf/weights/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
?
.linear/linear_model/pickup_latitude_xf/weightsVarHandleOp*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*?
shared_name0.linear/linear_model/pickup_latitude_xf/weights
?
Olinear/linear_model/pickup_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: 
?
5linear/linear_model/pickup_latitude_xf/weights/AssignAssignVariableOp.linear/linear_model/pickup_latitude_xf/weights@linear/linear_model/pickup_latitude_xf/weights/Initializer/zeros*
dtype0
?
Blinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0
?
Alinear/linear_model/pickup_longitude_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0*
valueB
*    
?
/linear/linear_model/pickup_longitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: *
dtype0*
shape
:
*@
shared_name1/linear/linear_model/pickup_longitude_xf/weights
?
Plinear/linear_model/pickup_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: 
?
6linear/linear_model/pickup_longitude_xf/weights/AssignAssignVariableOp/linear/linear_model/pickup_longitude_xf/weightsAlinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros*
dtype0
?
Clinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0
?
?linear/linear_model/trip_start_day_xf/weights/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
?
-linear/linear_model/trip_start_day_xf/weightsVarHandleOp*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-linear/linear_model/trip_start_day_xf/weights
?
Nlinear/linear_model/trip_start_day_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: 
?
4linear/linear_model/trip_start_day_xf/weights/AssignAssignVariableOp-linear/linear_model/trip_start_day_xf/weights?linear/linear_model/trip_start_day_xf/weights/Initializer/zeros*
dtype0
?
Alinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0
?
@linear/linear_model/trip_start_hour_xf/weights/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
?
.linear/linear_model/trip_start_hour_xf/weightsVarHandleOp*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.linear/linear_model/trip_start_hour_xf/weights
?
Olinear/linear_model/trip_start_hour_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: 
?
5linear/linear_model/trip_start_hour_xf/weights/AssignAssignVariableOp.linear/linear_model/trip_start_hour_xf/weights@linear/linear_model/trip_start_hour_xf/weights/Initializer/zeros*
dtype0
?
Blinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0
?
Alinear/linear_model/trip_start_month_xf/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0*
valueB*    
?
/linear/linear_model/trip_start_month_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/linear/linear_model/trip_start_month_xf/weights
?
Plinear/linear_model/trip_start_month_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: 
?
6linear/linear_model/trip_start_month_xf/weights/AssignAssignVariableOp/linear/linear_model/trip_start_month_xf/weightsAlinear/linear_model/trip_start_month_xf/weights/Initializer/zeros*
dtype0
?
Clinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0
?
2linear/linear_model/bias_weights/Initializer/zerosConst*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
:*
dtype0*
valueB*    
?
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
: *
dtype0*
shape:*1
shared_name" linear/linear_model/bias_weights
?
Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 
?
'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0
?
4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims
ExpandDimsIdentity_65Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_valueCastelinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqualNotEqualQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDimsclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesWhere_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesGatherNdQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeShapeQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :?
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_bucketsCastTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zeroCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessLess]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero*
T0	*#
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqualGreaterEqual]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_range	LogicalOrKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqual*#
_output_shapes
:?????????
?
Llinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeShape]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/CastCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_valuesFillLlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2SelectV2Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_rangeUlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_values]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastCastblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceStridedSliceSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/xPackTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1CastOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1*-
_output_shapes
:?????????:
?
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/IdentityIdentityOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceSliceVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/begin^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ProdProdYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2GatherV2Vlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesalinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/xPackXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Prod\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentity]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualjlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/WhereWhere`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ReshapeReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Wherealinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/IdentityIdentityclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Identitymlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCastylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather&linear/linear_model/company_xf/weightsrlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*9
_class/
-+loc:@linear/linear_model/company_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Reshape}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ShapeShapeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
glinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shapeglinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stackPack[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/TileTile]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumSelectXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Tile^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_likeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1SliceZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2Slice[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concatConcatV2[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2ReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDimsIdentity_72^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

?
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:?????????
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:?????????:
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/dropoff_latitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
plinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDimsIdentity_63_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
olinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastolinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqual[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDimsmlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNd[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDimshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShape[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

?
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_bucketsCast^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zeroCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/LessLessglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Less]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:?????????
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeShapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/CastCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesFillVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2SelectV2]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/CastCastllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_sliceStridedSlice]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/Castdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/xPack^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1CastYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:?????????:
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SliceSlice`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginhlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Prodflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualtlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/WhereWherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Whereklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentitymlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Identitywlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather0linear/linear_model/dropoff_longitude_xf/weights|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1~linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shapeqlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stackPackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/TileTileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumSelectblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Tilehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Cast`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Shape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:
?
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Sliceelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Reshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims
ExpandDimsIdentity_57Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastjlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDimshlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesWheredlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDimsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :?
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_bucketsCastYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zeroCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessLessblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqualGreaterEqualblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesWlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_range	LogicalOrPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:?????????
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapeShapeblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/CastCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesFillQlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapePlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2SelectV2Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_rangeZlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/CastCastglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceStridedSliceXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/Cast_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/xPackYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1CastTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshapeSparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:?????????:
?
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/IdentityIdentityTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SliceSlice[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ProdProd^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/xPack]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Prodalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualolinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identityglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/WhereWhereelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ReshapeReshape^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Whereflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identity`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/IdentityIdentityhlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Identityrlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCast~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather+linear/linear_model/payment_type_xf/weightswlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ShapeShapeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
llinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shapellinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stacknlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stackPack`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/TileTileblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sumSelect]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Tileclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_likeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1Cast[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1Slice_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2Slice`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concatConcatV2`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims
ExpandDimsIdentity_58]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDimsklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDimsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

?
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:?????????
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:?????????:
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/pickup_latitude_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
olinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims
ExpandDimsIdentity_59^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
nlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

?
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:?????????
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:?????????:
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/pickup_longitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
plinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum*
T0*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims
ExpandDimsIdentity_60\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqualXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDimsjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNdXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDimselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShapeXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_bucketsCast[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zeroCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessLessdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range	LogicalOrRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeShapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/CastCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesFillSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2SelectV2Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/CastCastilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/Castalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/xPack[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:?????????:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SliceSlice]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ProdProd`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indiceshlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/xPack_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Prodclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/WhereWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshape`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Wherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Identitytlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/trip_start_day_xf/weightsylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ShapeShaperlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSlice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shapenlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stackPackblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/TileTiledlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumSelect_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Tileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_likerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1Cast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimsIdentity_70]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqualYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDimsklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNdYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDimsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShapeYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:?????????
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:?????????:
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/trip_start_hour_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
olinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum*
T0*
_output_shapes
:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims
ExpandDimsIdentity_61^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
?
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqualZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDimsllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:?????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNdZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDimsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	
?
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
?
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:?????????
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
?
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast*
T0	*#
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:?????????:
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2*
T0	*#
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
?
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:?????????:
?
slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:?????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
?
vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCast?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:?????????:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/trip_start_month_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:?????????*
dtype0
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:?????????
?
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshape?linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
?
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
?
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack*
T0
*0
_output_shapes
:??????????????????
?
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:?????????
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
?
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddN]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
N	*
T0*'
_output_shapes
:?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
N
	bias/tagsConst*
_output_shapes
: *
dtype0*
valueB
 Bbias
P
biasScalarSummary	bias/tagsstrided_slice*
T0*
_output_shapes
: 
?
,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
_output_shapes
:	?*
dtype0
`
zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 R?
?
.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R

?
.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R

?
.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
:	?*
dtype0
b
zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value
B	 R?
?
.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R

?
.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes

:
*
dtype0
a
zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R

?
.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8*
N	*
T0	*
_output_shapes
: 
`
zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
?
#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal&linear/linear_model/company_xf/weightszero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_18348*
output_shapes
: *A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_18347
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1/linear/linear_model/dropoff_latitude_xf/weightszero_fraction/total_size/Size_1*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_18391*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_18390
?
.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_20linear/linear_model/dropoff_longitude_xf/weightszero_fraction/total_size/Size_2*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_18434*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_18433
?
.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3+linear/linear_model/payment_type_xf/weightszero_fraction/total_size/Size_3*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_18477*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_18476
?
.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_4.linear/linear_model/pickup_latitude_xf/weightszero_fraction/total_size/Size_4*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_18520*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_18519
?
.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5/linear/linear_model/pickup_longitude_xf/weightszero_fraction/total_size/Size_5*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_18563*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_18562
?
.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6-linear/linear_model/trip_start_day_xf/weightszero_fraction/total_size/Size_6*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_18606*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_18605
?
.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7.linear/linear_model/trip_start_hour_xf/weightszero_fraction/total_size/Size_7*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_18649*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_18648
?
.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_8/linear/linear_model/trip_start_month_xf/weightszero_fraction/total_size/Size_8*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_18692*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_18691
?
.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
?
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity*
N	*
T0*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 
?
zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*)
value B Bfraction_of_zero_weights
?
fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
?
zero_fraction_1/SizeSizeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
: *
out_type0	
a
zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
?
zero_fraction_1/condStatelessIfzero_fraction_1/LessEqualHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *3
else_branch$R"
 zero_fraction_1_cond_false_18742*
output_shapes
: *2
then_branch#R!
zero_fraction_1_cond_true_18741
`
zero_fraction_1/cond/IdentityIdentityzero_fraction_1/cond*
T0	*
_output_shapes
: 
?
&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 
?
'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
#linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*/
value&B$ Blinear/fraction_of_zero_values
?
linear/fraction_of_zero_valuesScalarSummary#linear/fraction_of_zero_values/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
g
linear/activation/tagConst*
_output_shapes
: *
dtype0*"
valueB Blinear/activation
?
linear/activationHistogramSummarylinear/activation/tagHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: 
?
addAddV2dnn/logits/BiasAddHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
D
head/logits/ShapeShapeadd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:?????????
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:?????????
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:?????????
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:?????????
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:?????????
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
K
head/predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:?????????
K
head/losses/logits/ShapeShapeadd*
T0*
_output_shapes
:
n
,head/losses/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
^
Vhead/losses/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!head/losses/labels/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/losses/labels/ExpandDims
ExpandDimsIdentity_73!head/losses/labels/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
n
,head/losses/labels/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
z
-head/losses/labels/assert_rank_at_least/ShapeShapehead/losses/labels/ExpandDims*
T0	*
_output_shapes
:
^
Vhead/losses/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Ghead/losses/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
?
head/losses/labels/ShapeShapeaddH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes
:
?
&head/losses/labels/strided_slice/stackConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
?
(head/losses/labels/strided_slice/stack_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?????????
?
(head/losses/labels/strided_slice/stack_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?
 head/losses/labels/strided_sliceStridedSlicehead/losses/labels/Shape&head/losses/labels/strided_slice/stack(head/losses/labels/strided_slice/stack_1(head/losses/labels/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask
?
"head/losses/labels/concat/values_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?
head/losses/labels/concat/axisConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
value	B : 
?
head/losses/labels/concatConcatV2 head/losses/labels/strided_slice"head/losses/labels/concat/values_1head/losses/labels/concat/axis*
N*
T0*
_output_shapes
:
?
head/losses/labels/Shape_1Shapehead/losses/labels/ExpandDimsH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_output_shapes
:
?
'head/losses/labels/assert_equal_1/EqualEqualhead/losses/labels/concathead/losses/labels/Shape_1*
T0*
_output_shapes
:
?
'head/losses/labels/assert_equal_1/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
?
%head/losses/labels/assert_equal_1/AllAll'head/losses/labels/assert_equal_1/Equal'head/losses/labels/assert_equal_1/Const*
_output_shapes
: 
?
.head/losses/labels/assert_equal_1/Assert/ConstConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*?
value?B? B?labels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
?
0head/losses/labels/assert_equal_1/Assert/Const_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
?
0head/losses/labels/assert_equal_1/Assert/Const_2ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
?
6head/losses/labels/assert_equal_1/Assert/Assert/data_0ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*?
value?B? B?labels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
?
6head/losses/labels/assert_equal_1/Assert/Assert/data_1ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
?
6head/losses/labels/assert_equal_1/Assert/Assert/data_3ConstH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
?
/head/losses/labels/assert_equal_1/Assert/AssertAssert%head/losses/labels/assert_equal_1/All6head/losses/labels/assert_equal_1/Assert/Assert/data_06head/losses/labels/assert_equal_1/Assert/Assert/data_1head/losses/labels/concat6head/losses/labels/assert_equal_1/Assert/Assert/data_3head/losses/labels/Shape_1*
T	
2
?
head/losses/labelsIdentityhead/losses/labels/ExpandDims0^head/losses/labels/assert_equal_1/Assert/AssertH^head/losses/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:?????????
m
head/losses/CastCasthead/losses/labels*

DstT0*

SrcT0	*'
_output_shapes
:?????????
h
#head/losses/check_label_range/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
9head/losses/check_label_range/assert_less_equal/LessEqual	LessEqualhead/losses/Cast#head/losses/check_label_range/Const*
T0*'
_output_shapes
:?????????
?
5head/losses/check_label_range/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
?
3head/losses/check_label_range/assert_less_equal/AllAll9head/losses/check_label_range/assert_less_equal/LessEqual5head/losses/check_label_range/assert_less_equal/Const*
_output_shapes
: 
?
<head/losses/check_label_range/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1
?
>head/losses/check_label_range/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
?
>head/losses/check_label_range/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 
?
>head/losses/check_label_range/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (head/losses/check_label_range/Const:0) = 
?
Bhead/losses/check_label_range/assert_less_equal/Assert/AssertGuardIf3head/losses/check_label_range/assert_less_equal/All3head/losses/check_label_range/assert_less_equal/Allhead/losses/Cast#head/losses/check_label_range/Const*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *a
else_branchRRP
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_18846*
output_shapes
: *`
then_branchQRO
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_18845
?
Khead/losses/check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentityBhead/losses/check_label_range/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
|
7head/losses/check_label_range/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Mhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual7head/losses/check_label_range/assert_non_negative/Consthead/losses/Cast*
T0*'
_output_shapes
:?????????
?
Ihead/losses/check_label_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
?
Ghead/losses/check_label_range/assert_non_negative/assert_less_equal/AllAllMhead/losses/check_label_range/assert_non_negative/assert_less_equal/LessEqualIhead/losses/check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 
?
Phead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*$
valueB BLabels must be >= 0
?
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:
?
Rhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 
?
Vhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIfGhead/losses/check_label_range/assert_non_negative/assert_less_equal/AllGhead/losses/check_label_range/assert_non_negative/assert_less_equal/Allhead/losses/Cast*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *u
else_branchfRd
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_18871*
output_shapes
: *t
then_brancheRc
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_18870
?
_head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityVhead/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
?
&head/losses/check_label_range/IdentityIdentityhead/losses/CastL^head/losses/check_label_range/assert_less_equal/Assert/AssertGuard/Identity`^head/losses/check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:?????????
h
$head/losses/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:?????????
?
&head/losses/logistic_loss/GreaterEqualGreaterEqualadd$head/losses/logistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
?
 head/losses/logistic_loss/SelectSelect&head/losses/logistic_loss/GreaterEqualadd$head/losses/logistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
[
head/losses/logistic_loss/NegNegadd*
T0*'
_output_shapes
:?????????
?
"head/losses/logistic_loss/Select_1Select&head/losses/logistic_loss/GreaterEqualhead/losses/logistic_loss/Negadd*
T0*'
_output_shapes
:?????????
?
head/losses/logistic_loss/mulMuladd&head/losses/check_label_range/Identity*
T0*'
_output_shapes
:?????????
?
head/losses/logistic_loss/subSub head/losses/logistic_loss/Selecthead/losses/logistic_loss/mul*
T0*'
_output_shapes
:?????????
z
head/losses/logistic_loss/ExpExp"head/losses/logistic_loss/Select_1*
T0*'
_output_shapes
:?????????
y
head/losses/logistic_loss/Log1pLog1phead/losses/logistic_loss/Exp*
T0*'
_output_shapes
:?????????
?
head/losses/logistic_lossAddhead/losses/logistic_loss/subhead/losses/logistic_loss/Log1p*
T0*'
_output_shapes
:?????????
e
 head/losses/weighted_loss/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
head/losses/weighted_loss/MulMulhead/losses/logistic_loss head/losses/weighted_loss/Cast/x*
T0*'
_output_shapes
:?????????
p
head/losses/weighted_loss/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
?
head/losses/weighted_loss/SumSumhead/losses/weighted_loss/Mulhead/losses/weighted_loss/Const*
T0*
_output_shapes
: 
n
&head/losses/weighted_loss/num_elementsSizehead/losses/weighted_loss/Mul*
T0*
_output_shapes
: 
?
+head/losses/weighted_loss/num_elements/CastCast&head/losses/weighted_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
d
!head/losses/weighted_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
?
head/losses/weighted_loss/Sum_1Sumhead/losses/weighted_loss/Sum!head/losses/weighted_loss/Const_1*
T0*
_output_shapes
: 
?
head/losses/weighted_loss/valueDivNoNanhead/losses/weighted_loss/Sum_1+head/losses/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
$head/metrics/total/Initializer/zerosConst*%
_class
loc:@head/metrics/total*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/totalVarHandleOp*%
_class
loc:@head/metrics/total*
_output_shapes
: *
dtype0*
shape: *#
shared_namehead/metrics/total
u
3head/metrics/total/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total*
_output_shapes
: 
t
head/metrics/total/AssignAssignVariableOphead/metrics/total$head/metrics/total/Initializer/zeros*
dtype0
q
&head/metrics/total/Read/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0
?
$head/metrics/count/Initializer/zerosConst*%
_class
loc:@head/metrics/count*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/countVarHandleOp*%
_class
loc:@head/metrics/count*
_output_shapes
: *
dtype0*
shape: *#
shared_namehead/metrics/count
u
3head/metrics/count/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count*
_output_shapes
: 
t
head/metrics/count/AssignAssignVariableOphead/metrics/count$head/metrics/count/Initializer/zeros*
dtype0
q
&head/metrics/count/Read/ReadVariableOpReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0
?
&head/metrics/total_1/Initializer/zerosConst*'
_class
loc:@head/metrics/total_1*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/total_1VarHandleOp*'
_class
loc:@head/metrics/total_1*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_1
y
5head/metrics/total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_1*
_output_shapes
: 
z
head/metrics/total_1/AssignAssignVariableOphead/metrics/total_1&head/metrics/total_1/Initializer/zeros*
dtype0
u
(head/metrics/total_1/Read/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0
?
&head/metrics/count_1/Initializer/zerosConst*'
_class
loc:@head/metrics/count_1*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/count_1VarHandleOp*'
_class
loc:@head/metrics/count_1*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_1
y
5head/metrics/count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_1*
_output_shapes
: 
z
head/metrics/count_1/AssignAssignVariableOphead/metrics/count_1&head/metrics/count_1/Initializer/zeros*
dtype0
u
(head/metrics/count_1/Read/ReadVariableOpReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
?
-head/metrics/true_positives/Initializer/zerosConst*.
_class$
" loc:@head/metrics/true_positives*
_output_shapes
:*
dtype0*
valueB*    
?
head/metrics/true_positivesVarHandleOp*.
_class$
" loc:@head/metrics/true_positives*
_output_shapes
: *
dtype0*
shape:*,
shared_namehead/metrics/true_positives
?
<head/metrics/true_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives*
_output_shapes
: 
?
"head/metrics/true_positives/AssignAssignVariableOphead/metrics/true_positives-head/metrics/true_positives/Initializer/zeros*
dtype0
?
/head/metrics/true_positives/Read/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
?
.head/metrics/false_positives/Initializer/zerosConst*/
_class%
#!loc:@head/metrics/false_positives*
_output_shapes
:*
dtype0*
valueB*    
?
head/metrics/false_positivesVarHandleOp*/
_class%
#!loc:@head/metrics/false_positives*
_output_shapes
: *
dtype0*
shape:*-
shared_namehead/metrics/false_positives
?
=head/metrics/false_positives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives*
_output_shapes
: 
?
#head/metrics/false_positives/AssignAssignVariableOphead/metrics/false_positives.head/metrics/false_positives/Initializer/zeros*
dtype0
?
0head/metrics/false_positives/Read/ReadVariableOpReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
?
/head/metrics/true_positives_1/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_1*
_output_shapes
:*
dtype0*
valueB*    
?
head/metrics/true_positives_1VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_1*
_output_shapes
: *
dtype0*
shape:*.
shared_namehead/metrics/true_positives_1
?
>head/metrics/true_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_1*
_output_shapes
: 
?
$head/metrics/true_positives_1/AssignAssignVariableOphead/metrics/true_positives_1/head/metrics/true_positives_1/Initializer/zeros*
dtype0
?
1head/metrics/true_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
?
.head/metrics/false_negatives/Initializer/zerosConst*/
_class%
#!loc:@head/metrics/false_negatives*
_output_shapes
:*
dtype0*
valueB*    
?
head/metrics/false_negativesVarHandleOp*/
_class%
#!loc:@head/metrics/false_negatives*
_output_shapes
: *
dtype0*
shape:*-
shared_namehead/metrics/false_negatives
?
=head/metrics/false_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives*
_output_shapes
: 
?
#head/metrics/false_negatives/AssignAssignVariableOphead/metrics/false_negatives.head/metrics/false_negatives/Initializer/zeros*
dtype0
?
0head/metrics/false_negatives/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0
?
&head/metrics/total_2/Initializer/zerosConst*'
_class
loc:@head/metrics/total_2*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/total_2VarHandleOp*'
_class
loc:@head/metrics/total_2*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_2
y
5head/metrics/total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_2*
_output_shapes
: 
z
head/metrics/total_2/AssignAssignVariableOphead/metrics/total_2&head/metrics/total_2/Initializer/zeros*
dtype0
u
(head/metrics/total_2/Read/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0
?
&head/metrics/count_2/Initializer/zerosConst*'
_class
loc:@head/metrics/count_2*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/count_2VarHandleOp*'
_class
loc:@head/metrics/count_2*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_2
y
5head/metrics/count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_2*
_output_shapes
: 
z
head/metrics/count_2/AssignAssignVariableOphead/metrics/count_2&head/metrics/count_2/Initializer/zeros*
dtype0
u
(head/metrics/count_2/Read/ReadVariableOpReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0
?
&head/metrics/total_3/Initializer/zerosConst*'
_class
loc:@head/metrics/total_3*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/total_3VarHandleOp*'
_class
loc:@head/metrics/total_3*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_3
y
5head/metrics/total_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_3*
_output_shapes
: 
z
head/metrics/total_3/AssignAssignVariableOphead/metrics/total_3&head/metrics/total_3/Initializer/zeros*
dtype0
u
(head/metrics/total_3/Read/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
?
&head/metrics/count_3/Initializer/zerosConst*'
_class
loc:@head/metrics/count_3*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/count_3VarHandleOp*'
_class
loc:@head/metrics/count_3*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_3
y
5head/metrics/count_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_3*
_output_shapes
: 
z
head/metrics/count_3/AssignAssignVariableOphead/metrics/count_3&head/metrics/count_3/Initializer/zeros*
dtype0
u
(head/metrics/count_3/Read/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
?
&head/metrics/total_4/Initializer/zerosConst*'
_class
loc:@head/metrics/total_4*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/total_4VarHandleOp*'
_class
loc:@head/metrics/total_4*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/total_4
y
5head/metrics/total_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/total_4*
_output_shapes
: 
z
head/metrics/total_4/AssignAssignVariableOphead/metrics/total_4&head/metrics/total_4/Initializer/zeros*
dtype0
u
(head/metrics/total_4/Read/ReadVariableOpReadVariableOphead/metrics/total_4*
_output_shapes
: *
dtype0
?
&head/metrics/count_4/Initializer/zerosConst*'
_class
loc:@head/metrics/count_4*
_output_shapes
: *
dtype0*
valueB
 *    
?
head/metrics/count_4VarHandleOp*'
_class
loc:@head/metrics/count_4*
_output_shapes
: *
dtype0*
shape: *%
shared_namehead/metrics/count_4
y
5head/metrics/count_4/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/count_4*
_output_shapes
: 
z
head/metrics/count_4/AssignAssignVariableOphead/metrics/count_4&head/metrics/count_4/Initializer/zeros*
dtype0
u
(head/metrics/count_4/Read/ReadVariableOpReadVariableOphead/metrics/count_4*
_output_shapes
: *
dtype0
?
/head/metrics/true_positives_2/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_2*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/true_positives_2VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_2*
_output_shapes
: *
dtype0*
shape:?*.
shared_namehead/metrics/true_positives_2
?
>head/metrics/true_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_2*
_output_shapes
: 
?
$head/metrics/true_positives_2/AssignAssignVariableOphead/metrics/true_positives_2/head/metrics/true_positives_2/Initializer/zeros*
dtype0
?
1head/metrics/true_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:?*
dtype0
?
-head/metrics/true_negatives/Initializer/zerosConst*.
_class$
" loc:@head/metrics/true_negatives*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/true_negativesVarHandleOp*.
_class$
" loc:@head/metrics/true_negatives*
_output_shapes
: *
dtype0*
shape:?*,
shared_namehead/metrics/true_negatives
?
<head/metrics/true_negatives/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives*
_output_shapes
: 
?
"head/metrics/true_negatives/AssignAssignVariableOphead/metrics/true_negatives-head/metrics/true_negatives/Initializer/zeros*
dtype0
?
/head/metrics/true_negatives/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives*
_output_shapes	
:?*
dtype0
?
0head/metrics/false_positives_1/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_positives_1*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/false_positives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_positives_1*
_output_shapes
: *
dtype0*
shape:?*/
shared_name head/metrics/false_positives_1
?
?head/metrics/false_positives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_1*
_output_shapes
: 
?
%head/metrics/false_positives_1/AssignAssignVariableOphead/metrics/false_positives_10head/metrics/false_positives_1/Initializer/zeros*
dtype0
?
2head/metrics/false_positives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:?*
dtype0
?
0head/metrics/false_negatives_1/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_negatives_1*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/false_negatives_1VarHandleOp*1
_class'
%#loc:@head/metrics/false_negatives_1*
_output_shapes
: *
dtype0*
shape:?*/
shared_name head/metrics/false_negatives_1
?
?head/metrics/false_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_1*
_output_shapes
: 
?
%head/metrics/false_negatives_1/AssignAssignVariableOphead/metrics/false_negatives_10head/metrics/false_negatives_1/Initializer/zeros*
dtype0
?
2head/metrics/false_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:?*
dtype0
?
/head/metrics/true_positives_3/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_positives_3*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/true_positives_3VarHandleOp*0
_class&
$"loc:@head/metrics/true_positives_3*
_output_shapes
: *
dtype0*
shape:?*.
shared_namehead/metrics/true_positives_3
?
>head/metrics/true_positives_3/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_positives_3*
_output_shapes
: 
?
$head/metrics/true_positives_3/AssignAssignVariableOphead/metrics/true_positives_3/head/metrics/true_positives_3/Initializer/zeros*
dtype0
?
1head/metrics/true_positives_3/Read/ReadVariableOpReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
?
/head/metrics/true_negatives_1/Initializer/zerosConst*0
_class&
$"loc:@head/metrics/true_negatives_1*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/true_negatives_1VarHandleOp*0
_class&
$"loc:@head/metrics/true_negatives_1*
_output_shapes
: *
dtype0*
shape:?*.
shared_namehead/metrics/true_negatives_1
?
>head/metrics/true_negatives_1/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/true_negatives_1*
_output_shapes
: 
?
$head/metrics/true_negatives_1/AssignAssignVariableOphead/metrics/true_negatives_1/head/metrics/true_negatives_1/Initializer/zeros*
dtype0
?
1head/metrics/true_negatives_1/Read/ReadVariableOpReadVariableOphead/metrics/true_negatives_1*
_output_shapes	
:?*
dtype0
?
0head/metrics/false_positives_2/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_positives_2*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/false_positives_2VarHandleOp*1
_class'
%#loc:@head/metrics/false_positives_2*
_output_shapes
: *
dtype0*
shape:?*/
shared_name head/metrics/false_positives_2
?
?head/metrics/false_positives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_positives_2*
_output_shapes
: 
?
%head/metrics/false_positives_2/AssignAssignVariableOphead/metrics/false_positives_20head/metrics/false_positives_2/Initializer/zeros*
dtype0
?
2head/metrics/false_positives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:?*
dtype0
?
0head/metrics/false_negatives_2/Initializer/zerosConst*1
_class'
%#loc:@head/metrics/false_negatives_2*
_output_shapes	
:?*
dtype0*
valueB?*    
?
head/metrics/false_negatives_2VarHandleOp*1
_class'
%#loc:@head/metrics/false_negatives_2*
_output_shapes
: *
dtype0*
shape:?*/
shared_name head/metrics/false_negatives_2
?
?head/metrics/false_negatives_2/IsInitialized/VarIsInitializedOpVarIsInitializedOphead/metrics/false_negatives_2*
_output_shapes
: 
?
%head/metrics/false_negatives_2/AssignAssignVariableOphead/metrics/false_negatives_20head/metrics/false_negatives_2/Initializer/zeros*
dtype0
?
2head/metrics/false_negatives_2/Read/ReadVariableOpReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:?*
dtype0
A
logits_1/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_1/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_1/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_1/assert_rank_at_least/static_checks_determined_all_okNoOp
V
predictions/logisticSigmoidadd*
T0*'
_output_shapes
:?????????
Z
predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:?????????
l
!predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
predictions/two_class_logitsConcatV2predictions/zeros_likeadd!predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:?????????
t
predictions/probabilitiesSoftmaxpredictions/two_class_logits*
T0*'
_output_shapes
:?????????
j
predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
predictions/class_idsArgMaxpredictions/two_class_logitspredictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
e
predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
predictions/ExpandDims
ExpandDimspredictions/class_idspredictions/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
m
predictions/str_classesAsStringpredictions/ExpandDims*
T0	*'
_output_shapes
:?????????
D
predictions/ShapeShapeadd*
T0*
_output_shapes
:
i
predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
predictions/strided_sliceStridedSlicepredictions/Shapepredictions/strided_slice/stack!predictions/strided_slice/stack_1!predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Y
predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Y
predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
Y
predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
predictions/rangeRangepredictions/range/startpredictions/range/limitpredictions/range/delta*
_output_shapes
:
^
predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
predictions/ExpandDims_1
ExpandDimspredictions/rangepredictions/ExpandDims_1/dim*
T0*
_output_shapes

:
^
predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
predictions/Tile/multiplesPackpredictions/strided_slicepredictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
predictions/TileTilepredictions/ExpandDims_1predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
F
predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
k
!predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
m
#predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
m
#predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
predictions/strided_slice_1StridedSlicepredictions/Shape_1!predictions/strided_slice_1/stack#predictions/strided_slice_1/stack_1#predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
[
predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
[
predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
[
predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
predictions/range_1Rangepredictions/range_1/startpredictions/range_1/limitpredictions/range_1/delta*
_output_shapes
:
Z
predictions/AsStringAsStringpredictions/range_1*
T0*
_output_shapes
:
^
predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
predictions/ExpandDims_2
ExpandDimspredictions/AsStringpredictions/ExpandDims_2/dim*
T0*
_output_shapes

:
`
predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
predictions/Tile_1/multiplesPackpredictions/strided_slice_1predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
?
predictions/Tile_1Tilepredictions/ExpandDims_2predictions/Tile_1/multiples*
T0*'
_output_shapes
:?????????
A
logits_2/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_2/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_2/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_2/assert_rank_at_least/static_checks_determined_all_okNoOp
`
labels/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
u
labels/ExpandDims
ExpandDimsIdentity_73labels/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
b
 labels/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
b
!labels/assert_rank_at_least/ShapeShapelabels/ExpandDims*
T0	*
_output_shapes
:
R
Jlabels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
C
;labels/assert_rank_at_least/static_checks_determined_all_okNoOp
}
labels/ShapeShapeadd<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes
:
?
labels/strided_slice/stackConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
?
labels/strided_slice/stack_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?????????
?
labels/strided_slice/stack_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?
labels/strided_sliceStridedSlicelabels/Shapelabels/strided_slice/stacklabels/strided_slice/stack_1labels/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask
?
labels/concat/values_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
?
labels/concat/axisConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
value	B : 
?
labels/concatConcatV2labels/strided_slicelabels/concat/values_1labels/concat/axis*
N*
T0*
_output_shapes
:
?
labels/Shape_1Shapelabels/ExpandDims<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*
_output_shapes
:
h
labels/assert_equal_1/EqualEquallabels/concatlabels/Shape_1*
T0*
_output_shapes
:
?
labels/assert_equal_1/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
r
labels/assert_equal_1/AllAlllabels/assert_equal_1/Equallabels/assert_equal_1/Const*
_output_shapes
: 
?
"labels/assert_equal_1/Assert/ConstConst<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*?
value?B? B?labels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
?
$labels/assert_equal_1/Assert/Const_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
?
$labels/assert_equal_1/Assert/Const_2Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
?
*labels/assert_equal_1/Assert/Assert/data_0Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*?
value?B? B?labels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the head and/or the shape of your label.
?
*labels/assert_equal_1/Assert/Assert/data_1Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
?
*labels/assert_equal_1/Assert/Assert/data_3Const<^labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
?
#labels/assert_equal_1/Assert/AssertAssertlabels/assert_equal_1/All*labels/assert_equal_1/Assert/Assert/data_0*labels/assert_equal_1/Assert/Assert/data_1labels/concat*labels/assert_equal_1/Assert/Assert/data_3labels/Shape_1*
T	
2
?
labelsIdentitylabels/ExpandDims$^labels/assert_equal_1/Assert/Assert<^labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:?????????
U
CastCastlabels*

DstT0*

SrcT0	*'
_output_shapes
:?????????
\
check_label_range/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
-check_label_range/assert_less_equal/LessEqual	LessEqualCastcheck_label_range/Const*
T0*'
_output_shapes
:?????????
z
)check_label_range/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
?
'check_label_range/assert_less_equal/AllAll-check_label_range/assert_less_equal/LessEqual)check_label_range/assert_less_equal/Const*
_output_shapes
: 
?
0check_label_range/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 1
?
2check_label_range/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
?
2check_label_range/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 
?
2check_label_range/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*1
value(B& B y (check_label_range/Const:0) = 
?
6check_label_range/assert_less_equal/Assert/AssertGuardIf'check_label_range/assert_less_equal/All'check_label_range/assert_less_equal/AllCastcheck_label_range/Const*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *U
else_branchFRD
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_19069*
output_shapes
: *T
then_branchERC
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_19068
?
?check_label_range/assert_less_equal/Assert/AssertGuard/IdentityIdentity6check_label_range/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
p
+check_label_range/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Acheck_label_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+check_label_range/assert_non_negative/ConstCast*
T0*'
_output_shapes
:?????????
?
=check_label_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
?
;check_label_range/assert_non_negative/assert_less_equal/AllAllAcheck_label_range/assert_non_negative/assert_less_equal/LessEqual=check_label_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 
?
Dcheck_label_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*$
valueB BLabels must be >= 0
?
Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:
?
Fcheck_label_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 
?
Jcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuardIf;check_label_range/assert_non_negative/assert_less_equal/All;check_label_range/assert_non_negative/assert_less_equal/AllCast*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *i
else_branchZRX
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_19094*
output_shapes
: *h
then_branchYRW
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_19093
?
Scheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityJcheck_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
?
check_label_range/IdentityIdentityCast@^check_label_range/assert_less_equal/Assert/AssertGuard/IdentityT^check_label_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0*'
_output_shapes
:?????????
\
logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:?????????
{
logistic_loss/GreaterEqualGreaterEqualaddlogistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
?
logistic_loss/SelectSelectlogistic_loss/GreaterEqualaddlogistic_loss/zeros_like*
T0*'
_output_shapes
:?????????
O
logistic_loss/NegNegadd*
T0*'
_output_shapes
:?????????
?
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negadd*
T0*'
_output_shapes
:?????????
k
logistic_loss/mulMuladdcheck_label_range/Identity*
T0*'
_output_shapes
:?????????
s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0*'
_output_shapes
:?????????
b
logistic_loss/ExpExplogistic_loss/Select_1*
T0*'
_output_shapes
:?????????
a
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*'
_output_shapes
:?????????
n
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0*'
_output_shapes
:?????????
M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
w
4broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
u
3broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
p
3broadcast_weights/assert_broadcastable/values/shapeShapelogistic_loss*
T0*
_output_shapes
:
t
2broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
J
Bbroadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
!broadcast_weights/ones_like/ShapeShapelogistic_lossC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
!broadcast_weights/ones_like/ConstConstC^broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights/ones_likeFill!broadcast_weights/ones_like/Shape!broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:?????????
q
broadcast_weightsMulCast_1/xbroadcast_weights/ones_like*
T0*'
_output_shapes
:?????????
^
MulMullogistic_lossbroadcast_weights*
T0*'
_output_shapes
:?????????
X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
9
SumSumMulConst_1*
T0*
_output_shapes
: 
P
AssignAddVariableOpAssignAddVariableOphead/metrics/totalSum*
dtype0
w
ReadVariableOp_1ReadVariableOphead/metrics/total^AssignAddVariableOp^Sum*
_output_shapes
: *
dtype0
X
Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
I
Sum_1Sumbroadcast_weightsConst_2*
T0*
_output_shapes
: 
j
AssignAddVariableOp_1AssignAddVariableOphead/metrics/countSum_1^AssignAddVariableOp*
dtype0
?
ReadVariableOp_2ReadVariableOphead/metrics/count^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0
g
Cast_2Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:?????????
d
EqualEqualcheck_label_range/IdentityCast_2*
T0*'
_output_shapes
:?????????
V
Cast_3CastEqual*

DstT0*

SrcT0
*'
_output_shapes
:?????????
M
Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
y
6broadcast_weights_1/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
k
5broadcast_weights_1/assert_broadcastable/values/shapeShapeCast_3*
T0*
_output_shapes
:
v
4broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_1/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_1/ones_like/ShapeShapeCast_3E^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_1/ones_like/ConstConstE^broadcast_weights_1/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_1/ones_likeFill#broadcast_weights_1/ones_like/Shape#broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:?????????
u
broadcast_weights_1MulCast_4/xbroadcast_weights_1/ones_like*
T0*'
_output_shapes
:?????????
[
Mul_1MulCast_3broadcast_weights_1*
T0*'
_output_shapes
:?????????
X
Const_3Const*
_output_shapes
:*
dtype0*
valueB"       
=
Sum_2SumMul_1Const_3*
T0*
_output_shapes
: 
V
AssignAddVariableOp_2AssignAddVariableOphead/metrics/total_1Sum_2*
dtype0
}
ReadVariableOp_3ReadVariableOphead/metrics/total_1^AssignAddVariableOp_2^Sum_2*
_output_shapes
: *
dtype0
X
Const_4Const*
_output_shapes
:*
dtype0*
valueB"       
K
Sum_3Sumbroadcast_weights_1Const_4*
T0*
_output_shapes
: 
n
AssignAddVariableOp_3AssignAddVariableOphead/metrics/count_1Sum_3^AssignAddVariableOp_2*
dtype0
?
ReadVariableOp_4ReadVariableOphead/metrics/count_1^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0
g
Cast_5Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:?????????
T
Const_5Const*
_output_shapes
:*
dtype0*
valueB*   ?
J
Cast_6/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
M
Cast_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
u
!assert_greater_equal/GreaterEqualGreaterEqualCast_5Cast_7/x*
T0*'
_output_shapes
:?????????
k
assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
v
assert_greater_equal/AllAll!assert_greater_equal/GreaterEqualassert_greater_equal/Const*
_output_shapes
: 
z
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0
?
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
s
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 
u
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_7/x:0) = 
?
'assert_greater_equal/Assert/AssertGuardIfassert_greater_equal/Allassert_greater_equal/AllCast_5Cast_7/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_19166*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_19165
?
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity'assert_greater_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
M
Cast_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
l
assert_less_equal/LessEqual	LessEqualCast_5Cast_8/x*
T0*'
_output_shapes
:?????????
h
assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
j
assert_less_equal/AllAllassert_less_equal/LessEqualassert_less_equal/Const*
_output_shapes
: 
w
assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1
?
 assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
p
 assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 
r
 assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_8/x:0) = 
?
$assert_less_equal/Assert/AssertGuardIfassert_less_equal/Allassert_less_equal/AllCast_5Cast_8/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *C
else_branch4R2
0assert_less_equal_Assert_AssertGuard_false_19192*
output_shapes
: *B
then_branch3R1
/assert_less_equal_Assert_AssertGuard_true_19191
?
-assert_less_equal/Assert/AssertGuard/IdentityIdentity$assert_less_equal/Assert/AssertGuard*
T0
*
_output_shapes
: 
?
Const_6Const1^assert_greater_equal/Assert/AssertGuard/Identity.^assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
;
ShapeShapeCast_5*
T0*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_1StridedSliceShapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_2StridedSliceShapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
X
Prod/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
V
ProdProdstrided_slice_2Prod/reduction_indices*
T0*
_output_shapes
: 
?
condStatelessIfCast_6/xProd*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *#
else_branchR
cond_false_19222*
output_shapes
: *"
then_branchR
cond_true_19221
@
cond/IdentityIdentitycond*
T0*
_output_shapes
: 
^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
[
ReshapeReshapeCast_5Reshape/shape*
T0*'
_output_shapes
:?????????
k
Cast_9Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:?????????
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
_
	Reshape_1ReshapeCast_9Reshape_1/shape*
T0
*'
_output_shapes
:?????????
D
mul_2Mulstrided_slice_1Prod*
T0*
_output_shapes
: 
`
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
W
	Reshape_2ReshapeConst_5Reshape_2/shape*
T0*
_output_shapes

:
I
stack/0Const*
_output_shapes
: *
dtype0*
value	B :
K
stackPackstack/0mul_2*
N*
T0*
_output_shapes
:
P
TileTile	Reshape_2stack*
T0*'
_output_shapes
:?????????
a
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
[
Tile_1TileReshapeTile_1/multiples*
T0*'
_output_shapes
:?????????
R
GreaterGreaterTile_1Tile*
T0*'
_output_shapes
:?????????
a
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_2Tile	Reshape_1Tile_2/multiples*
T0
*'
_output_shapes
:?????????
y
6broadcast_weights_2/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_2/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
k
5broadcast_weights_2/assert_broadcastable/values/shapeShapeCast_5*
T0*
_output_shapes
:
v
4broadcast_weights_2/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_2/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_2/ones_like/ShapeShapeCast_5E^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_2/ones_like/ConstConstE^broadcast_weights_2/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_2/ones_likeFill#broadcast_weights_2/ones_like/Shape#broadcast_weights_2/ones_like/Const*
T0*'
_output_shapes
:?????????
t
broadcast_weights_2MulConst_6broadcast_weights_2/ones_like*
T0*'
_output_shapes
:?????????
S
Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
_
Reshape_3/shapePackReshape_3/shape/0mul_2*
N*
T0*
_output_shapes
:
l
	Reshape_3Reshapebroadcast_weights_2Reshape_3/shape*
T0*'
_output_shapes
:?????????
a
Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_3Tile	Reshape_3Tile_3/multiples*
T0*'
_output_shapes
:?????????
I

LogicalNot
LogicalNotTile_2*'
_output_shapes
:?????????
R

LogicalAnd
LogicalAndTile_2Greater*'
_output_shapes
:?????????
\
Cast_10Cast
LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:?????????
O
mul_3MulCast_10Tile_3*
T0*'
_output_shapes
:?????????
Y
Sum_4/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_4Summul_3Sum_4/reduction_indices*
T0*
_output_shapes
:
]
AssignAddVariableOp_4AssignAddVariableOphead/metrics/true_positivesSum_4*
dtype0
?
ReadVariableOp_5ReadVariableOphead/metrics/true_positives^AssignAddVariableOp_4*
_output_shapes
:*
dtype0
X
LogicalAnd_1
LogicalAnd
LogicalNotGreater*'
_output_shapes
:?????????
^
Cast_11CastLogicalAnd_1*

DstT0*

SrcT0
*'
_output_shapes
:?????????
O
mul_4MulCast_11Tile_3*
T0*'
_output_shapes
:?????????
Y
Sum_5/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_5Summul_4Sum_5/reduction_indices*
T0*
_output_shapes
:
^
AssignAddVariableOp_5AssignAddVariableOphead/metrics/false_positivesSum_5*
dtype0
?
ReadVariableOp_6ReadVariableOphead/metrics/false_positives^AssignAddVariableOp_5*
_output_shapes
:*
dtype0
B

group_depsNoOp^AssignAddVariableOp_4^AssignAddVariableOp_5
h
Cast_12Castpredictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:?????????
T
Const_7Const*
_output_shapes
:*
dtype0*
valueB*   ?
K
	Cast_13/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_14/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
y
#assert_greater_equal_1/GreaterEqualGreaterEqualCast_12	Cast_14/x*
T0*'
_output_shapes
:?????????
m
assert_greater_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_1/AllAll#assert_greater_equal_1/GreaterEqualassert_greater_equal_1/Const*
_output_shapes
: 
|
#assert_greater_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0
?
%assert_greater_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
v
%assert_greater_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_12:0) = 
x
%assert_greater_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_14/x:0) = 
?
)assert_greater_equal_1/Assert/AssertGuardIfassert_greater_equal_1/Allassert_greater_equal_1/AllCast_12	Cast_14/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_1_Assert_AssertGuard_false_19284*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_1_Assert_AssertGuard_true_19283
?
2assert_greater_equal_1/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_15/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
p
assert_less_equal_1/LessEqual	LessEqualCast_12	Cast_15/x*
T0*'
_output_shapes
:?????????
j
assert_less_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_1/AllAllassert_less_equal_1/LessEqualassert_less_equal_1/Const*
_output_shapes
: 
y
 assert_less_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1
?
"assert_less_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
s
"assert_less_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_12:0) = 
u
"assert_less_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_15/x:0) = 
?
&assert_less_equal_1/Assert/AssertGuardIfassert_less_equal_1/Allassert_less_equal_1/AllCast_12	Cast_15/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_1_Assert_AssertGuard_false_19310*
output_shapes
: *D
then_branch5R3
1assert_less_equal_1_Assert_AssertGuard_true_19309
?
/assert_less_equal_1/Assert/AssertGuard/IdentityIdentity&assert_less_equal_1/Assert/AssertGuard*
T0
*
_output_shapes
: 
?
Const_8Const3^assert_greater_equal_1/Assert/AssertGuard/Identity0^assert_less_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
>
Shape_1ShapeCast_12*
T0*
_output_shapes
:
_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_3StridedSliceShape_1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_4StridedSliceShape_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
Z
Prod_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
Z
Prod_1Prodstrided_slice_4Prod_1/reduction_indices*
T0*
_output_shapes
: 
?
cond_1StatelessIf	Cast_13/xProd_1*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *%
else_branchR
cond_1_false_19340*
output_shapes
: *$
then_branchR
cond_1_true_19339
D
cond_1/IdentityIdentitycond_1*
T0*
_output_shapes
: 
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
`
	Reshape_4ReshapeCast_12Reshape_4/shape*
T0*'
_output_shapes
:?????????
l
Cast_16Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:?????????
`
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
`
	Reshape_5ReshapeCast_16Reshape_5/shape*
T0
*'
_output_shapes
:?????????
F
mul_5Mulstrided_slice_3Prod_1*
T0*
_output_shapes
: 
`
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
W
	Reshape_6ReshapeConst_7Reshape_6/shape*
T0*
_output_shapes

:
K
	stack_1/0Const*
_output_shapes
: *
dtype0*
value	B :
O
stack_1Pack	stack_1/0mul_5*
N*
T0*
_output_shapes
:
T
Tile_4Tile	Reshape_6stack_1*
T0*'
_output_shapes
:?????????
a
Tile_5/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_5Tile	Reshape_4Tile_5/multiples*
T0*'
_output_shapes
:?????????
V
	Greater_1GreaterTile_5Tile_4*
T0*'
_output_shapes
:?????????
a
Tile_6/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_6Tile	Reshape_5Tile_6/multiples*
T0
*'
_output_shapes
:?????????
y
6broadcast_weights_3/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_3/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
l
5broadcast_weights_3/assert_broadcastable/values/shapeShapeCast_12*
T0*
_output_shapes
:
v
4broadcast_weights_3/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_3/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_3/ones_like/ShapeShapeCast_12E^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_3/ones_like/ConstConstE^broadcast_weights_3/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_3/ones_likeFill#broadcast_weights_3/ones_like/Shape#broadcast_weights_3/ones_like/Const*
T0*'
_output_shapes
:?????????
t
broadcast_weights_3MulConst_8broadcast_weights_3/ones_like*
T0*'
_output_shapes
:?????????
S
Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
_
Reshape_7/shapePackReshape_7/shape/0mul_5*
N*
T0*
_output_shapes
:
l
	Reshape_7Reshapebroadcast_weights_3Reshape_7/shape*
T0*'
_output_shapes
:?????????
a
Tile_7/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
]
Tile_7Tile	Reshape_7Tile_7/multiples*
T0*'
_output_shapes
:?????????
N
LogicalNot_1
LogicalNot	Greater_1*'
_output_shapes
:?????????
V
LogicalAnd_2
LogicalAndTile_6	Greater_1*'
_output_shapes
:?????????
^
Cast_17CastLogicalAnd_2*

DstT0*

SrcT0
*'
_output_shapes
:?????????
O
mul_6MulCast_17Tile_7*
T0*'
_output_shapes
:?????????
Y
Sum_6/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_6Summul_6Sum_6/reduction_indices*
T0*
_output_shapes
:
_
AssignAddVariableOp_6AssignAddVariableOphead/metrics/true_positives_1Sum_6*
dtype0
?
ReadVariableOp_7ReadVariableOphead/metrics/true_positives_1^AssignAddVariableOp_6*
_output_shapes
:*
dtype0
Y
LogicalAnd_3
LogicalAndTile_6LogicalNot_1*'
_output_shapes
:?????????
^
Cast_18CastLogicalAnd_3*

DstT0*

SrcT0
*'
_output_shapes
:?????????
O
mul_7MulCast_18Tile_7*
T0*'
_output_shapes
:?????????
Y
Sum_7/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Q
Sum_7Summul_7Sum_7/reduction_indices*
T0*
_output_shapes
:
^
AssignAddVariableOp_7AssignAddVariableOphead/metrics/false_negativesSum_7*
dtype0
?
ReadVariableOp_8ReadVariableOphead/metrics/false_negatives^AssignAddVariableOp_7*
_output_shapes
:*
dtype0
D
group_deps_1NoOp^AssignAddVariableOp_6^AssignAddVariableOp_7
A
logits_3/ShapeShapeadd*
T0*
_output_shapes
:
d
"logits_3/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
T
Llogits_3/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
E
=logits_3/assert_rank_at_least/static_checks_determined_all_okNoOp
X
predictions_1/logisticSigmoidadd*
T0*'
_output_shapes
:?????????
\
predictions_1/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:?????????
n
#predictions_1/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
predictions_1/two_class_logitsConcatV2predictions_1/zeros_likeadd#predictions_1/two_class_logits/axis*
N*
T0*'
_output_shapes
:?????????
`
broadcast_weights_4/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
y
6broadcast_weights_4/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_4/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
{
5broadcast_weights_4/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_4/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_4/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_4/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_4/ones_like/ConstConstE^broadcast_weights_4/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_4/ones_likeFill#broadcast_weights_4/ones_like/Shape#broadcast_weights_4/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_4Mulbroadcast_weights_4/weightsbroadcast_weights_4/ones_like*
T0*'
_output_shapes
:?????????
y
6broadcast_weights_5/assert_broadcastable/weights/shapeShapebroadcast_weights_4*
T0*
_output_shapes
:
w
5broadcast_weights_5/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
{
5broadcast_weights_5/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_5/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_5/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
2broadcast_weights_5/assert_broadcastable/is_scalarEqual4broadcast_weights_5/assert_broadcastable/is_scalar/x5broadcast_weights_5/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
7broadcast_weights_5/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_5/assert_broadcastable/is_scalar2broadcast_weights_5/assert_broadcastable/is_scalar4broadcast_weights_5/assert_broadcastable/values/rank5broadcast_weights_5/assert_broadcastable/weights/rank5broadcast_weights_5/assert_broadcastable/values/shape6broadcast_weights_5/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_19412*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_19411
?
@broadcast_weights_5/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_5/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 
?
.broadcast_weights_5/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_5/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
?
0broadcast_weights_5/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_4:0
~
0broadcast_weights_5/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
?
0broadcast_weights_5/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
{
0broadcast_weights_5/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
?
4broadcast_weights_5/assert_broadcastable/AssertGuardIf@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_5/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_5/assert_broadcastable/weights/shape5broadcast_weights_5/assert_broadcastable/values/shape2broadcast_weights_5/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_19462*
output_shapes
: *R
then_branchCRA
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_19461
?
=broadcast_weights_5/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_5/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
?
#broadcast_weights_5/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
?
#broadcast_weights_5/ones_like/ConstConst>^broadcast_weights_5/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_5/ones_likeFill#broadcast_weights_5/ones_like/Shape#broadcast_weights_5/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_5Mulbroadcast_weights_4broadcast_weights_5/ones_like*
T0*'
_output_shapes
:?????????
k
Mul_8Mulpredictions_1/logisticbroadcast_weights_5*
T0*'
_output_shapes
:?????????
X
Const_9Const*
_output_shapes
:*
dtype0*
valueB"       
=
Sum_8SumMul_8Const_9*
T0*
_output_shapes
: 
V
AssignAddVariableOp_8AssignAddVariableOphead/metrics/total_2Sum_8*
dtype0
}
ReadVariableOp_9ReadVariableOphead/metrics/total_2^AssignAddVariableOp_8^Sum_8*
_output_shapes
: *
dtype0
Y
Const_10Const*
_output_shapes
:*
dtype0*
valueB"       
L
Sum_9Sumbroadcast_weights_5Const_10*
T0*
_output_shapes
: 
n
AssignAddVariableOp_9AssignAddVariableOphead/metrics/count_2Sum_9^AssignAddVariableOp_8*
dtype0
?
ReadVariableOp_10ReadVariableOphead/metrics/count_2^AssignAddVariableOp_8^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
`
broadcast_weights_6/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
y
6broadcast_weights_6/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_6/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

5broadcast_weights_6/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
T0*
_output_shapes
:
v
4broadcast_weights_6/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_6/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_6/ones_like/ShapeShapecheck_label_range/IdentityE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_6/ones_like/ConstConstE^broadcast_weights_6/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_6/ones_likeFill#broadcast_weights_6/ones_like/Shape#broadcast_weights_6/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_6Mulbroadcast_weights_6/weightsbroadcast_weights_6/ones_like*
T0*'
_output_shapes
:?????????
y
6broadcast_weights_7/assert_broadcastable/weights/shapeShapebroadcast_weights_6*
T0*
_output_shapes
:
w
5broadcast_weights_7/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

5broadcast_weights_7/assert_broadcastable/values/shapeShapecheck_label_range/Identity*
T0*
_output_shapes
:
v
4broadcast_weights_7/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_7/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
2broadcast_weights_7/assert_broadcastable/is_scalarEqual4broadcast_weights_7/assert_broadcastable/is_scalar/x5broadcast_weights_7/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
7broadcast_weights_7/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_7/assert_broadcastable/is_scalar2broadcast_weights_7/assert_broadcastable/is_scalar4broadcast_weights_7/assert_broadcastable/values/rank5broadcast_weights_7/assert_broadcastable/weights/rank5broadcast_weights_7/assert_broadcastable/values/shape6broadcast_weights_7/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_19510*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_19509
?
@broadcast_weights_7/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_7/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 
?
.broadcast_weights_7/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_7/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
?
0broadcast_weights_7/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_6:0
~
0broadcast_weights_7/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
?
0broadcast_weights_7/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*-
value$B" Bcheck_label_range/Identity:0
{
0broadcast_weights_7/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
?
4broadcast_weights_7/assert_broadcastable/AssertGuardIf@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_7/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_7/assert_broadcastable/weights/shape5broadcast_weights_7/assert_broadcastable/values/shape2broadcast_weights_7/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_19560*
output_shapes
: *R
then_branchCRA
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_19559
?
=broadcast_weights_7/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_7/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
?
#broadcast_weights_7/ones_like/ShapeShapecheck_label_range/Identity>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
?
#broadcast_weights_7/ones_like/ConstConst>^broadcast_weights_7/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_7/ones_likeFill#broadcast_weights_7/ones_like/Shape#broadcast_weights_7/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_7Mulbroadcast_weights_6broadcast_weights_7/ones_like*
T0*'
_output_shapes
:?????????
o
Mul_9Mulcheck_label_range/Identitybroadcast_weights_7*
T0*'
_output_shapes
:?????????
Y
Const_11Const*
_output_shapes
:*
dtype0*
valueB"       
?
Sum_10SumMul_9Const_11*
T0*
_output_shapes
: 
X
AssignAddVariableOp_10AssignAddVariableOphead/metrics/total_3Sum_10*
dtype0
?
ReadVariableOp_11ReadVariableOphead/metrics/total_3^AssignAddVariableOp_10^Sum_10*
_output_shapes
: *
dtype0
Y
Const_12Const*
_output_shapes
:*
dtype0*
valueB"       
M
Sum_11Sumbroadcast_weights_7Const_12*
T0*
_output_shapes
: 
q
AssignAddVariableOp_11AssignAddVariableOphead/metrics/count_3Sum_11^AssignAddVariableOp_10*
dtype0
?
ReadVariableOp_12ReadVariableOphead/metrics/count_3^AssignAddVariableOp_10^AssignAddVariableOp_11*
_output_shapes
: *
dtype0

NoOpNoOp
^
ReadVariableOp_13ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
_
sub/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
R
subSubReadVariableOp_13sub/ReadVariableOp*
T0*
_output_shapes
: 
c
Maximum/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
P
MaximumMaximumMaximum/ReadVariableOpsub*
T0*
_output_shapes
: 
`
broadcast_weights_8/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
y
6broadcast_weights_8/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
w
5broadcast_weights_8/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
{
5broadcast_weights_8/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_8/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
L
Dbroadcast_weights_8/assert_broadcastable/static_scalar_check_successNoOp
?
#broadcast_weights_8/ones_like/ShapeShapepredictions_1/logisticE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
#broadcast_weights_8/ones_like/ConstConstE^broadcast_weights_8/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_8/ones_likeFill#broadcast_weights_8/ones_like/Shape#broadcast_weights_8/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_8Mulbroadcast_weights_8/weightsbroadcast_weights_8/ones_like*
T0*'
_output_shapes
:?????????
?
Const_13Const*
_output_shapes	
:?*
dtype0*?
value?B??"???ֳϩ?;ϩ$<??v<ϩ?<C??<???<?=ϩ$=	?9=C?M=}ib=??v=?Ʌ=??=2_?=ϩ?=l??=	??=???=C??=??=}i?=??=???=?? >??>G?
>?>?9>2_>??>ϩ$>?)>l?.>?4>	?9>Wd>>??C>??H>C?M>??R>?X>.D]>}ib>ˎg>?l>h?q>??v>$|>???>Q7?>?Ʌ>?\?>G??>>??><??>?9?>?̗>2_?>???>???>(?>ϩ?>v<?>ϩ>?a?>l??>??>??>b??>	??>?ѻ>Wd?>???>???>M?>???>?A?>C??>?f?>???>9??>??>???>.D?>???>}i?>$??>ˎ?>r!?>??>?F?>h??>l?>???>^??>$?>???>?? ????Q7???????L??\???	?G?
??8????B?????]?<??????9?7???????2_???????-;?????? ?("?{`#?ϩ$?#?%?v<'?ʅ(??)?q+??a,??-?l?.??=0??1?g?2??4?c5?b?6???7?	?9?]?:???;?=?Wd>???????@?R@B???C???D?MF??eG???H?H?I??AK???L?C?M??O??fP?>?Q???R??BT?9?U???V??X?3hY???Z???[?.D]???^???_?) a?}ib?вc?$?d?xEf?ˎg??h?r!j??jk??l?m?m??Fo??p?h?q??"s?lt?c?u???v?
Hx?^?y???z?$|?Ym}???~? ??
K
	Cast_19/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_20/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#assert_greater_equal_2/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_20/x*
T0*'
_output_shapes
:?????????
m
assert_greater_equal_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_2/AllAll#assert_greater_equal_2/GreaterEqualassert_greater_equal_2/Const*
_output_shapes
: 
|
#assert_greater_equal_2/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0
?
%assert_greater_equal_2/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
?
%assert_greater_equal_2/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
x
%assert_greater_equal_2/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_20/x:0) = 
?
)assert_greater_equal_2/Assert/AssertGuardIfassert_greater_equal_2/Allassert_greater_equal_2/Allpredictions_1/logistic	Cast_20/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_2_Assert_AssertGuard_false_19617*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_2_Assert_AssertGuard_true_19616
?
2assert_greater_equal_2/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_2/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_21/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??

assert_less_equal_2/LessEqual	LessEqualpredictions_1/logistic	Cast_21/x*
T0*'
_output_shapes
:?????????
j
assert_less_equal_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_2/AllAllassert_less_equal_2/LessEqualassert_less_equal_2/Const*
_output_shapes
: 
y
 assert_less_equal_2/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1
?
"assert_less_equal_2/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
?
"assert_less_equal_2/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
u
"assert_less_equal_2/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_21/x:0) = 
?
&assert_less_equal_2/Assert/AssertGuardIfassert_less_equal_2/Allassert_less_equal_2/Allpredictions_1/logistic	Cast_21/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_2_Assert_AssertGuard_false_19643*
output_shapes
: *D
then_branch5R3
1assert_less_equal_2_Assert_AssertGuard_true_19642
?
/assert_less_equal_2/Assert/AssertGuard/IdentityIdentity&assert_less_equal_2/Assert/AssertGuard*
T0
*
_output_shapes
: 
M
Shape_2Shapepredictions_1/logistic*
T0*
_output_shapes
:
_
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_5StridedSliceShape_2strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_6StridedSliceShape_2strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
Z
Prod_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
Z
Prod_2Prodstrided_slice_6Prod_2/reduction_indices*
T0*
_output_shapes
: 
?
cond_2StatelessIf	Cast_19/xProd_2*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *%
else_branchR
cond_2_false_19672*
output_shapes
: *$
then_branchR
cond_2_true_19671
D
cond_2/IdentityIdentitycond_2*
T0*
_output_shapes
: 
`
Reshape_8/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
o
	Reshape_8Reshapepredictions_1/logisticReshape_8/shape*
T0*'
_output_shapes
:?????????
l
Cast_22Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:?????????
`
Reshape_9/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
`
	Reshape_9ReshapeCast_22Reshape_9/shape*
T0
*'
_output_shapes
:?????????
G
mul_10Mulstrided_slice_5Prod_2*
T0*
_output_shapes
: 
a
Reshape_10/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????
[

Reshape_10ReshapeConst_13Reshape_10/shape*
T0*
_output_shapes
:	?
K
	stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :
P
stack_2Pack	stack_2/0mul_10*
N*
T0*
_output_shapes
:
V
Tile_8Tile
Reshape_10stack_2*
T0*(
_output_shapes
:??????????
a
Tile_9/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
^
Tile_9Tile	Reshape_8Tile_9/multiples*
T0*(
_output_shapes
:??????????
W
	Greater_2GreaterTile_9Tile_8*
T0*(
_output_shapes
:??????????
b
Tile_10/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
`
Tile_10Tile	Reshape_9Tile_10/multiples*
T0
*(
_output_shapes
:??????????
y
6broadcast_weights_9/assert_broadcastable/weights/shapeShapebroadcast_weights_8*
T0*
_output_shapes
:
w
5broadcast_weights_9/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
{
5broadcast_weights_9/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
v
4broadcast_weights_9/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
4broadcast_weights_9/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
2broadcast_weights_9/assert_broadcastable/is_scalarEqual4broadcast_weights_9/assert_broadcastable/is_scalar/x5broadcast_weights_9/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
7broadcast_weights_9/assert_broadcastable/is_valid_shapeStatelessIf2broadcast_weights_9/assert_broadcastable/is_scalar2broadcast_weights_9/assert_broadcastable/is_scalar4broadcast_weights_9/assert_broadcastable/values/rank5broadcast_weights_9/assert_broadcastable/weights/rank5broadcast_weights_9/assert_broadcastable/values/shape6broadcast_weights_9/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *V
else_branchGRE
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_19703*
output_shapes
: *U
then_branchFRD
Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_19702
?
@broadcast_weights_9/assert_broadcastable/is_valid_shape/IdentityIdentity7broadcast_weights_9/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 
?
.broadcast_weights_9/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

0broadcast_weights_9/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
?
0broadcast_weights_9/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_8:0
~
0broadcast_weights_9/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
?
0broadcast_weights_9/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
{
0broadcast_weights_9/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
?
4broadcast_weights_9/assert_broadcastable/AssertGuardIf@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity@broadcast_weights_9/assert_broadcastable/is_valid_shape/Identity6broadcast_weights_9/assert_broadcastable/weights/shape5broadcast_weights_9/assert_broadcastable/values/shape2broadcast_weights_9/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *S
else_branchDRB
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_19753*
output_shapes
: *R
then_branchCRA
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_19752
?
=broadcast_weights_9/assert_broadcastable/AssertGuard/IdentityIdentity4broadcast_weights_9/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
?
#broadcast_weights_9/ones_like/ShapeShapepredictions_1/logistic>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
?
#broadcast_weights_9/ones_like/ConstConst>^broadcast_weights_9/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_9/ones_likeFill#broadcast_weights_9/ones_like/Shape#broadcast_weights_9/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_9Mulbroadcast_weights_8broadcast_weights_9/ones_like*
T0*'
_output_shapes
:?????????
T
Reshape_11/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
b
Reshape_11/shapePackReshape_11/shape/0mul_10*
N*
T0*
_output_shapes
:
n

Reshape_11Reshapebroadcast_weights_9Reshape_11/shape*
T0*'
_output_shapes
:?????????
b
Tile_11/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
a
Tile_11Tile
Reshape_11Tile_11/multiples*
T0*(
_output_shapes
:??????????
O
LogicalNot_2
LogicalNot	Greater_2*(
_output_shapes
:??????????
M
LogicalNot_3
LogicalNotTile_10*(
_output_shapes
:??????????
X
LogicalAnd_4
LogicalAndTile_10	Greater_2*(
_output_shapes
:??????????
_
Cast_23CastLogicalAnd_4*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_11MulCast_23Tile_11*
T0*(
_output_shapes
:??????????
Z
Sum_12/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_12Summul_11Sum_12/reduction_indices*
T0*
_output_shapes	
:?
a
AssignAddVariableOp_12AssignAddVariableOphead/metrics/true_positives_2Sum_12*
dtype0
?
ReadVariableOp_14ReadVariableOphead/metrics/true_positives_2^AssignAddVariableOp_12*
_output_shapes	
:?*
dtype0
[
LogicalAnd_5
LogicalAndTile_10LogicalNot_2*(
_output_shapes
:??????????
_
Cast_24CastLogicalAnd_5*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_12MulCast_24Tile_11*
T0*(
_output_shapes
:??????????
Z
Sum_13/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_13Summul_12Sum_13/reduction_indices*
T0*
_output_shapes	
:?
b
AssignAddVariableOp_13AssignAddVariableOphead/metrics/false_negatives_1Sum_13*
dtype0
?
ReadVariableOp_15ReadVariableOphead/metrics/false_negatives_1^AssignAddVariableOp_13*
_output_shapes	
:?*
dtype0
]
LogicalAnd_6
LogicalAndLogicalNot_3	Greater_2*(
_output_shapes
:??????????
_
Cast_25CastLogicalAnd_6*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_13MulCast_25Tile_11*
T0*(
_output_shapes
:??????????
Z
Sum_14/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_14Summul_13Sum_14/reduction_indices*
T0*
_output_shapes	
:?
b
AssignAddVariableOp_14AssignAddVariableOphead/metrics/false_positives_1Sum_14*
dtype0
?
ReadVariableOp_16ReadVariableOphead/metrics/false_positives_1^AssignAddVariableOp_14*
_output_shapes	
:?*
dtype0
`
LogicalAnd_7
LogicalAndLogicalNot_3LogicalNot_2*(
_output_shapes
:??????????
_
Cast_26CastLogicalAnd_7*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_14MulCast_26Tile_11*
T0*(
_output_shapes
:??????????
Z
Sum_15/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_15Summul_14Sum_15/reduction_indices*
T0*
_output_shapes	
:?
_
AssignAddVariableOp_15AssignAddVariableOphead/metrics/true_negativesSum_15*
dtype0
?
ReadVariableOp_17ReadVariableOphead/metrics/true_negatives^AssignAddVariableOp_15*
_output_shapes	
:?*
dtype0
x
group_deps_2NoOp^AssignAddVariableOp_12^AssignAddVariableOp_13^AssignAddVariableOp_14^AssignAddVariableOp_15
a
broadcast_weights_10/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
z
7broadcast_weights_10/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
x
6broadcast_weights_10/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
|
6broadcast_weights_10/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
w
5broadcast_weights_10/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
M
Ebroadcast_weights_10/assert_broadcastable/static_scalar_check_successNoOp
?
$broadcast_weights_10/ones_like/ShapeShapepredictions_1/logisticF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
$broadcast_weights_10/ones_like/ConstConstF^broadcast_weights_10/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_10/ones_likeFill$broadcast_weights_10/ones_like/Shape$broadcast_weights_10/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_10Mulbroadcast_weights_10/weightsbroadcast_weights_10/ones_like*
T0*'
_output_shapes
:?????????
?
Const_14Const*
_output_shapes	
:?*
dtype0*?
value?B??"???ֳϩ?;ϩ$<??v<ϩ?<C??<???<?=ϩ$=	?9=C?M=}ib=??v=?Ʌ=??=2_?=ϩ?=l??=	??=???=C??=??=}i?=??=???=?? >??>G?
>?>?9>2_>??>ϩ$>?)>l?.>?4>	?9>Wd>>??C>??H>C?M>??R>?X>.D]>}ib>ˎg>?l>h?q>??v>$|>???>Q7?>?Ʌ>?\?>G??>>??><??>?9?>?̗>2_?>???>???>(?>ϩ?>v<?>ϩ>?a?>l??>??>??>b??>	??>?ѻ>Wd?>???>???>M?>???>?A?>C??>?f?>???>9??>??>???>.D?>???>}i?>$??>ˎ?>r!?>??>?F?>h??>l?>???>^??>$?>???>?? ????Q7???????L??\???	?G?
??8????B?????]?<??????9?7???????2_???????-;?????? ?("?{`#?ϩ$?#?%?v<'?ʅ(??)?q+??a,??-?l?.??=0??1?g?2??4?c5?b?6???7?	?9?]?:???;?=?Wd>???????@?R@B???C???D?MF??eG???H?H?I??AK???L?C?M??O??fP?>?Q???R??BT?9?U???V??X?3hY???Z???[?.D]???^???_?) a?}ib?вc?$?d?xEf?ˎg??h?r!j??jk??l?m?m??Fo??p?h?q??"s?lt?c?u???v?
Hx?^?y???z?$|?Ym}???~? ??
K
	Cast_27/xConst*
_output_shapes
: *
dtype0
*
value	B
 Z
N
	Cast_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#assert_greater_equal_3/GreaterEqualGreaterEqualpredictions_1/logistic	Cast_28/x*
T0*'
_output_shapes
:?????????
m
assert_greater_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
|
assert_greater_equal_3/AllAll#assert_greater_equal_3/GreaterEqualassert_greater_equal_3/Const*
_output_shapes
: 
|
#assert_greater_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 0
?
%assert_greater_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
?
%assert_greater_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
x
%assert_greater_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_28/x:0) = 
?
)assert_greater_equal_3/Assert/AssertGuardIfassert_greater_equal_3/Allassert_greater_equal_3/Allpredictions_1/logistic	Cast_28/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *H
else_branch9R7
5assert_greater_equal_3_Assert_AssertGuard_false_19829*
output_shapes
: *G
then_branch8R6
4assert_greater_equal_3_Assert_AssertGuard_true_19828
?
2assert_greater_equal_3/Assert/AssertGuard/IdentityIdentity)assert_greater_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
N
	Cast_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??

assert_less_equal_3/LessEqual	LessEqualpredictions_1/logistic	Cast_29/x*
T0*'
_output_shapes
:?????????
j
assert_less_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
p
assert_less_equal_3/AllAllassert_less_equal_3/LessEqualassert_less_equal_3/Const*
_output_shapes
: 
y
 assert_less_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 1
?
"assert_less_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
?
"assert_less_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 
u
"assert_less_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_29/x:0) = 
?
&assert_less_equal_3/Assert/AssertGuardIfassert_less_equal_3/Allassert_less_equal_3/Allpredictions_1/logistic	Cast_29/x*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *E
else_branch6R4
2assert_less_equal_3_Assert_AssertGuard_false_19855*
output_shapes
: *D
then_branch5R3
1assert_less_equal_3_Assert_AssertGuard_true_19854
?
/assert_less_equal_3/Assert/AssertGuard/IdentityIdentity&assert_less_equal_3/Assert/AssertGuard*
T0
*
_output_shapes
: 
M
Shape_3Shapepredictions_1/logistic*
T0*
_output_shapes
:
_
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_7StridedSliceShape_3strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
_
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_8StridedSliceShape_3strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
Z
Prod_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
Z
Prod_3Prodstrided_slice_8Prod_3/reduction_indices*
T0*
_output_shapes
: 
?
cond_3StatelessIf	Cast_27/xProd_3*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *%
else_branchR
cond_3_false_19884*
output_shapes
: *$
then_branchR
cond_3_true_19883
D
cond_3/IdentityIdentitycond_3*
T0*
_output_shapes
: 
a
Reshape_12/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
q

Reshape_12Reshapepredictions_1/logisticReshape_12/shape*
T0*'
_output_shapes
:?????????
l
Cast_30Castcheck_label_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:?????????
a
Reshape_13/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ????
b

Reshape_13ReshapeCast_30Reshape_13/shape*
T0
*'
_output_shapes
:?????????
G
mul_15Mulstrided_slice_7Prod_3*
T0*
_output_shapes
: 
a
Reshape_14/shapeConst*
_output_shapes
:*
dtype0*
valueB"?   ????
[

Reshape_14ReshapeConst_14Reshape_14/shape*
T0*
_output_shapes
:	?
K
	stack_3/0Const*
_output_shapes
: *
dtype0*
value	B :
P
stack_3Pack	stack_3/0mul_15*
N*
T0*
_output_shapes
:
W
Tile_12Tile
Reshape_14stack_3*
T0*(
_output_shapes
:??????????
b
Tile_13/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
a
Tile_13Tile
Reshape_12Tile_13/multiples*
T0*(
_output_shapes
:??????????
Y
	Greater_3GreaterTile_13Tile_12*
T0*(
_output_shapes
:??????????
b
Tile_14/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
a
Tile_14Tile
Reshape_13Tile_14/multiples*
T0
*(
_output_shapes
:??????????
{
7broadcast_weights_11/assert_broadcastable/weights/shapeShapebroadcast_weights_10*
T0*
_output_shapes
:
x
6broadcast_weights_11/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :
|
6broadcast_weights_11/assert_broadcastable/values/shapeShapepredictions_1/logistic*
T0*
_output_shapes
:
w
5broadcast_weights_11/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
w
5broadcast_weights_11/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
?
3broadcast_weights_11/assert_broadcastable/is_scalarEqual5broadcast_weights_11/assert_broadcastable/is_scalar/x6broadcast_weights_11/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
8broadcast_weights_11/assert_broadcastable/is_valid_shapeStatelessIf3broadcast_weights_11/assert_broadcastable/is_scalar3broadcast_weights_11/assert_broadcastable/is_scalar5broadcast_weights_11/assert_broadcastable/values/rank6broadcast_weights_11/assert_broadcastable/weights/rank6broadcast_weights_11/assert_broadcastable/values/shape7broadcast_weights_11/assert_broadcastable/weights/shape*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *W
else_branchHRF
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_19915*
output_shapes
: *V
then_branchGRE
Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_19914
?
Abroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityIdentity8broadcast_weights_11/assert_broadcastable/is_valid_shape*
T0
*
_output_shapes
: 
?
/broadcast_weights_11/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.
?
1broadcast_weights_11/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
?
1broadcast_weights_11/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*'
valueB Bbroadcast_weights_10:0

1broadcast_weights_11/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
?
1broadcast_weights_11/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:0
|
1broadcast_weights_11/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
?
5broadcast_weights_11/assert_broadcastable/AssertGuardIfAbroadcast_weights_11/assert_broadcastable/is_valid_shape/IdentityAbroadcast_weights_11/assert_broadcastable/is_valid_shape/Identity7broadcast_weights_11/assert_broadcastable/weights/shape6broadcast_weights_11/assert_broadcastable/values/shape3broadcast_weights_11/assert_broadcastable/is_scalar*
Tcond0
*
Tin
2

*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *T
else_branchERC
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_19965*
output_shapes
: *S
then_branchDRB
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_19964
?
>broadcast_weights_11/assert_broadcastable/AssertGuard/IdentityIdentity5broadcast_weights_11/assert_broadcastable/AssertGuard*
T0
*
_output_shapes
: 
?
$broadcast_weights_11/ones_like/ShapeShapepredictions_1/logistic?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
T0*
_output_shapes
:
?
$broadcast_weights_11/ones_like/ConstConst?^broadcast_weights_11/assert_broadcastable/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
broadcast_weights_11/ones_likeFill$broadcast_weights_11/ones_like/Shape$broadcast_weights_11/ones_like/Const*
T0*'
_output_shapes
:?????????
?
broadcast_weights_11Mulbroadcast_weights_10broadcast_weights_11/ones_like*
T0*'
_output_shapes
:?????????
T
Reshape_15/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
b
Reshape_15/shapePackReshape_15/shape/0mul_15*
N*
T0*
_output_shapes
:
o

Reshape_15Reshapebroadcast_weights_11Reshape_15/shape*
T0*'
_output_shapes
:?????????
b
Tile_15/multiplesConst*
_output_shapes
:*
dtype0*
valueB"?      
a
Tile_15Tile
Reshape_15Tile_15/multiples*
T0*(
_output_shapes
:??????????
O
LogicalNot_4
LogicalNot	Greater_3*(
_output_shapes
:??????????
M
LogicalNot_5
LogicalNotTile_14*(
_output_shapes
:??????????
X
LogicalAnd_8
LogicalAndTile_14	Greater_3*(
_output_shapes
:??????????
_
Cast_31CastLogicalAnd_8*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_16MulCast_31Tile_15*
T0*(
_output_shapes
:??????????
Z
Sum_16/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_16Summul_16Sum_16/reduction_indices*
T0*
_output_shapes	
:?
a
AssignAddVariableOp_16AssignAddVariableOphead/metrics/true_positives_3Sum_16*
dtype0
?
ReadVariableOp_18ReadVariableOphead/metrics/true_positives_3^AssignAddVariableOp_16*
_output_shapes	
:?*
dtype0
[
LogicalAnd_9
LogicalAndTile_14LogicalNot_4*(
_output_shapes
:??????????
_
Cast_32CastLogicalAnd_9*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_17MulCast_32Tile_15*
T0*(
_output_shapes
:??????????
Z
Sum_17/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_17Summul_17Sum_17/reduction_indices*
T0*
_output_shapes	
:?
b
AssignAddVariableOp_17AssignAddVariableOphead/metrics/false_negatives_2Sum_17*
dtype0
?
ReadVariableOp_19ReadVariableOphead/metrics/false_negatives_2^AssignAddVariableOp_17*
_output_shapes	
:?*
dtype0
^
LogicalAnd_10
LogicalAndLogicalNot_5	Greater_3*(
_output_shapes
:??????????
`
Cast_33CastLogicalAnd_10*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_18MulCast_33Tile_15*
T0*(
_output_shapes
:??????????
Z
Sum_18/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_18Summul_18Sum_18/reduction_indices*
T0*
_output_shapes	
:?
b
AssignAddVariableOp_18AssignAddVariableOphead/metrics/false_positives_2Sum_18*
dtype0
?
ReadVariableOp_20ReadVariableOphead/metrics/false_positives_2^AssignAddVariableOp_18*
_output_shapes	
:?*
dtype0
a
LogicalAnd_11
LogicalAndLogicalNot_5LogicalNot_4*(
_output_shapes
:??????????
`
Cast_34CastLogicalAnd_11*

DstT0*

SrcT0
*(
_output_shapes
:??????????
R
mul_19MulCast_34Tile_15*
T0*(
_output_shapes
:??????????
Z
Sum_19/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
U
Sum_19Summul_19Sum_19/reduction_indices*
T0*
_output_shapes	
:?
a
AssignAddVariableOp_19AssignAddVariableOphead/metrics/true_negatives_1Sum_19*
dtype0
?
ReadVariableOp_21ReadVariableOphead/metrics/true_negatives_1^AssignAddVariableOp_19*
_output_shapes	
:?*
dtype0
x
group_deps_3NoOp^AssignAddVariableOp_16^AssignAddVariableOp_17^AssignAddVariableOp_18^AssignAddVariableOp_19
d
div_no_nan/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0
f
div_no_nan/ReadVariableOp_1ReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_74Identity
div_no_nan*
T0*
_output_shapes
: 
h
div_no_nan_1/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0
j
div_no_nan_1/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_75Identitydiv_no_nan_1*
T0*
_output_shapes
: 
i
ReadVariableOp_22ReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
m
add_1/ReadVariableOpReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
\
add_1AddV2ReadVariableOp_22add_1/ReadVariableOp*
T0*
_output_shapes
:
s
div_no_nan_2/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
a
div_no_nan_2DivNoNandiv_no_nan_2/ReadVariableOpadd_1*
T0*
_output_shapes
:
_
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_9StridedSlicediv_no_nan_2strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
I
Identity_76Identitystrided_slice_9*
T0*
_output_shapes
: 
k
ReadVariableOp_23ReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
m
add_2/ReadVariableOpReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0
\
add_2AddV2ReadVariableOp_23add_2/ReadVariableOp*
T0*
_output_shapes
:
u
div_no_nan_3/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
a
div_no_nan_3DivNoNandiv_no_nan_3/ReadVariableOpadd_2*
T0*
_output_shapes
:
`
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_10StridedSlicediv_no_nan_3strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_77Identitystrided_slice_10*
T0*
_output_shapes
: 
h
div_no_nan_4/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0
j
div_no_nan_4/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0
u
div_no_nan_4DivNoNandiv_no_nan_4/ReadVariableOpdiv_no_nan_4/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_78Identitydiv_no_nan_4*
T0*
_output_shapes
: 
h
div_no_nan_5/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
j
div_no_nan_5/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
u
div_no_nan_5DivNoNandiv_no_nan_5/ReadVariableOpdiv_no_nan_5/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_79Identitydiv_no_nan_5*
T0*
_output_shapes
: 
h
div_no_nan_6/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
_
div_no_nan_6DivNoNanMaximumdiv_no_nan_6/ReadVariableOp*
T0*
_output_shapes
: 
F
Identity_80Identitydiv_no_nan_6*
T0*
_output_shapes
: 
l
ReadVariableOp_24ReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:?*
dtype0
p
add_3/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:?*
dtype0
]
add_3AddV2ReadVariableOp_24add_3/ReadVariableOp*
T0*
_output_shapes	
:?
v
div_no_nan_7/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:?*
dtype0
b
div_no_nan_7DivNoNandiv_no_nan_7/ReadVariableOpadd_3*
T0*
_output_shapes	
:?
m
ReadVariableOp_25ReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:?*
dtype0
m
add_4/ReadVariableOpReadVariableOphead/metrics/true_negatives*
_output_shapes	
:?*
dtype0
]
add_4AddV2ReadVariableOp_25add_4/ReadVariableOp*
T0*
_output_shapes	
:?
w
div_no_nan_8/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:?*
dtype0
b
div_no_nan_8DivNoNandiv_no_nan_8/ReadVariableOpadd_4*
T0*
_output_shapes	
:?
`
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_11StridedSlicediv_no_nan_7strided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_12StridedSlicediv_no_nan_7strided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
X
add_5AddV2strided_slice_11strided_slice_12*
T0*
_output_shapes	
:?
N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
J
truedivRealDivadd_5	truediv/y*
T0*
_output_shapes	
:?
`
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_13StridedSlicediv_no_nan_8strided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_14StridedSlicediv_no_nan_8strided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_1Substrided_slice_13strided_slice_14*
T0*
_output_shapes	
:?
C
Mul_20Mulsub_1truediv*
T0*
_output_shapes	
:?
R
Const_15Const*
_output_shapes
:*
dtype0*
valueB: 
=
aucSumMul_20Const_15*
T0*
_output_shapes
: 
=
Identity_81Identityauc*
T0*
_output_shapes
: 
l
ReadVariableOp_26ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_15StridedSliceReadVariableOp_26strided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
l
ReadVariableOp_27ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_16StridedSliceReadVariableOp_27strided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_2Substrided_slice_15strided_slice_16*
T0*
_output_shapes	
:?
l
ReadVariableOp_28ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
p
add_6/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:?*
dtype0
]
add_6AddV2ReadVariableOp_28add_6/ReadVariableOp*
T0*
_output_shapes	
:?
`
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_17StridedSliceadd_6strided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_18StridedSliceadd_6strided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_3Substrided_slice_17strided_slice_18*
T0*
_output_shapes	
:?
P
Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
N
	Maximum_1Maximumsub_3Maximum_1/y*
T0*
_output_shapes	
:?
N

prec_slopeDivNoNansub_2	Maximum_1*
T0*
_output_shapes	
:?
l
ReadVariableOp_29ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_19StridedSliceReadVariableOp_29strided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
`
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_20StridedSliceadd_6strided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
Q
Mul_21Mul
prec_slopestrided_slice_20*
T0*
_output_shapes	
:?
L
sub_4Substrided_slice_19Mul_21*
T0*
_output_shapes	
:?
`
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_21StridedSliceadd_6strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
P
Greater_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_4Greaterstrided_slice_21Greater_4/y*
T0*
_output_shapes	
:?
`
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_22StridedSliceadd_6strided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
P
Greater_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_5Greaterstrided_slice_22Greater_5/y*
T0*
_output_shapes	
:?
N
LogicalAnd_12
LogicalAnd	Greater_4	Greater_5*
_output_shapes	
:?
`
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_23StridedSliceadd_6strided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_24StridedSliceadd_6strided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
P
Maximum_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Maximum_2Maximumstrided_slice_24Maximum_2/y*
T0*
_output_shapes	
:?
d
recall_relative_ratioDivNoNanstrided_slice_23	Maximum_2*
T0*
_output_shapes	
:?
`
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_25StridedSliceadd_6strided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
Z
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?
T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
Y
	ones_likeFillones_like/Shapeones_like/Const*
T0*
_output_shapes	
:?
g
SelectSelectLogicalAnd_12recall_relative_ratio	ones_like*
T0*
_output_shapes	
:?
8
LogLogSelect*
T0*
_output_shapes	
:?
?
mul_22Mulsub_4Log*
T0*
_output_shapes	
:?
C
add_7AddV2sub_2mul_22*
T0*
_output_shapes	
:?
F
mul_23Mul
prec_slopeadd_7*
T0*
_output_shapes	
:?
l
ReadVariableOp_30ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_26/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_26/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_26/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_26StridedSliceReadVariableOp_30strided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
m
ReadVariableOp_31ReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:?*
dtype0
`
strided_slice_27/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_27/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_27/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_27StridedSliceReadVariableOp_31strided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
X
add_8AddV2strided_slice_26strided_slice_27*
T0*
_output_shapes	
:?
P
Maximum_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
N
	Maximum_3Maximumadd_8Maximum_3/y*
T0*
_output_shapes	
:?
U
pr_auc_incrementDivNoNanmul_23	Maximum_3*
T0*
_output_shapes	
:?
R
Const_16Const*
_output_shapes
:*
dtype0*
valueB: 
V
interpolate_pr_aucSumpr_auc_incrementConst_16*
T0*
_output_shapes
: 
L
Identity_82Identityinterpolate_pr_auc*
T0*
_output_shapes
: 
f
div_no_nan_9/ReadVariableOpReadVariableOphead/metrics/total*
_output_shapes
: *
dtype0
h
div_no_nan_9/ReadVariableOp_1ReadVariableOphead/metrics/count*
_output_shapes
: *
dtype0
u
div_no_nan_9DivNoNandiv_no_nan_9/ReadVariableOpdiv_no_nan_9/ReadVariableOp_1*
T0*
_output_shapes
: 
F
Identity_83Identitydiv_no_nan_9*
T0*
_output_shapes
: 
i
div_no_nan_10/ReadVariableOpReadVariableOphead/metrics/total_1*
_output_shapes
: *
dtype0
k
div_no_nan_10/ReadVariableOp_1ReadVariableOphead/metrics/count_1*
_output_shapes
: *
dtype0
x
div_no_nan_10DivNoNandiv_no_nan_10/ReadVariableOpdiv_no_nan_10/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_84Identitydiv_no_nan_10*
T0*
_output_shapes
: 
i
ReadVariableOp_32ReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
m
add_9/ReadVariableOpReadVariableOphead/metrics/false_positives*
_output_shapes
:*
dtype0
\
add_9AddV2ReadVariableOp_32add_9/ReadVariableOp*
T0*
_output_shapes
:
t
div_no_nan_11/ReadVariableOpReadVariableOphead/metrics/true_positives*
_output_shapes
:*
dtype0
c
div_no_nan_11DivNoNandiv_no_nan_11/ReadVariableOpadd_9*
T0*
_output_shapes
:
`
strided_slice_28/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_28/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_28/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_28StridedSlicediv_no_nan_11strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_85Identitystrided_slice_28*
T0*
_output_shapes
: 
k
ReadVariableOp_33ReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
n
add_10/ReadVariableOpReadVariableOphead/metrics/false_negatives*
_output_shapes
:*
dtype0
^
add_10AddV2ReadVariableOp_33add_10/ReadVariableOp*
T0*
_output_shapes
:
v
div_no_nan_12/ReadVariableOpReadVariableOphead/metrics/true_positives_1*
_output_shapes
:*
dtype0
d
div_no_nan_12DivNoNandiv_no_nan_12/ReadVariableOpadd_10*
T0*
_output_shapes
:
`
strided_slice_29/stackConst*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_29/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_29/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_29StridedSlicediv_no_nan_12strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
J
Identity_86Identitystrided_slice_29*
T0*
_output_shapes
: 
i
div_no_nan_13/ReadVariableOpReadVariableOphead/metrics/total_2*
_output_shapes
: *
dtype0
k
div_no_nan_13/ReadVariableOp_1ReadVariableOphead/metrics/count_2*
_output_shapes
: *
dtype0
x
div_no_nan_13DivNoNandiv_no_nan_13/ReadVariableOpdiv_no_nan_13/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_87Identitydiv_no_nan_13*
T0*
_output_shapes
: 
i
div_no_nan_14/ReadVariableOpReadVariableOphead/metrics/total_3*
_output_shapes
: *
dtype0
k
div_no_nan_14/ReadVariableOp_1ReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
x
div_no_nan_14DivNoNandiv_no_nan_14/ReadVariableOpdiv_no_nan_14/ReadVariableOp_1*
T0*
_output_shapes
: 
G
Identity_88Identitydiv_no_nan_14*
T0*
_output_shapes
: 
i
div_no_nan_15/ReadVariableOpReadVariableOphead/metrics/count_3*
_output_shapes
: *
dtype0
a
div_no_nan_15DivNoNanMaximumdiv_no_nan_15/ReadVariableOp*
T0*
_output_shapes
: 
G
Identity_89Identitydiv_no_nan_15*
T0*
_output_shapes
: 
l
ReadVariableOp_34ReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:?*
dtype0
q
add_11/ReadVariableOpReadVariableOphead/metrics/false_negatives_1*
_output_shapes	
:?*
dtype0
_
add_11AddV2ReadVariableOp_34add_11/ReadVariableOp*
T0*
_output_shapes	
:?
w
div_no_nan_16/ReadVariableOpReadVariableOphead/metrics/true_positives_2*
_output_shapes	
:?*
dtype0
e
div_no_nan_16DivNoNandiv_no_nan_16/ReadVariableOpadd_11*
T0*
_output_shapes	
:?
m
ReadVariableOp_35ReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:?*
dtype0
n
add_12/ReadVariableOpReadVariableOphead/metrics/true_negatives*
_output_shapes	
:?*
dtype0
_
add_12AddV2ReadVariableOp_35add_12/ReadVariableOp*
T0*
_output_shapes	
:?
x
div_no_nan_17/ReadVariableOpReadVariableOphead/metrics/false_positives_1*
_output_shapes	
:?*
dtype0
e
div_no_nan_17DivNoNandiv_no_nan_17/ReadVariableOpadd_12*
T0*
_output_shapes	
:?
`
strided_slice_30/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_30/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_30/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_30StridedSlicediv_no_nan_16strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_31/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_31/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_31/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_31StridedSlicediv_no_nan_16strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
Y
add_13AddV2strided_slice_30strided_slice_31*
T0*
_output_shapes	
:?
P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
O
	truediv_1RealDivadd_13truediv_1/y*
T0*
_output_shapes	
:?
`
strided_slice_32/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_32/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_32/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_32StridedSlicediv_no_nan_17strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_33/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_33/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_33/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_33StridedSlicediv_no_nan_17strided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_5Substrided_slice_32strided_slice_33*
T0*
_output_shapes	
:?
E
Mul_24Mulsub_5	truediv_1*
T0*
_output_shapes	
:?
R
Const_17Const*
_output_shapes
:*
dtype0*
valueB: 
?
auc_1SumMul_24Const_17*
T0*
_output_shapes
: 
?
Identity_90Identityauc_1*
T0*
_output_shapes
: 
l
ReadVariableOp_36ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_34/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_34/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_34/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_34StridedSliceReadVariableOp_36strided_slice_34/stackstrided_slice_34/stack_1strided_slice_34/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
l
ReadVariableOp_37ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_35/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_35/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_35/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_35StridedSliceReadVariableOp_37strided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_6Substrided_slice_34strided_slice_35*
T0*
_output_shapes	
:?
l
ReadVariableOp_38ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
q
add_14/ReadVariableOpReadVariableOphead/metrics/false_positives_2*
_output_shapes	
:?*
dtype0
_
add_14AddV2ReadVariableOp_38add_14/ReadVariableOp*
T0*
_output_shapes	
:?
`
strided_slice_36/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_36/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_36/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_36StridedSliceadd_14strided_slice_36/stackstrided_slice_36/stack_1strided_slice_36/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_37/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_37/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_37/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_37StridedSliceadd_14strided_slice_37/stackstrided_slice_37/stack_1strided_slice_37/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
V
sub_7Substrided_slice_36strided_slice_37*
T0*
_output_shapes	
:?
P
Maximum_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
N
	Maximum_4Maximumsub_7Maximum_4/y*
T0*
_output_shapes	
:?
P
prec_slope_1DivNoNansub_6	Maximum_4*
T0*
_output_shapes	
:?
l
ReadVariableOp_39ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_38/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_38/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_38/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_38StridedSliceReadVariableOp_39strided_slice_38/stackstrided_slice_38/stack_1strided_slice_38/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
`
strided_slice_39/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_39/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_39/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_39StridedSliceadd_14strided_slice_39/stackstrided_slice_39/stack_1strided_slice_39/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
S
Mul_25Mulprec_slope_1strided_slice_39*
T0*
_output_shapes	
:?
L
sub_8Substrided_slice_38Mul_25*
T0*
_output_shapes	
:?
`
strided_slice_40/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_40/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_40/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_40StridedSliceadd_14strided_slice_40/stackstrided_slice_40/stack_1strided_slice_40/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
P
Greater_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_6Greaterstrided_slice_40Greater_6/y*
T0*
_output_shapes	
:?
`
strided_slice_41/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_41/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_41/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_41StridedSliceadd_14strided_slice_41/stackstrided_slice_41/stack_1strided_slice_41/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
P
Greater_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Greater_7Greaterstrided_slice_41Greater_7/y*
T0*
_output_shapes	
:?
N
LogicalAnd_13
LogicalAnd	Greater_6	Greater_7*
_output_shapes	
:?
`
strided_slice_42/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
strided_slice_42/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
b
strided_slice_42/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_42StridedSliceadd_14strided_slice_42/stackstrided_slice_42/stack_1strided_slice_42/stack_2*
Index0*
T0*
_output_shapes	
:?*

begin_mask
`
strided_slice_43/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_43/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_43/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_43StridedSliceadd_14strided_slice_43/stackstrided_slice_43/stack_1strided_slice_43/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
P
Maximum_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
	Maximum_5Maximumstrided_slice_43Maximum_5/y*
T0*
_output_shapes	
:?
f
recall_relative_ratio_1DivNoNanstrided_slice_42	Maximum_5*
T0*
_output_shapes	
:?
`
strided_slice_44/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_44/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_44/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_44StridedSliceadd_14strided_slice_44/stackstrided_slice_44/stack_1strided_slice_44/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
\
ones_like_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?
V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
_
ones_like_1Fillones_like_1/Shapeones_like_1/Const*
T0*
_output_shapes	
:?
m
Select_1SelectLogicalAnd_13recall_relative_ratio_1ones_like_1*
T0*
_output_shapes	
:?
<
Log_1LogSelect_1*
T0*
_output_shapes	
:?
A
mul_26Mulsub_8Log_1*
T0*
_output_shapes	
:?
D
add_15AddV2sub_6mul_26*
T0*
_output_shapes	
:?
I
mul_27Mulprec_slope_1add_15*
T0*
_output_shapes	
:?
l
ReadVariableOp_40ReadVariableOphead/metrics/true_positives_3*
_output_shapes	
:?*
dtype0
`
strided_slice_45/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_45/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_45/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_45StridedSliceReadVariableOp_40strided_slice_45/stackstrided_slice_45/stack_1strided_slice_45/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
m
ReadVariableOp_41ReadVariableOphead/metrics/false_negatives_2*
_output_shapes	
:?*
dtype0
`
strided_slice_46/stackConst*
_output_shapes
:*
dtype0*
valueB:
b
strided_slice_46/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
b
strided_slice_46/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_46StridedSliceReadVariableOp_41strided_slice_46/stackstrided_slice_46/stack_1strided_slice_46/stack_2*
Index0*
T0*
_output_shapes	
:?*
end_mask
Y
add_16AddV2strided_slice_45strided_slice_46*
T0*
_output_shapes	
:?
P
Maximum_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
O
	Maximum_6Maximumadd_16Maximum_6/y*
T0*
_output_shapes	
:?
W
pr_auc_increment_1DivNoNanmul_27	Maximum_6*
T0*
_output_shapes	
:?
R
Const_18Const*
_output_shapes
:*
dtype0*
valueB: 
Z
interpolate_pr_auc_1Sumpr_auc_increment_1Const_18*
T0*
_output_shapes
: 
N
Identity_91Identityinterpolate_pr_auc_1*
T0*
_output_shapes
: 
l
metric_op_wrapperConst^AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
n
metric_op_wrapper_1Const^AssignAddVariableOp_3*
_output_shapes
: *
dtype0*
valueB 
c
metric_op_wrapper_2Const^group_deps*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_3Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
n
metric_op_wrapper_4Const^AssignAddVariableOp_9*
_output_shapes
: *
dtype0*
valueB 
o
metric_op_wrapper_5Const^AssignAddVariableOp_11*
_output_shapes
: *
dtype0*
valueB 
]
metric_op_wrapper_6Const^NoOp*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_7Const^group_deps_2*
_output_shapes
: *
dtype0*
valueB 
e
metric_op_wrapper_8Const^group_deps_3*
_output_shapes
: *
dtype0*
valueB 
?
initNoOp^head/metrics/count/Assign^head/metrics/count_1/Assign^head/metrics/count_2/Assign^head/metrics/count_3/Assign$^head/metrics/false_negatives/Assign&^head/metrics/false_negatives_1/Assign&^head/metrics/false_negatives_2/Assign$^head/metrics/false_positives/Assign&^head/metrics/false_positives_1/Assign&^head/metrics/false_positives_2/Assign^head/metrics/total/Assign^head/metrics/total_1/Assign^head/metrics/total_2/Assign^head/metrics/total_3/Assign#^head/metrics/true_negatives/Assign%^head/metrics/true_negatives_1/Assign#^head/metrics/true_positives/Assign%^head/metrics/true_positives_1/Assign%^head/metrics/true_positives_2/Assign%^head/metrics/true_positives_3/Assign
?
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2l^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
6
group_deps_4NoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
?
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_e2a0a9840e8246a3af26ba95cbf48c00/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
?	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp*dnn/hiddenlayer_2/bias/Read/ReadVariableOp,dnn/hiddenlayer_2/kernel/Read/ReadVariableOp*dnn/hiddenlayer_3/bias/Read/ReadVariableOp,dnn/hiddenlayer_3/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp:linear/linear_model/company_xf/weights/Read/ReadVariableOpClinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpDlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpBlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpClinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpAlinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpBlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpClinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp"/device:CPU:0*#
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
c
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
c
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdnn/logits/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0	*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpglobal_stepsave/Identity_11*
dtype0	
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
m
save/AssignVariableOp_11AssignVariableOp linear/linear_model/bias_weightssave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
s
save/AssignVariableOp_12AssignVariableOp&linear/linear_model/company_xf/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
|
save/AssignVariableOp_13AssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
}
save/AssignVariableOp_14AssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
x
save/AssignVariableOp_15AssignVariableOp+linear/linear_model/payment_type_xf/weightssave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
{
save/AssignVariableOp_16AssignVariableOp.linear/linear_model/pickup_latitude_xf/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
|
save/AssignVariableOp_17AssignVariableOp/linear/linear_model/pickup_longitude_xf/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
z
save/AssignVariableOp_18AssignVariableOp-linear/linear_model/trip_start_day_xf/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
{
save/AssignVariableOp_19AssignVariableOp.linear/linear_model/trip_start_hour_xf/weightssave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
|
save/AssignVariableOp_20AssignVariableOp/linear/linear_model/trip_start_month_xf/weightssave/Identity_21*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard??
?
a
0zero_fraction_total_zero_zero_count_2_true_18433
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
?broadcast_weights_5_assert_broadcastable_AssertGuard_true_19461M
Iidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityIidentity_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
z
zero_fraction_cond_false_184447
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

?	
?
bhead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_18871R
Nassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

assert_head_losses_cast
identity
?r
Assert/data_0Const*
_output_shapes
: *
dtype0*$
valueB BLabels must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2
Assert/data_1x
Assert/data_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 2
Assert/data_2?
AssertAssertNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_head_losses_cast*
T
2*
_output_shapes
 2
Assert?
IdentityIdentityNassert_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
4assert_greater_equal_1_Assert_AssertGuard_true_19283'
#identity_assert_greater_equal_1_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpm
IdentityIdentity#identity_assert_greater_equal_1_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
b
zero_fraction_cond_true_187017
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_183577
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	?2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes
:	?:% !

_output_shapes
:	?
?
?
Bbroadcast_weights_7_assert_broadcastable_is_valid_shape_true_195098
4broadcast_weights_7_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_7_assert_broadcastable_is_scalar
"j
2broadcast_weights_7_assert_broadcastable_is_scalar4broadcast_weights_7_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
?
#dnn_zero_fraction_4_cond_true_17396-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
?broadcast_weights_7_assert_broadcastable_AssertGuard_true_19559M
Iidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityIidentity_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
Mhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_true_18845@
<identity_head_losses_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentity<identity_head_losses_check_label_range_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
$dnn_zero_fraction_3_cond_false_173281
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????"2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????"2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????":- )
'
_output_shapes
:?????????"
?
z
zero_fraction_cond_false_187027
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_2_false_18434Q
Mzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights(
$cast_zero_fraction_total_size_size_2	
mul??
zero_fraction/ReadVariableOpReadVariableOpMzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights*
_output_shapes

:
*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18444*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_184432
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_2*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
_
.zero_fraction_total_zero_zero_count_true_18347
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
ahead_losses_check_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_18870T
Pidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityPidentity_head_losses_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
$has_valid_nonscalar_shape_true_19710U
Qhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
?
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
has_invalid_dims/ExpandDims/dim?
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_9_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims?
 has_invalid_dims/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 has_invalid_dims/ones_like/Shape?
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 has_invalid_dims/ones_like/Const?
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ones_like~
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
has_invalid_dims/concat/axis?
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:2
has_invalid_dims/concat?
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!has_invalid_dims/ExpandDims_1/dim?
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_9_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims_1?
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b2+
)has_invalid_dims/DenseToDenseSetOperation?
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: 2#
!has_invalid_dims/num_invalid_dimsj
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : 2
has_invalid_dims/x?
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T02
has_invalid_dims"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_7_false_18649O
Kzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights(
$cast_zero_fraction_total_size_size_7	
mul??
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18659*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_186582
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_7*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
$has_valid_nonscalar_shape_true_19419U
Qhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
?
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
has_invalid_dims/ExpandDims/dim?
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_5_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims?
 has_invalid_dims/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 has_invalid_dims/ones_like/Shape?
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 has_invalid_dims/ones_like/Const?
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ones_like~
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
has_invalid_dims/concat/axis?
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:2
has_invalid_dims/concat?
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!has_invalid_dims/ExpandDims_1/dim?
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_5_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims_1?
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b2+
)has_invalid_dims/DenseToDenseSetOperation?
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: 2#
!has_invalid_dims/num_invalid_dimsj
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : 2
has_invalid_dims/x?
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T02
has_invalid_dims"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
%has_valid_nonscalar_shape_false_19518
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?	
?
2assert_less_equal_2_Assert_AssertGuard_false_19643"
assert_assert_less_equal_2_all
!
assert_predictions_1_logistic
assert_cast_21_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1~
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_21/x:0) = 2
Assert/data_4?
AssertAssertassert_assert_less_equal_2_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_21_x*
T

2*
_output_shapes
 2
Assertj
IdentityIdentityassert_assert_less_equal_2_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
$dnn_zero_fraction_4_cond_false_17397-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
$dnn_zero_fraction_1_cond_false_171881
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????F2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????F2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????F:- )
'
_output_shapes
:?????????F
?
b
zero_fraction_cond_true_184007
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

?
b
zero_fraction_cond_true_185297
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

?
?
Vcheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_19094F
Bassert_check_label_range_assert_non_negative_assert_less_equal_all

assert_cast
identity
?r
Assert/data_0Const*
_output_shapes
: *
dtype0*$
valueB BLabels must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2
Assert/data_1l
Assert/data_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 2
Assert/data_2?
AssertAssertBassert_check_label_range_assert_non_negative_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast*
T
2*
_output_shapes
 2
Assert?
IdentityIdentityBassert_check_label_range_assert_non_negative_assert_less_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?	
?
5assert_greater_equal_2_Assert_AssertGuard_false_19617%
!assert_assert_greater_equal_2_all
!
assert_predictions_1_logistic
assert_cast_20_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2
Assert/data_1~
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_20/x:0) = 2
Assert/data_4?
AssertAssert!assert_assert_greater_equal_2_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_20_x*
T

2*
_output_shapes
 2
Assertm
IdentityIdentity!assert_assert_greater_equal_2_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
Cbroadcast_weights_7_assert_broadcastable_is_valid_shape_false_19510
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity
?
&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_7_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 2(
&has_valid_nonscalar_shape/is_same_rank?
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_7_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_19518*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_195172
has_valid_nonscalar_shape?
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: 2$
"has_valid_nonscalar_shape/Identity"Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
b
zero_fraction_cond_true_184867
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	?2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes
:	?:% !

_output_shapes
:	?
?
a
0zero_fraction_total_zero_zero_count_6_true_18605
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?

?
Nhead_losses_check_label_range_assert_less_equal_Assert_AssertGuard_false_18846>
:assert_head_losses_check_label_range_assert_less_equal_all

assert_head_losses_cast.
*assert_head_losses_check_label_range_const
identity
?~
Assert/data_0Const*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1x
Assert/data_2Const*
_output_shapes
: *
dtype0**
value!B Bx (head/losses/Cast:0) = 2
Assert/data_2?
Assert/data_4Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (head/losses/check_label_range/Const:0) = 2
Assert/data_4?
AssertAssert:assert_head_losses_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_head_losses_castAssert/data_4:output:0*assert_head_losses_check_label_range_const*
T

2*
_output_shapes
 2
Assert?
IdentityIdentity:assert_head_losses_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
 zero_fraction_1_cond_false_18742c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
x
-
cond_3_true_19883
prod_3_0

prod_3"
prod_3prod_3_0*
_input_shapes
: : 

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_5_false_18563P
Lzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights(
$cast_zero_fraction_total_size_size_5	
mul??
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights*
_output_shapes

:
*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18573*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_185722
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_5*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_8_false_18692P
Lzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights(
$cast_zero_fraction_total_size_size_8	
mul??
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18702*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_187012
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_8*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
"dnn_zero_fraction_cond_false_171181
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????d2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????d2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????d:- )
'
_output_shapes
:?????????d
?
?
@broadcast_weights_5_assert_broadcastable_AssertGuard_false_19462K
Gassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_5_assert_broadcastable_weights_shape@
<assert_broadcast_weights_5_assert_broadcastable_values_shape=
9assert_broadcast_weights_5_assert_broadcastable_is_scalar

identity
??
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.2
Assert/data_0m
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=2
Assert/data_1t
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_4:02
Assert/data_2l
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=2
Assert/data_4w
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:02
Assert/data_5i
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=2
Assert/data_7?
AssertAssertGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_5_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_5_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_5_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 2
Assert?
IdentityIdentityGassert_broadcast_weights_5_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
Bbroadcast_weights_9_assert_broadcastable_is_valid_shape_true_197028
4broadcast_weights_9_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_9_assert_broadcastable_is_scalar
"j
2broadcast_weights_9_assert_broadcastable_is_scalar4broadcast_weights_9_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
?
@broadcast_weights_9_assert_broadcastable_AssertGuard_false_19753K
Gassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_9_assert_broadcastable_weights_shape@
<assert_broadcast_weights_9_assert_broadcastable_values_shape=
9assert_broadcast_weights_9_assert_broadcastable_is_scalar

identity
??
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.2
Assert/data_0m
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=2
Assert/data_1t
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_8:02
Assert/data_2l
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=2
Assert/data_4w
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:02
Assert/data_5i
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=2
Assert/data_7?
AssertAssertGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_9_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_9_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_9_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 2
Assert?
IdentityIdentityGassert_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
0assert_less_equal_Assert_AssertGuard_false_19192 
assert_assert_less_equal_all

assert_cast_5
assert_cast_8_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1n
Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 2
Assert/data_2p
Assert/data_4Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_8/x:0) = 2
Assert/data_4?
AssertAssertassert_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_5Assert/data_4:output:0assert_cast_8_x*
T

2*
_output_shapes
 2
Asserth
IdentityIdentityassert_assert_less_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
z
zero_fraction_cond_false_185737
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

?
1
cond_1_false_19340
placeholder

cast_xR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
Cast/x"
cast_xCast/x:output:0*
_input_shapes
: : 

_output_shapes
: 
?	
?
5assert_greater_equal_3_Assert_AssertGuard_false_19829%
!assert_assert_greater_equal_3_all
!
assert_predictions_1_logistic
assert_cast_28_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2
Assert/data_1~
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_28/x:0) = 2
Assert/data_4?
AssertAssert!assert_assert_greater_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_28_x*
T

2*
_output_shapes
 2
Assertm
IdentityIdentity!assert_assert_greater_equal_3_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?	
?
Bcheck_label_range_assert_less_equal_Assert_AssertGuard_false_190692
.assert_check_label_range_assert_less_equal_all

assert_cast"
assert_check_label_range_const
identity
?~
Assert/data_0Const*
_output_shapes
: *
dtype0*0
value'B% BLabels must be <= n_classes - 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1l
Assert/data_2Const*
_output_shapes
: *
dtype0*
valueB Bx (Cast:0) = 2
Assert/data_2
Assert/data_4Const*
_output_shapes
: *
dtype0*1
value(B& B y (check_label_range/Const:0) = 2
Assert/data_4?
AssertAssert.assert_check_label_range_assert_less_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_castAssert/data_4:output:0assert_check_label_range_const*
T

2*
_output_shapes
 2
Assertz
IdentityIdentity.assert_check_label_range_assert_less_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
Acheck_label_range_assert_less_equal_Assert_AssertGuard_true_190684
0identity_check_label_range_assert_less_equal_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpz
IdentityIdentity0identity_check_label_range_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
Cbroadcast_weights_5_assert_broadcastable_is_valid_shape_false_19412
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity
?
&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_5_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 2(
&has_valid_nonscalar_shape/is_same_rank?
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_5_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_19420*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_194192
has_valid_nonscalar_shape?
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: 2$
"has_valid_nonscalar_shape/Identity"Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
?
1assert_less_equal_3_Assert_AssertGuard_true_19854$
 identity_assert_less_equal_3_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpj
IdentityIdentity identity_assert_less_equal_3_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
#dnn_zero_fraction_1_cond_true_171871
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????F2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????F2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????F:- )
'
_output_shapes
:?????????F
?
b
zero_fraction_cond_true_185727
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

?
?
Bbroadcast_weights_5_assert_broadcastable_is_valid_shape_true_194118
4broadcast_weights_5_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_36
2broadcast_weights_5_assert_broadcastable_is_scalar
"j
2broadcast_weights_5_assert_broadcastable_is_scalar4broadcast_weights_5_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
1
cond_3_false_19884
placeholder

cast_xR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
Cast/x"
cast_xCast/x:output:0*
_input_shapes
: : 

_output_shapes
: 
?
z
zero_fraction_cond_false_186167
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_8_true_18691
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
z
zero_fraction_cond_false_186597
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
Ucheck_label_range_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_19093H
Didentity_check_label_range_assert_non_negative_assert_less_equal_all

placeholder
identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityDidentity_check_label_range_assert_non_negative_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
b
zero_fraction_cond_true_184437
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

:
:$  

_output_shapes

:

?
?
1assert_less_equal_2_Assert_AssertGuard_true_19642$
 identity_assert_less_equal_2_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpj
IdentityIdentity identity_assert_less_equal_2_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
1assert_less_equal_1_Assert_AssertGuard_true_19309$
 identity_assert_less_equal_1_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpj
IdentityIdentity identity_assert_less_equal_1_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
1
cond_2_false_19672
placeholder

cast_xR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
Cast/x"
cast_xCast/x:output:0*
_input_shapes
: : 

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_3_false_18477L
Hzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights(
$cast_zero_fraction_total_size_size_3	
mul??
zero_fraction/ReadVariableOpReadVariableOpHzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights*
_output_shapes
:	?*
dtype02
zero_fraction/ReadVariableOpk
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 R?2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18487*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_184862
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_3*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
4assert_greater_equal_2_Assert_AssertGuard_true_19616'
#identity_assert_greater_equal_2_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpm
IdentityIdentity#identity_assert_greater_equal_2_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
/zero_fraction_total_zero_zero_count_false_18348G
Czero_fraction_readvariableop_linear_linear_model_company_xf_weights&
"cast_zero_fraction_total_size_size	
mul??
zero_fraction/ReadVariableOpReadVariableOpCzero_fraction_readvariableop_linear_linear_model_company_xf_weights*
_output_shapes
:	?*
dtype02
zero_fraction/ReadVariableOpk
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 R?2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18358*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_183572
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionh
CastCast"cast_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
Dbroadcast_weights_11_assert_broadcastable_is_valid_shape_false_19915
placeholder
`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_ranka
]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rankT
Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeU
Qhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity
?
&has_valid_nonscalar_shape/is_same_rankEqual\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_values_rank]has_valid_nonscalar_shape_is_same_rank_broadcast_weights_11_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 2(
&has_valid_nonscalar_shape/is_same_rank?
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Phas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_values_shapeQhas_valid_nonscalar_shape_broadcast_weights_11_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_19923*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_199222
has_valid_nonscalar_shape?
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: 2$
"has_valid_nonscalar_shape/Identity"Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
n
'
cond_true_19221

prod_0
prod"
prodprod_0*
_input_shapes
: : 

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_4_true_18519
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
?broadcast_weights_9_assert_broadcastable_AssertGuard_true_19752M
Iidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityIidentity_broadcast_weights_9_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
b
zero_fraction_cond_true_186587
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
#dnn_zero_fraction_2_cond_true_172571
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????02
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????02
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????0:- )
'
_output_shapes
:?????????0
?
?
$has_valid_nonscalar_shape_true_19922V
Rhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shapeY
Uhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
?
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
has_invalid_dims/ExpandDims/dim?
has_invalid_dims/ExpandDims
ExpandDimsRhas_invalid_dims_expanddims_broadcast_weights_11_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims?
 has_invalid_dims/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 has_invalid_dims/ones_like/Shape?
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 has_invalid_dims/ones_like/Const?
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ones_like~
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
has_invalid_dims/concat/axis?
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:2
has_invalid_dims/concat?
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!has_invalid_dims/ExpandDims_1/dim?
has_invalid_dims/ExpandDims_1
ExpandDimsUhas_invalid_dims_expanddims_1_broadcast_weights_11_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims_1?
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b2+
)has_invalid_dims/DenseToDenseSetOperation?
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: 2#
!has_invalid_dims/num_invalid_dimsj
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : 2
has_invalid_dims/x?
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T02
has_invalid_dims"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
Cbroadcast_weights_11_assert_broadcastable_is_valid_shape_true_199149
5broadcast_weights_11_assert_broadcastable_is_scalar_0

placeholder
placeholder_1
placeholder_2
placeholder_37
3broadcast_weights_11_assert_broadcastable_is_scalar
"l
3broadcast_weights_11_assert_broadcastable_is_scalar5broadcast_weights_11_assert_broadcastable_is_scalar_0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
?
z
zero_fraction_cond_false_185307
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

?
z
zero_fraction_cond_false_184017
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:
2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:$  

_output_shapes

:

?
?
%has_valid_nonscalar_shape_false_19420
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
%has_valid_nonscalar_shape_false_19923
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_5_true_18562
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
$has_valid_nonscalar_shape_true_19517U
Qhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shapeX
Thas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape
placeholder

has_invalid_dims
?
has_invalid_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
has_invalid_dims/ExpandDims/dim?
has_invalid_dims/ExpandDims
ExpandDimsQhas_invalid_dims_expanddims_broadcast_weights_7_assert_broadcastable_values_shape(has_invalid_dims/ExpandDims/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims?
 has_invalid_dims/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 has_invalid_dims/ones_like/Shape?
 has_invalid_dims/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 has_invalid_dims/ones_like/Const?
has_invalid_dims/ones_likeFill)has_invalid_dims/ones_like/Shape:output:0)has_invalid_dims/ones_like/Const:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ones_like~
has_invalid_dims/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
has_invalid_dims/concat/axis?
has_invalid_dims/concatConcatV2$has_invalid_dims/ExpandDims:output:0#has_invalid_dims/ones_like:output:0%has_invalid_dims/concat/axis:output:0*
N*
T0*
_output_shapes

:2
has_invalid_dims/concat?
!has_invalid_dims/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!has_invalid_dims/ExpandDims_1/dim?
has_invalid_dims/ExpandDims_1
ExpandDimsThas_invalid_dims_expanddims_1_broadcast_weights_7_assert_broadcastable_weights_shape*has_invalid_dims/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
has_invalid_dims/ExpandDims_1?
)has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation&has_invalid_dims/ExpandDims_1:output:0 has_invalid_dims/concat:output:0*
T0*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b2+
)has_invalid_dims/DenseToDenseSetOperation?
!has_invalid_dims/num_invalid_dimsSize9has_invalid_dims/DenseToDenseSetOperation:result_values:0*
T0*
_output_shapes
: 2#
!has_invalid_dims/num_invalid_dimsj
has_invalid_dims/xConst*
_output_shapes
: *
dtype0*
value	B : 2
has_invalid_dims/x?
has_invalid_dims_0Equalhas_invalid_dims/x:output:0*has_invalid_dims/num_invalid_dims:output:0*
T02
has_invalid_dims"*
has_invalid_dimshas_invalid_dims_0:z:0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?	
?
2assert_less_equal_3_Assert_AssertGuard_false_19855"
assert_assert_less_equal_3_all
!
assert_predictions_1_logistic
assert_cast_29_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1~
Assert/data_2Const*
_output_shapes
: *
dtype0*0
value'B% Bx (predictions_1/logistic:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_29/x:0) = 2
Assert/data_4?
AssertAssertassert_assert_less_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_predictions_1_logisticAssert/data_4:output:0assert_cast_29_x*
T

2*
_output_shapes
 2
Assertj
IdentityIdentityassert_assert_less_equal_3_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_1_true_18390
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
z
zero_fraction_cond_false_184877
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	?2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes
:	?2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	?:% !

_output_shapes
:	?
?
?
zero_fraction_1_cond_true_18741c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
$dnn_zero_fraction_2_cond_false_172581
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????02
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????02
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????0:- )
'
_output_shapes
:?????????0
?
?
!dnn_zero_fraction_cond_true_171171
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????d2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????d:- )
'
_output_shapes
:?????????d
?
?
Cbroadcast_weights_9_assert_broadcastable_is_valid_shape_false_19703
placeholder
_
[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank`
\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rankS
Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapeT
Phas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape&
"has_valid_nonscalar_shape_identity
?
&has_valid_nonscalar_shape/is_same_rankEqual[has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_values_rank\has_valid_nonscalar_shape_is_same_rank_broadcast_weights_9_assert_broadcastable_weights_rank*
T0*
_output_shapes
: 2(
&has_valid_nonscalar_shape/is_same_rank?
has_valid_nonscalar_shapeStatelessIf*has_valid_nonscalar_shape/is_same_rank:z:0Ohas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_values_shapePhas_valid_nonscalar_shape_broadcast_weights_9_assert_broadcastable_weights_shape*has_valid_nonscalar_shape/is_same_rank:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *8
else_branch)R'
%has_valid_nonscalar_shape_false_19711*
output_shapes
: *7
then_branch(R&
$has_valid_nonscalar_shape_true_197102
has_valid_nonscalar_shape?
"has_valid_nonscalar_shape/IdentityIdentity"has_valid_nonscalar_shape:output:0*
T0
*
_output_shapes
: 2$
"has_valid_nonscalar_shape/Identity"Q
"has_valid_nonscalar_shape_identity+has_valid_nonscalar_shape/Identity:output:0*%
_input_shapes
: : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
x
-
cond_1_true_19339
prod_1_0

prod_1"
prod_1prod_1_0*
_input_shapes
: : 

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_4_false_18520O
Kzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights(
$cast_zero_fraction_total_size_size_4	
mul??
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights*
_output_shapes

:
*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18530*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_185292
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_4*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
4assert_greater_equal_3_Assert_AssertGuard_true_19828'
#identity_assert_greater_equal_3_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpm
IdentityIdentity#identity_assert_greater_equal_3_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
%has_valid_nonscalar_shape_false_19711
placeholder
placeholder_1,
(has_valid_nonscalar_shape_is_same_rank_0
*
&has_valid_nonscalar_shape_is_same_rank
"R
&has_valid_nonscalar_shape_is_same_rank(has_valid_nonscalar_shape_is_same_rank_0*!
_input_shapes
::: :  

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?	
?
5assert_greater_equal_1_Assert_AssertGuard_false_19284%
!assert_assert_greater_equal_1_all

assert_cast_12
assert_cast_14_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2
Assert/data_1o
Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_12:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_14/x:0) = 2
Assert/data_4?
AssertAssert!assert_assert_greater_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_12Assert/data_4:output:0assert_cast_14_x*
T

2*
_output_shapes
 2
Assertm
IdentityIdentity!assert_assert_greater_equal_1_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
@broadcast_weights_7_assert_broadcastable_AssertGuard_false_19560K
Gassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity
A
=assert_broadcast_weights_7_assert_broadcastable_weights_shape@
<assert_broadcast_weights_7_assert_broadcastable_values_shape=
9assert_broadcast_weights_7_assert_broadcastable_is_scalar

identity
??
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.2
Assert/data_0m
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=2
Assert/data_1t
Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bbroadcast_weights_6:02
Assert/data_2l
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=2
Assert/data_4{
Assert/data_5Const*
_output_shapes
: *
dtype0*-
value$B" Bcheck_label_range/Identity:02
Assert/data_5i
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=2
Assert/data_7?
AssertAssertGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0=assert_broadcast_weights_7_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0<assert_broadcast_weights_7_assert_broadcastable_values_shapeAssert/data_7:output:09assert_broadcast_weights_7_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 2
Assert?
IdentityIdentityGassert_broadcast_weights_7_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_7_true_18648
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_3_true_18476
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
/assert_less_equal_Assert_AssertGuard_true_19191"
identity_assert_less_equal_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOph
IdentityIdentityidentity_assert_less_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
b
zero_fraction_cond_true_186157
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_183587
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	?2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes
:	?2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	?:% !

_output_shapes
:	?
?	
?
2assert_less_equal_1_Assert_AssertGuard_false_19310"
assert_assert_less_equal_1_all

assert_cast_12
assert_cast_15_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be <= 12
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2
Assert/data_1o
Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB Bx (Cast_12:0) = 2
Assert/data_2q
Assert/data_4Const*
_output_shapes
: *
dtype0*#
valueB By (Cast_15/x:0) = 2
Assert/data_4?
AssertAssertassert_assert_less_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_12Assert/data_4:output:0assert_cast_15_x*
T

2*
_output_shapes
 2
Assertj
IdentityIdentityassert_assert_less_equal_1_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
x
-
cond_2_true_19671
prod_2_0

prod_2"
prod_2prod_2_0*
_input_shapes
: : 

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_1_false_18391P
Lzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights(
$cast_zero_fraction_total_size_size_1	
mul??
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights*
_output_shapes

:
*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18401*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_184002
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_1*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?	
?
3assert_greater_equal_Assert_AssertGuard_false_19166#
assert_assert_greater_equal_all

assert_cast_5
assert_cast_7_x
identity
?w
Assert/data_0Const*
_output_shapes
: *
dtype0*)
value B Bpredictions must be >= 02
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2
Assert/data_1n
Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (Cast_5:0) = 2
Assert/data_2p
Assert/data_4Const*
_output_shapes
: *
dtype0*"
valueB By (Cast_7/x:0) = 2
Assert/data_4?
AssertAssertassert_assert_greater_equal_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0assert_cast_5Assert/data_4:output:0assert_cast_7_x*
T

2*
_output_shapes
 2
Assertk
IdentityIdentityassert_assert_greater_equal_all^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
/
cond_false_19222
placeholder

cast_xR
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
Cast/x"
cast_xCast/x:output:0*
_input_shapes
: : 

_output_shapes
: 
?
?
@broadcast_weights_11_assert_broadcastable_AssertGuard_true_19964N
Jidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity

placeholder
placeholder_1
placeholder_2

identity
*
NoOpNoOp*
_output_shapes
 2
NoOp?
IdentityIdentityJidentity_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_6_false_18606N
Jzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights(
$cast_zero_fraction_total_size_size_6	
mul??
zero_fraction/ReadVariableOpReadVariableOpJzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_18616*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_186152
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_6*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
:: : 

_output_shapes
: :

_output_shapes
: 
?
?
#dnn_zero_fraction_3_cond_true_173271
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????"2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????"2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue?
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1?
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2?
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3?
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????":- )
'
_output_shapes
:?????????"
?
?
2assert_greater_equal_Assert_AssertGuard_true_19165%
!identity_assert_greater_equal_all

placeholder
placeholder_1
identity
*
NoOpNoOp*
_output_shapes
 2
NoOpk
IdentityIdentity!identity_assert_greater_equal_all^NoOp*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0**
_input_shapes
: :?????????: : 

_output_shapes
: :-)
'
_output_shapes
:?????????:

_output_shapes
: 
?
?
Abroadcast_weights_11_assert_broadcastable_AssertGuard_false_19965L
Hassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity
B
>assert_broadcast_weights_11_assert_broadcastable_weights_shapeA
=assert_broadcast_weights_11_assert_broadcastable_values_shape>
:assert_broadcast_weights_11_assert_broadcastable_is_scalar

identity
??
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.2
Assert/data_0m
Assert/data_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=2
Assert/data_1u
Assert/data_2Const*
_output_shapes
: *
dtype0*'
valueB Bbroadcast_weights_10:02
Assert/data_2l
Assert/data_4Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=2
Assert/data_4w
Assert/data_5Const*
_output_shapes
: *
dtype0*)
value B Bpredictions_1/logistic:02
Assert/data_5i
Assert/data_7Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=2
Assert/data_7?
AssertAssertHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identityAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0>assert_broadcast_weights_11_assert_broadcastable_weights_shapeAssert/data_4:output:0Assert/data_5:output:0=assert_broadcast_weights_11_assert_broadcastable_values_shapeAssert/data_7:output:0:assert_broadcast_weights_11_assert_broadcastable_is_scalar*
T
2	
*
_output_shapes
 2
Assert?
IdentityIdentityHassert_broadcast_weights_11_assert_broadcastable_is_valid_shape_identity^Assert*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
: ::: : 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: "?<
save/Const:0save/Identity:0save/restore_all (5 @F8"3
asset_filepaths 

asset_path:0
asset_path_1:0"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0?????????"?
(evaluation_only/label_graph/features/key??
$Bytes$company
$Bytes$dropoff_census_tract
$Bytes$dropoff_community_area
$Bytes$dropoff_latitude
$Bytes$dropoff_longitude
$Bytes$fare
$Bytes$payment_type
$Bytes$pickup_census_tract
$Bytes$pickup_community_area
$Bytes$pickup_latitude
$Bytes$pickup_longitude
$Bytes$tips
$Bytes$trip_miles
$Bytes$trip_seconds
$Bytes$trip_start_day
$Bytes$trip_start_hour
$Bytes$trip_start_month
$Bytes$trip_start_timestamp
$Bytes$pickup_community_area_xf
$Bytes$payment_type_xf
$Bytes$pickup_latitude_xf
$Bytes$pickup_longitude_xf
$Bytes$trip_start_day_xf
$Bytes$trip_start_month_xf
$Bytes$fare_xf
$Bytes$dropoff_longitude_xf
$Bytes$pickup_census_tract_xf
$Bytes$company_xf
$Bytes$trip_seconds_xf
$Bytes$trip_miles_xf
$Bytes$dropoff_census_tract_xf
 $Bytes$dropoff_community_area_xf
$Bytes$trip_start_hour_xf
$Bytes$tips_xf
$Bytes$dropoff_latitude_xf"?)
)evaluation_only/label_graph/features/node?(*?(
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36
?
)type.googleapis.com/tensorflow.TensorInfo	??????????????????"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
?
)type.googleapis.com/tensorflow.TensorInfo	??????????????????"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42
?
)type.googleapis.com/tensorflow.TensorInfo	??????????????????"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
?
)type.googleapis.com/tensorflow.TensorInfo	??????????????????"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
?
)type.googleapis.com/tensorflow.TensorInfo??????????????????"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45
?
)type.googleapis.com/tensorflow.TensorInfo???????????????????"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46
?
)type.googleapis.com/tensorflow.TensorInfo???????????????????"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
?
)type.googleapis.com/tensorflow.TensorInfo???????????????????"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
?
)type.googleapis.com/tensorflow.TensorInfo?	??????????????????"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
?
)type.googleapis.com/tensorflow.TensorInfo?	??????????????????"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
?
)type.googleapis.com/tensorflow.TensorInfo?	??????????????????"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
?
)type.googleapis.com/tensorflow.TensorInfo?	??????????????????"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
?
)type.googleapis.com/tensorflow.TensorInfo?	??????????????????"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_14:0	?????????
?
)type.googleapis.com/tensorflow.TensorInfol
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	?????????
?
)type.googleapis.com/tensorflow.TensorInfom
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
?
)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_10:0	?????????
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_11:0	?????????
q
)type.googleapis.com/tensorflow.TensorInfoD
1transform/transform/scale_to_z_score_1/SelectV2:0?????????
?
)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_12:0	?????????
?
)type.googleapis.com/tensorflow.TensorInfon
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	?????????
q
)type.googleapis.com/tensorflow.TensorInfoD
1transform/transform/scale_to_z_score_2/SelectV2:0?????????
o
)type.googleapis.com/tensorflow.TensorInfoB
/transform/transform/scale_to_z_score/SelectV2:0?????????
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_13:0	?????????
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_15:0	?????????
_
)type.googleapis.com/tensorflow.TensorInfo2
transform/transform/Squeeze_9:0	?????????
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	?????????
?
)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels"?
'evaluation_only/label_graph/labels/node`*^
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	?????????"7
%evaluation_only/metadata/tfma_version

0.22.0.dev"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"?
local_variables??
?
head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H
?
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
?
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H
?
head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H
?
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H
?
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
?
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
?
head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H
?
head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
?
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H
?
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
?
head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H
?
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
?
head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
?
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
?
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H
?
head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H
?
head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
?
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H
?
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H"?
metric_variables??
?
head/metrics/count_2:0head/metrics/count_2/Assign*head/metrics/count_2/Read/ReadVariableOp:0(2(head/metrics/count_2/Initializer/zeros:0@H
?
head/metrics/true_negatives:0"head/metrics/true_negatives/Assign1head/metrics/true_negatives/Read/ReadVariableOp:0(2/head/metrics/true_negatives/Initializer/zeros:0@H
?
head/metrics/true_positives:0"head/metrics/true_positives/Assign1head/metrics/true_positives/Read/ReadVariableOp:0(2/head/metrics/true_positives/Initializer/zeros:0@H
?
head/metrics/count:0head/metrics/count/Assign(head/metrics/count/Read/ReadVariableOp:0(2&head/metrics/count/Initializer/zeros:0@H
?
head/metrics/false_negatives:0#head/metrics/false_negatives/Assign2head/metrics/false_negatives/Read/ReadVariableOp:0(20head/metrics/false_negatives/Initializer/zeros:0@H
?
 head/metrics/false_negatives_1:0%head/metrics/false_negatives_1/Assign4head/metrics/false_negatives_1/Read/ReadVariableOp:0(22head/metrics/false_negatives_1/Initializer/zeros:0@H
?
head/metrics/true_negatives_1:0$head/metrics/true_negatives_1/Assign3head/metrics/true_negatives_1/Read/ReadVariableOp:0(21head/metrics/true_negatives_1/Initializer/zeros:0@H
?
head/metrics/total:0head/metrics/total/Assign(head/metrics/total/Read/ReadVariableOp:0(2&head/metrics/total/Initializer/zeros:0@H
?
head/metrics/count_3:0head/metrics/count_3/Assign*head/metrics/count_3/Read/ReadVariableOp:0(2(head/metrics/count_3/Initializer/zeros:0@H
?
 head/metrics/false_negatives_2:0%head/metrics/false_negatives_2/Assign4head/metrics/false_negatives_2/Read/ReadVariableOp:0(22head/metrics/false_negatives_2/Initializer/zeros:0@H
?
head/metrics/true_positives_1:0$head/metrics/true_positives_1/Assign3head/metrics/true_positives_1/Read/ReadVariableOp:0(21head/metrics/true_positives_1/Initializer/zeros:0@H
?
head/metrics/total_1:0head/metrics/total_1/Assign*head/metrics/total_1/Read/ReadVariableOp:0(2(head/metrics/total_1/Initializer/zeros:0@H
?
head/metrics/true_positives_2:0$head/metrics/true_positives_2/Assign3head/metrics/true_positives_2/Read/ReadVariableOp:0(21head/metrics/true_positives_2/Initializer/zeros:0@H
?
head/metrics/total_2:0head/metrics/total_2/Assign*head/metrics/total_2/Read/ReadVariableOp:0(2(head/metrics/total_2/Initializer/zeros:0@H
?
 head/metrics/false_positives_1:0%head/metrics/false_positives_1/Assign4head/metrics/false_positives_1/Read/ReadVariableOp:0(22head/metrics/false_positives_1/Initializer/zeros:0@H
?
head/metrics/true_positives_3:0$head/metrics/true_positives_3/Assign3head/metrics/true_positives_3/Read/ReadVariableOp:0(21head/metrics/true_positives_3/Initializer/zeros:0@H
?
head/metrics/count_1:0head/metrics/count_1/Assign*head/metrics/count_1/Read/ReadVariableOp:0(2(head/metrics/count_1/Initializer/zeros:0@H
?
head/metrics/total_3:0head/metrics/total_3/Assign*head/metrics/total_3/Read/ReadVariableOp:0(2(head/metrics/total_3/Initializer/zeros:0@H
?
 head/metrics/false_positives_2:0%head/metrics/false_positives_2/Assign4head/metrics/false_positives_2/Read/ReadVariableOp:0(22head/metrics/false_positives_2/Initializer/zeros:0@H
?
head/metrics/false_positives:0#head/metrics/false_positives/Assign2head/metrics/false_positives/Read/ReadVariableOp:0(20head/metrics/false_positives/Initializer/zeros:0@H"?
saved_model_assets?*?
n
+type.googleapis.com/tensorflow.AssetFileDef?

asset_path:0-vocab_compute_and_apply_vocabulary_vocabulary
r
+type.googleapis.com/tensorflow.AssetFileDefC

asset_path_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"'
saved_model_main_op

group_deps_4"?
	summaries?
?
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
+dnn/hiddenlayer_2/fraction_of_zero_values:0
dnn/hiddenlayer_2/activation:0
+dnn/hiddenlayer_3/fraction_of_zero_values:0
dnn/hiddenlayer_3/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0
bias:0
fraction_of_zero_weights:0
 linear/fraction_of_zero_values:0
linear/activation:0"?
table_initializer?
?
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"?
$tft_schema_override_annotation_proto?
?
Mtransform/transform/compute_and_apply_vocabulary/vocabulary/strided_slice_6:0
Otransform/transform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6:0
=transform/transform/bucketize/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_1/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_2/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_3/apply_buckets/strided_slice_2:0"?
%tft_schema_override_annotation_tensor?
?
atransform/transform/compute_and_apply_vocabulary/vocabulary/tft_schema_override_global_sentinel:0
ctransform/transform/compute_and_apply_vocabulary_1/vocabulary/tft_schema_override_global_sentinel:0
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"?
#tft_schema_override_annotation_type?
?
Etransform/transform/compute_and_apply_vocabulary/vocabulary/Const_1:0
Gtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Const_1:0
5transform/transform/bucketize/apply_buckets/Const_1:0
7transform/transform/bucketize_1/apply_buckets/Const_1:0
7transform/transform/bucketize_2/apply_buckets/Const_1:0
7transform/transform/bucketize_3/apply_buckets/Const_1:0"?
tft_schema_override_max?
?
Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"?
tft_schema_override_min?
?
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
Htransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"?
tft_schema_override_tensor?
?
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"?
trainable_variables??
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
?
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
?
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
?
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
?
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
?
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
?
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
?
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
?
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
?
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
?
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"? 
	variables? ?
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
?
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
?
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
?
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
?
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
?
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
?
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
?
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
?
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
?
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
?
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08*?2
eval?2
?
features/company??????????????????"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36
?
features/company_xfn
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	?????????
?
features/dropoff_census_tract	??????????????????"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
W
 features/dropoff_census_tract_xf3
 transform/transform/Squeeze_13:0	?????????
?
features/dropoff_community_area	??????????????????"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
Y
"features/dropoff_community_area_xf3
 transform/transform/Squeeze_15:0	?????????
?
features/dropoff_latitude??????????????????"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39
?
features/dropoff_latitude_xfo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
?
features/dropoff_longitude??????????????????"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40
?
features/dropoff_longitude_xfo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
?
features/fare??????????????????"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
X
features/fare_xfD
1transform/transform/scale_to_z_score_1/SelectV2:0?????????
?
features/payment_type??????????????????"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42
?
features/payment_type_xfl
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	?????????
?
features/pickup_census_tract	??????????????????"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
V
features/pickup_census_tract_xf3
 transform/transform/Squeeze_12:0	?????????
?
features/pickup_community_area	??????????????????"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
X
!features/pickup_community_area_xf3
 transform/transform/Squeeze_14:0	?????????
?
features/pickup_latitude??????????????????"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45
?
features/pickup_latitude_xfm
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
?
features/pickup_longitude???????????????????"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46
?
features/pickup_longitude_xfo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????
?
features/tips???????????????????"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
C
features/tips_xf/
transform/transform/Select:0	?????????
?
features/trip_miles???????????????????"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
\
features/trip_miles_xfB
/transform/transform/scale_to_z_score/SelectV2:0?????????
?
features/trip_seconds?	??????????????????"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
`
features/trip_seconds_xfD
1transform/transform/scale_to_z_score_2/SelectV2:0?????????
?
features/trip_start_day?	??????????????????"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
Q
features/trip_start_day_xf3
 transform/transform/Squeeze_10:0	?????????
?
features/trip_start_hour?	??????????????????"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
Q
features/trip_start_hour_xf2
transform/transform/Squeeze_9:0	?????????
?
features/trip_start_month?	??????????????????"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
S
features/trip_start_month_xf3
 transform/transform/Squeeze_11:0	?????????
?
features/trip_start_timestamp?	??????????????????"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
(

input_refs
range:0?????????
<
inputs/examples)
input_example_tensor:0?????????
9
labels/
transform/transform/Select:0	?????????

tfma/version
Const:0 /
loss'
!head/losses/weighted_loss/value:0 ;
metrics/accuracy/update_op
metric_op_wrapper_1:0 -
metrics/accuracy/value
Identity_84:0 D
#metrics/accuracy_baseline/update_op
metric_op_wrapper_6:0 6
metrics/accuracy_baseline/value
Identity_89:0 6
metrics/auc/update_op
metric_op_wrapper_7:0 (
metrics/auc/value
Identity_90:0 G
&metrics/auc_precision_recall/update_op
metric_op_wrapper_8:0 9
"metrics/auc_precision_recall/value
Identity_91:0 =
metrics/average_loss/update_op
metric_op_wrapper:0 1
metrics/average_loss/value
Identity_83:0 =
metrics/label/mean/update_op
metric_op_wrapper_5:0 /
metrics/label/mean/value
Identity_88:0 <
metrics/precision/update_op
metric_op_wrapper_2:0 .
metrics/precision/value
Identity_85:0 B
!metrics/prediction/mean/update_op
metric_op_wrapper_4:0 4
metrics/prediction/mean/value
Identity_87:0 9
metrics/recall/update_op
metric_op_wrapper_3:0 +
metrics/recall/value
Identity_86:0 K
predictions/all_class_ids.
head/predictions/Tile:0?????????K
predictions/all_classes0
head/predictions/Tile_1:0?????????M
predictions/class_ids4
head/predictions/ExpandDims:0	?????????L
predictions/classes5
head/predictions/str_classes:0?????????J
predictions/logistic2
head/predictions/logistic:0?????????2
predictions/logits
add:0?????????T
predictions/probabilities7
 head/predictions/probabilities:0?????????tensorflow/supervised/eval