??	
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
=
Greater
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
.
Identity

input"T
output"T"	
Ttype
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
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
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.1.02unknown??
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??F@
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *?D7C
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *f?LA
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *h??D
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??>D
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *UT?I
I
Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
Const_7Const*
_output_shapes
: *
dtype0*_
valueVBT BN/tmp/tmp1c8_ujjb/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
J
Const_8Const*
_output_shapes
: *
dtype0	*
value
B	 R?
?
Const_9Const*
_output_shapes
: *
dtype0*a
valueXBV BP/tmp/tmp1c8_ujjb/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
u
Const_10Const*
_output_shapes
:	*
dtype0*9
value0B.	"$?$'BjZ'B*?'B#?'BN?'B??'B1?'Bհ'B??'B
}
Const_11Const*
_output_shapes
:*
dtype0*A
value8B6",?y?´k??nc??.]?W??.R?µM??	I???C?@???=??
y
Const_12Const*
_output_shapes
:
*
dtype0*=
value4B2
"(?!'BLO'Btz'B[?'B:?'Bs?'B??'B֚'B??'B??'B
?
Const_13Const*
_output_shapes
:*
dtype0*E
value<B:"0?~???n???e??I^???W??aR??yM??	I???C?@???=???1??

&transform/inputs/company/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
transform/inputs/company/shapePlaceholderWithDefault&transform/inputs/company/shape_default*
_output_shapes
:*
dtype0	*
shape:
z
transform/inputs/company/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
 transform/inputs/company/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
5transform/inputs/F_dropoff_census_tract/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
-transform/inputs/F_dropoff_census_tract/shapePlaceholderWithDefault5transform/inputs/F_dropoff_census_tract/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
.transform/inputs/F_dropoff_census_tract/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
/transform/inputs/F_dropoff_census_tract/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
7transform/inputs/F_dropoff_community_area/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
/transform/inputs/F_dropoff_community_area/shapePlaceholderWithDefault7transform/inputs/F_dropoff_community_area/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
0transform/inputs/F_dropoff_community_area/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
1transform/inputs/F_dropoff_community_area/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
1transform/inputs/F_dropoff_latitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
)transform/inputs/F_dropoff_latitude/shapePlaceholderWithDefault1transform/inputs/F_dropoff_latitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
*transform/inputs/F_dropoff_latitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
+transform/inputs/F_dropoff_latitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
2transform/inputs/F_dropoff_longitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
*transform/inputs/F_dropoff_longitude/shapePlaceholderWithDefault2transform/inputs/F_dropoff_longitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
+transform/inputs/F_dropoff_longitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
,transform/inputs/F_dropoff_longitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
|
#transform/inputs/fare/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
transform/inputs/fare/shapePlaceholderWithDefault#transform/inputs/fare/shape_default*
_output_shapes
:*
dtype0	*
shape:
w
transform/inputs/fare/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
transform/inputs/fare/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/inputs/F_payment_type/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
%transform/inputs/F_payment_type/shapePlaceholderWithDefault-transform/inputs/F_payment_type/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
&transform/inputs/F_payment_type/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
'transform/inputs/F_payment_type/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
4transform/inputs/F_pickup_census_tract/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
,transform/inputs/F_pickup_census_tract/shapePlaceholderWithDefault4transform/inputs/F_pickup_census_tract/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
-transform/inputs/F_pickup_census_tract/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
.transform/inputs/F_pickup_census_tract/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
6transform/inputs/F_pickup_community_area/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
.transform/inputs/F_pickup_community_area/shapePlaceholderWithDefault6transform/inputs/F_pickup_community_area/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
/transform/inputs/F_pickup_community_area/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
0transform/inputs/F_pickup_community_area/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
0transform/inputs/F_pickup_latitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
(transform/inputs/F_pickup_latitude/shapePlaceholderWithDefault0transform/inputs/F_pickup_latitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
)transform/inputs/F_pickup_latitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
*transform/inputs/F_pickup_latitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
1transform/inputs/F_pickup_longitude/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
)transform/inputs/F_pickup_longitude/shapePlaceholderWithDefault1transform/inputs/F_pickup_longitude/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
*transform/inputs/F_pickup_longitude/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
+transform/inputs/F_pickup_longitude/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
|
#transform/inputs/tips/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
transform/inputs/tips/shapePlaceholderWithDefault#transform/inputs/tips/shape_default*
_output_shapes
:*
dtype0	*
shape:
w
transform/inputs/tips/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
transform/inputs/tips/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
+transform/inputs/F_trip_miles/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
#transform/inputs/F_trip_miles/shapePlaceholderWithDefault+transform/inputs/F_trip_miles/shape_default*
_output_shapes
:*
dtype0	*
shape:

$transform/inputs/F_trip_miles/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
%transform/inputs/F_trip_miles/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
-transform/inputs/F_trip_seconds/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
%transform/inputs/F_trip_seconds/shapePlaceholderWithDefault-transform/inputs/F_trip_seconds/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
&transform/inputs/F_trip_seconds/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
'transform/inputs/F_trip_seconds/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
/transform/inputs/F_trip_start_day/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
'transform/inputs/F_trip_start_day/shapePlaceholderWithDefault/transform/inputs/F_trip_start_day/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
(transform/inputs/F_trip_start_day/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
)transform/inputs/F_trip_start_day/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
0transform/inputs/F_trip_start_hour/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
(transform/inputs/F_trip_start_hour/shapePlaceholderWithDefault0transform/inputs/F_trip_start_hour/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
)transform/inputs/F_trip_start_hour/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
*transform/inputs/F_trip_start_hour/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
1transform/inputs/F_trip_start_month/shape_defaultConst*
_output_shapes
:*
dtype0	*%
valueB	"????????????????
?
)transform/inputs/F_trip_start_month/shapePlaceholderWithDefault1transform/inputs/F_trip_start_month/shape_default*
_output_shapes
:*
dtype0	*
shape:
?
*transform/inputs/F_trip_start_month/valuesPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
+transform/inputs/F_trip_start_month/indicesPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
,transform/inputs/inputs/company/indices_copyIdentity transform/inputs/company/indices*
T0	*'
_output_shapes
:?????????
?
+transform/inputs/inputs/company/values_copyIdentitytransform/inputs/company/values*
T0*#
_output_shapes
:?????????
{
*transform/inputs/inputs/company/shape_copyIdentitytransform/inputs/company/shape*
T0	*
_output_shapes
:
?
;transform/inputs/inputs/F_dropoff_census_tract/indices_copyIdentity/transform/inputs/F_dropoff_census_tract/indices*
T0	*'
_output_shapes
:?????????
?
:transform/inputs/inputs/F_dropoff_census_tract/values_copyIdentity.transform/inputs/F_dropoff_census_tract/values*
T0	*#
_output_shapes
:?????????
?
9transform/inputs/inputs/F_dropoff_census_tract/shape_copyIdentity-transform/inputs/F_dropoff_census_tract/shape*
T0	*
_output_shapes
:
?
=transform/inputs/inputs/F_dropoff_community_area/indices_copyIdentity1transform/inputs/F_dropoff_community_area/indices*
T0	*'
_output_shapes
:?????????
?
<transform/inputs/inputs/F_dropoff_community_area/values_copyIdentity0transform/inputs/F_dropoff_community_area/values*
T0	*#
_output_shapes
:?????????
?
;transform/inputs/inputs/F_dropoff_community_area/shape_copyIdentity/transform/inputs/F_dropoff_community_area/shape*
T0	*
_output_shapes
:
?
7transform/inputs/inputs/F_dropoff_latitude/indices_copyIdentity+transform/inputs/F_dropoff_latitude/indices*
T0	*'
_output_shapes
:?????????
?
6transform/inputs/inputs/F_dropoff_latitude/values_copyIdentity*transform/inputs/F_dropoff_latitude/values*
T0*#
_output_shapes
:?????????
?
5transform/inputs/inputs/F_dropoff_latitude/shape_copyIdentity)transform/inputs/F_dropoff_latitude/shape*
T0	*
_output_shapes
:
?
8transform/inputs/inputs/F_dropoff_longitude/indices_copyIdentity,transform/inputs/F_dropoff_longitude/indices*
T0	*'
_output_shapes
:?????????
?
7transform/inputs/inputs/F_dropoff_longitude/values_copyIdentity+transform/inputs/F_dropoff_longitude/values*
T0*#
_output_shapes
:?????????
?
6transform/inputs/inputs/F_dropoff_longitude/shape_copyIdentity*transform/inputs/F_dropoff_longitude/shape*
T0	*
_output_shapes
:
?
)transform/inputs/inputs/fare/indices_copyIdentitytransform/inputs/fare/indices*
T0	*'
_output_shapes
:?????????
?
(transform/inputs/inputs/fare/values_copyIdentitytransform/inputs/fare/values*
T0*#
_output_shapes
:?????????
u
'transform/inputs/inputs/fare/shape_copyIdentitytransform/inputs/fare/shape*
T0	*
_output_shapes
:
?
3transform/inputs/inputs/F_payment_type/indices_copyIdentity'transform/inputs/F_payment_type/indices*
T0	*'
_output_shapes
:?????????
?
2transform/inputs/inputs/F_payment_type/values_copyIdentity&transform/inputs/F_payment_type/values*
T0*#
_output_shapes
:?????????
?
1transform/inputs/inputs/F_payment_type/shape_copyIdentity%transform/inputs/F_payment_type/shape*
T0	*
_output_shapes
:
?
:transform/inputs/inputs/F_pickup_census_tract/indices_copyIdentity.transform/inputs/F_pickup_census_tract/indices*
T0	*'
_output_shapes
:?????????
?
9transform/inputs/inputs/F_pickup_census_tract/values_copyIdentity-transform/inputs/F_pickup_census_tract/values*
T0	*#
_output_shapes
:?????????
?
8transform/inputs/inputs/F_pickup_census_tract/shape_copyIdentity,transform/inputs/F_pickup_census_tract/shape*
T0	*
_output_shapes
:
?
<transform/inputs/inputs/F_pickup_community_area/indices_copyIdentity0transform/inputs/F_pickup_community_area/indices*
T0	*'
_output_shapes
:?????????
?
;transform/inputs/inputs/F_pickup_community_area/values_copyIdentity/transform/inputs/F_pickup_community_area/values*
T0	*#
_output_shapes
:?????????
?
:transform/inputs/inputs/F_pickup_community_area/shape_copyIdentity.transform/inputs/F_pickup_community_area/shape*
T0	*
_output_shapes
:
?
6transform/inputs/inputs/F_pickup_latitude/indices_copyIdentity*transform/inputs/F_pickup_latitude/indices*
T0	*'
_output_shapes
:?????????
?
5transform/inputs/inputs/F_pickup_latitude/values_copyIdentity)transform/inputs/F_pickup_latitude/values*
T0*#
_output_shapes
:?????????
?
4transform/inputs/inputs/F_pickup_latitude/shape_copyIdentity(transform/inputs/F_pickup_latitude/shape*
T0	*
_output_shapes
:
?
7transform/inputs/inputs/F_pickup_longitude/indices_copyIdentity+transform/inputs/F_pickup_longitude/indices*
T0	*'
_output_shapes
:?????????
?
6transform/inputs/inputs/F_pickup_longitude/values_copyIdentity*transform/inputs/F_pickup_longitude/values*
T0*#
_output_shapes
:?????????
?
5transform/inputs/inputs/F_pickup_longitude/shape_copyIdentity)transform/inputs/F_pickup_longitude/shape*
T0	*
_output_shapes
:
?
)transform/inputs/inputs/tips/indices_copyIdentitytransform/inputs/tips/indices*
T0	*'
_output_shapes
:?????????
?
(transform/inputs/inputs/tips/values_copyIdentitytransform/inputs/tips/values*
T0*#
_output_shapes
:?????????
u
'transform/inputs/inputs/tips/shape_copyIdentitytransform/inputs/tips/shape*
T0	*
_output_shapes
:
?
1transform/inputs/inputs/F_trip_miles/indices_copyIdentity%transform/inputs/F_trip_miles/indices*
T0	*'
_output_shapes
:?????????
?
0transform/inputs/inputs/F_trip_miles/values_copyIdentity$transform/inputs/F_trip_miles/values*
T0*#
_output_shapes
:?????????
?
/transform/inputs/inputs/F_trip_miles/shape_copyIdentity#transform/inputs/F_trip_miles/shape*
T0	*
_output_shapes
:
?
3transform/inputs/inputs/F_trip_seconds/indices_copyIdentity'transform/inputs/F_trip_seconds/indices*
T0	*'
_output_shapes
:?????????
?
2transform/inputs/inputs/F_trip_seconds/values_copyIdentity&transform/inputs/F_trip_seconds/values*
T0	*#
_output_shapes
:?????????
?
1transform/inputs/inputs/F_trip_seconds/shape_copyIdentity%transform/inputs/F_trip_seconds/shape*
T0	*
_output_shapes
:
?
5transform/inputs/inputs/F_trip_start_day/indices_copyIdentity)transform/inputs/F_trip_start_day/indices*
T0	*'
_output_shapes
:?????????
?
4transform/inputs/inputs/F_trip_start_day/values_copyIdentity(transform/inputs/F_trip_start_day/values*
T0	*#
_output_shapes
:?????????
?
3transform/inputs/inputs/F_trip_start_day/shape_copyIdentity'transform/inputs/F_trip_start_day/shape*
T0	*
_output_shapes
:
?
6transform/inputs/inputs/F_trip_start_hour/indices_copyIdentity*transform/inputs/F_trip_start_hour/indices*
T0	*'
_output_shapes
:?????????
?
5transform/inputs/inputs/F_trip_start_hour/values_copyIdentity)transform/inputs/F_trip_start_hour/values*
T0	*#
_output_shapes
:?????????
?
4transform/inputs/inputs/F_trip_start_hour/shape_copyIdentity(transform/inputs/F_trip_start_hour/shape*
T0	*
_output_shapes
:
?
7transform/inputs/inputs/F_trip_start_month/indices_copyIdentity+transform/inputs/F_trip_start_month/indices*
T0	*'
_output_shapes
:?????????
?
6transform/inputs/inputs/F_trip_start_month/values_copyIdentity*transform/inputs/F_trip_start_month/values*
T0	*#
_output_shapes
:?????????
?
5transform/inputs/inputs/F_trip_start_month/shape_copyIdentity)transform/inputs/F_trip_start_month/shape*
T0	*
_output_shapes
:
g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_sliceStridedSlice/transform/inputs/inputs/F_trip_miles/shape_copytransform/strided_slice/stacktransform/strided_slice/stack_1transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
$transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
"transform/SparseTensor/dense_shapePacktransform/strided_slice$transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
%transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDenseSparseToDense1transform/inputs/inputs/F_trip_miles/indices_copy"transform/SparseTensor/dense_shape0transform/inputs/inputs/F_trip_miles/values_copy%transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
z
transform/SqueezeSqueezetransform/SparseToDense*
T0*#
_output_shapes
:?????????*
squeeze_dims

x
,transform/scale_to_z_score/mean_and_var/SizeSizetransform/Squeeze*
T0*
_output_shapes
: *
out_type0
?
,transform/scale_to_z_score/mean_and_var/CastCast,transform/scale_to_z_score/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
w
-transform/scale_to_z_score/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
+transform/scale_to_z_score/mean_and_var/SumSumtransform/Squeeze-transform/scale_to_z_score/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
/transform/scale_to_z_score/mean_and_var/truedivRealDiv+transform/scale_to_z_score/mean_and_var/Sum,transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
?
+transform/scale_to_z_score/mean_and_var/subSubtransform/Squeeze/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
.transform/scale_to_z_score/mean_and_var/SquareSquare+transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:?????????
y
/transform/scale_to_z_score/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
-transform/scale_to_z_score/mean_and_var/Sum_1Sum.transform/scale_to_z_score/mean_and_var/Square/transform/scale_to_z_score/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
1transform/scale_to_z_score/mean_and_var/truediv_1RealDiv-transform/scale_to_z_score/mean_and_var/Sum_1,transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
r
-transform/scale_to_z_score/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
t
3transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
v
5transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
m
transform/scale_to_z_score/subSubtransform/SqueezeConst*
T0*#
_output_shapes
:?????????
Q
transform/scale_to_z_score/SqrtSqrtConst_1*
T0*
_output_shapes
: 
j
%transform/scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
#transform/scale_to_z_score/NotEqualNotEqualtransform/scale_to_z_score/Sqrt%transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
?
%transform/scale_to_z_score/zeros_like	ZerosLiketransform/scale_to_z_score/sub*
T0*#
_output_shapes
:?????????
?
transform/scale_to_z_score/CastCast#transform/scale_to_z_score/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
transform/scale_to_z_score/addAddV2%transform/scale_to_z_score/zeros_liketransform/scale_to_z_score/Cast*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_z_score/Cast_1Casttransform/scale_to_z_score/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
"transform/scale_to_z_score/truedivRealDivtransform/scale_to_z_score/subtransform/scale_to_z_score/Sqrt*
T0*#
_output_shapes
:?????????
?
#transform/scale_to_z_score/SelectV2SelectV2!transform/scale_to_z_score/Cast_1"transform/scale_to_z_score/truedivtransform/scale_to_z_score/sub*
T0*#
_output_shapes
:?????????
i
transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_1StridedSlice'transform/inputs/inputs/fare/shape_copytransform/strided_slice_1/stack!transform/strided_slice_1/stack_1!transform/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_1/dense_shapePacktransform/strided_slice_1&transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_1SparseToDense)transform/inputs/inputs/fare/indices_copy$transform/SparseTensor_1/dense_shape(transform/inputs/inputs/fare/values_copy'transform/SparseToDense_1/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_1Squeezetransform/SparseToDense_1*
T0*#
_output_shapes
:?????????*
squeeze_dims

|
.transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/Squeeze_1*
T0*
_output_shapes
: *
out_type0
?
.transform/scale_to_z_score_1/mean_and_var/CastCast.transform/scale_to_z_score_1/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
y
/transform/scale_to_z_score_1/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
-transform/scale_to_z_score_1/mean_and_var/SumSumtransform/Squeeze_1/transform/scale_to_z_score_1/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
1transform/scale_to_z_score_1/mean_and_var/truedivRealDiv-transform/scale_to_z_score_1/mean_and_var/Sum.transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
?
-transform/scale_to_z_score_1/mean_and_var/subSubtransform/Squeeze_11transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
0transform/scale_to_z_score_1/mean_and_var/SquareSquare-transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:?????????
{
1transform/scale_to_z_score_1/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum0transform/scale_to_z_score_1/mean_and_var/Square1transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
3transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv/transform/scale_to_z_score_1/mean_and_var/Sum_1.transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_1/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
s
 transform/scale_to_z_score_1/subSubtransform/Squeeze_1Const_2*
T0*#
_output_shapes
:?????????
S
!transform/scale_to_z_score_1/SqrtSqrtConst_3*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
%transform/scale_to_z_score_1/NotEqualNotEqual!transform/scale_to_z_score_1/Sqrt'transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
?
'transform/scale_to_z_score_1/zeros_like	ZerosLike transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:?????????
?
!transform/scale_to_z_score_1/CastCast%transform/scale_to_z_score_1/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
 transform/scale_to_z_score_1/addAddV2'transform/scale_to_z_score_1/zeros_like!transform/scale_to_z_score_1/Cast*
T0*#
_output_shapes
:?????????
?
#transform/scale_to_z_score_1/Cast_1Cast transform/scale_to_z_score_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
$transform/scale_to_z_score_1/truedivRealDiv transform/scale_to_z_score_1/sub!transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:?????????
?
%transform/scale_to_z_score_1/SelectV2SelectV2#transform/scale_to_z_score_1/Cast_1$transform/scale_to_z_score_1/truediv transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:?????????
i
transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_2StridedSlice1transform/inputs/inputs/F_trip_seconds/shape_copytransform/strided_slice_2/stack!transform/strided_slice_2/stack_1!transform/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_2/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_2/dense_shapePacktransform/strided_slice_2&transform/SparseTensor_2/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_2SparseToDense3transform/inputs/inputs/F_trip_seconds/indices_copy$transform/SparseTensor_2/dense_shape2transform/inputs/inputs/F_trip_seconds/values_copy'transform/SparseToDense_2/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_2Squeezetransform/SparseToDense_2*
T0	*#
_output_shapes
:?????????*
squeeze_dims

?
.transform/scale_to_z_score_2/mean_and_var/CastCasttransform/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
?
.transform/scale_to_z_score_2/mean_and_var/SizeSize.transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: *
out_type0
?
0transform/scale_to_z_score_2/mean_and_var/Cast_1Cast.transform/scale_to_z_score_2/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
y
/transform/scale_to_z_score_2/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
-transform/scale_to_z_score_2/mean_and_var/SumSum.transform/scale_to_z_score_2/mean_and_var/Cast/transform/scale_to_z_score_2/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
1transform/scale_to_z_score_2/mean_and_var/truedivRealDiv-transform/scale_to_z_score_2/mean_and_var/Sum0transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
?
-transform/scale_to_z_score_2/mean_and_var/subSub.transform/scale_to_z_score_2/mean_and_var/Cast1transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:?????????
?
0transform/scale_to_z_score_2/mean_and_var/SquareSquare-transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:?????????
{
1transform/scale_to_z_score_2/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum0transform/scale_to_z_score_2/mean_and_var/Square1transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
3transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv/transform/scale_to_z_score_2/mean_and_var/Sum_10transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_2/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?
!transform/scale_to_z_score_2/CastCasttransform/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:?????????
?
 transform/scale_to_z_score_2/subSub!transform/scale_to_z_score_2/CastConst_4*
T0*#
_output_shapes
:?????????
S
!transform/scale_to_z_score_2/SqrtSqrtConst_5*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
%transform/scale_to_z_score_2/NotEqualNotEqual!transform/scale_to_z_score_2/Sqrt'transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
?
'transform/scale_to_z_score_2/zeros_like	ZerosLike transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:?????????
?
#transform/scale_to_z_score_2/Cast_1Cast%transform/scale_to_z_score_2/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
?
 transform/scale_to_z_score_2/addAddV2'transform/scale_to_z_score_2/zeros_like#transform/scale_to_z_score_2/Cast_1*
T0*#
_output_shapes
:?????????
?
#transform/scale_to_z_score_2/Cast_2Cast transform/scale_to_z_score_2/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
$transform/scale_to_z_score_2/truedivRealDiv transform/scale_to_z_score_2/sub!transform/scale_to_z_score_2/Sqrt*
T0*#
_output_shapes
:?????????
?
%transform/scale_to_z_score_2/SelectV2SelectV2#transform/scale_to_z_score_2/Cast_2$transform/scale_to_z_score_2/truediv transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:?????????
i
transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_3StridedSlice1transform/inputs/inputs/F_payment_type/shape_copytransform/strided_slice_3/stack!transform/strided_slice_3/stack_1!transform/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_3/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_3/dense_shapePacktransform/strided_slice_3&transform/SparseTensor_3/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
?
transform/SparseToDense_3SparseToDense3transform/inputs/inputs/F_payment_type/indices_copy$transform/SparseTensor_3/dense_shape2transform/inputs/inputs/F_payment_type/values_copy'transform/SparseToDense_3/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_3Squeezetransform/SparseToDense_3*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/Squeeze_3?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
stransform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
@transform/compute_and_apply_vocabulary/vocabulary/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
<transform/compute_and_apply_vocabulary/vocabulary/ExpandDims
ExpandDimsConst_6@transform/compute_and_apply_vocabulary/vocabulary/ExpandDims/dim*
T0	*

Tdim0*
_output_shapes
:
?
7transform/compute_and_apply_vocabulary/vocabulary/ConstConst*
_output_shapes
:*
dtype0*B
value9B7B-vocab_compute_and_apply_vocabulary_vocabulary
?
7transform/compute_and_apply_vocabulary/vocabulary/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Etransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
?transform/compute_and_apply_vocabulary/vocabulary/strided_sliceStridedSlice7transform/compute_and_apply_vocabulary/vocabulary/ShapeEtransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stackGtransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_1Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Ctransform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Atransform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shapePack?transform/compute_and_apply_vocabulary/vocabulary/strided_sliceCtransform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape/1*
N*
T0*
_output_shapes
:*

axis 
?
;transform/compute_and_apply_vocabulary/vocabulary/Reshape_1Reshape7transform/compute_and_apply_vocabulary/vocabulary/ConstAtransform/compute_and_apply_vocabulary/vocabulary/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
?
9transform/compute_and_apply_vocabulary/vocabulary/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1StridedSlice9transform/compute_and_apply_vocabulary/vocabulary/Shape_1Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
9transform/compute_and_apply_vocabulary/vocabulary/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2StridedSlice9transform/compute_and_apply_vocabulary/vocabulary/Shape_2Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
;transform/compute_and_apply_vocabulary/vocabulary/Fill/dimsPackAtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
6transform/compute_and_apply_vocabulary/vocabulary/FillFill;transform/compute_and_apply_vocabulary/vocabulary/Fill/dimsAtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_2*
T0*
_output_shapes
:*

index_type0
?
9transform/compute_and_apply_vocabulary/vocabulary/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3StridedSlice9transform/compute_and_apply_vocabulary/vocabulary/Shape_3Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Ctransform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Atransform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shapePackAtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_3Ctransform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape/1*
N*
T0*
_output_shapes
:*

axis 
?
;transform/compute_and_apply_vocabulary/vocabulary/Reshape_2Reshape<transform/compute_and_apply_vocabulary/vocabulary/ExpandDimsAtransform/compute_and_apply_vocabulary/vocabulary/Reshape_2/shape*
T0	*
Tshape0*
_output_shapes

:
?
9transform/compute_and_apply_vocabulary/vocabulary/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"      
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4StridedSlice9transform/compute_and_apply_vocabulary/vocabulary/Shape_4Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
9transform/compute_and_apply_vocabulary/vocabulary/Shape_5Const*
_output_shapes
:*
dtype0*
valueB"      
?
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5StridedSlice9transform/compute_and_apply_vocabulary/vocabulary/Shape_5Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
=transform/compute_and_apply_vocabulary/vocabulary/Fill_1/dimsPackAtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_4*
N*
T0*
_output_shapes
:*

axis 
?
8transform/compute_and_apply_vocabulary/vocabulary/Fill_1Fill=transform/compute_and_apply_vocabulary/vocabulary/Fill_1/dimsAtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_5*
T0*
_output_shapes
:*

index_type0
?
7transform/compute_and_apply_vocabulary/vocabulary/stackPack6transform/compute_and_apply_vocabulary/vocabulary/Fill8transform/compute_and_apply_vocabulary/vocabulary/Fill_1*
N*
T0*
_output_shapes

:*

axis
?
=transform/compute_and_apply_vocabulary/vocabulary/EncodeProtoEncodeProto7transform/compute_and_apply_vocabulary/vocabulary/stack;transform/compute_and_apply_vocabulary/vocabulary/Reshape_1;transform/compute_and_apply_vocabulary/vocabulary/Reshape_2*
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
Gtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6StridedSlice=transform/compute_and_apply_vocabulary/vocabulary/EncodeProtoGtransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stackItransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_1Itransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Utransform/compute_and_apply_vocabulary/vocabulary/tft_schema_override_global_sentinelConst*
_output_shapes
: *
dtype0*
valueB Bunused
?
9transform/compute_and_apply_vocabulary/vocabulary/Const_1Const*
_output_shapes
: *
dtype0*g
value^B\ BVtype.googleapis.com/third_party.py.tensorflow_transform.annotations.VocabularyMetadata
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst_7*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
?
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

?
Ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
?
Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_3*#
_output_shapes
:?????????*
num_buckets

?
htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/Squeeze_38transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
?
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddPtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:?????????
?
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV28transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error(
?
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:?????????
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
6transform/compute_and_apply_vocabulary/apply_vocab/subSubFtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add8transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_4StridedSlice*transform/inputs/inputs/company/shape_copytransform/strided_slice_4/stack!transform/strided_slice_4/stack_1!transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_4/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_4/dense_shapePacktransform/strided_slice_4&transform/SparseTensor_4/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
?
transform/SparseToDense_4SparseToDense,transform/inputs/inputs/company/indices_copy$transform/SparseTensor_4/dense_shape+transform/inputs/inputs/company/values_copy'transform/SparseToDense_4/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_4Squeezetransform/SparseToDense_4*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/Squeeze_4Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
wtransform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
?
Btransform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
>transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims
ExpandDimsConst_8Btransform/compute_and_apply_vocabulary_1/vocabulary/ExpandDims/dim*
T0	*

Tdim0*
_output_shapes
:
?
9transform/compute_and_apply_vocabulary_1/vocabulary/ConstConst*
_output_shapes
:*
dtype0*D
value;B9B/vocab_compute_and_apply_vocabulary_1_vocabulary
?
9transform/compute_and_apply_vocabulary_1/vocabulary/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Gtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Atransform/compute_and_apply_vocabulary_1/vocabulary/strided_sliceStridedSlice9transform/compute_and_apply_vocabulary_1/vocabulary/ShapeGtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stackItransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_1Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Etransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shapePackAtransform/compute_and_apply_vocabulary_1/vocabulary/strided_sliceEtransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape/1*
N*
T0*
_output_shapes
:*

axis 
?
=transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1Reshape9transform/compute_and_apply_vocabulary_1/vocabulary/ConstCtransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1StridedSlice;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_1Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2StridedSlice;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_2Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
=transform/compute_and_apply_vocabulary_1/vocabulary/Fill/dimsPackCtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
8transform/compute_and_apply_vocabulary_1/vocabulary/FillFill=transform/compute_and_apply_vocabulary_1/vocabulary/Fill/dimsCtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_2*
T0*
_output_shapes
:*

index_type0
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3StridedSlice;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_3Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Etransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shapePackCtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_3Etransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape/1*
N*
T0*
_output_shapes
:*

axis 
?
=transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2Reshape>transform/compute_and_apply_vocabulary_1/vocabulary/ExpandDimsCtransform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2/shape*
T0	*
Tshape0*
_output_shapes

:
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"      
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4StridedSlice;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_4Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_5Const*
_output_shapes
:*
dtype0*
valueB"      
?
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5StridedSlice;transform/compute_and_apply_vocabulary_1/vocabulary/Shape_5Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
?transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1/dimsPackCtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_4*
N*
T0*
_output_shapes
:*

axis 
?
:transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1Fill?transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1/dimsCtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_5*
T0*
_output_shapes
:*

index_type0
?
9transform/compute_and_apply_vocabulary_1/vocabulary/stackPack8transform/compute_and_apply_vocabulary_1/vocabulary/Fill:transform/compute_and_apply_vocabulary_1/vocabulary/Fill_1*
N*
T0*
_output_shapes

:*

axis
?
?transform/compute_and_apply_vocabulary_1/vocabulary/EncodeProtoEncodeProto9transform/compute_and_apply_vocabulary_1/vocabulary/stack=transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_1=transform/compute_and_apply_vocabulary_1/vocabulary/Reshape_2*
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
Itransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ctransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6StridedSlice?transform/compute_and_apply_vocabulary_1/vocabulary/EncodeProtoItransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stackKtransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_1Ktransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Wtransform/compute_and_apply_vocabulary_1/vocabulary/tft_schema_override_global_sentinelConst*
_output_shapes
: *
dtype0*
valueB Bunused
?
;transform/compute_and_apply_vocabulary_1/vocabulary/Const_1Const*
_output_shapes
: *
dtype0*g
value^B\ BVtype.googleapis.com/third_party.py.tensorflow_transform.annotations.VocabularyMetadata
?
?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
?
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_9*
	delimiter	*
	key_index?????????*
value_index?????????*

vocab_size?????????
?
ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
?
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

?
Htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
?
Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_4*#
_output_shapes
:?????????*
num_buckets

?
jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/Squeeze_4:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
?
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAddRtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_buckethtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:?????????
?
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error(
?
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:?????????
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubHtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_5StridedSlice4transform/inputs/inputs/F_pickup_latitude/shape_copytransform/strided_slice_5/stack!transform/strided_slice_5/stack_1!transform/strided_slice_5/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_5/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_5/dense_shapePacktransform/strided_slice_5&transform/SparseTensor_5/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_5SparseToDense6transform/inputs/inputs/F_pickup_latitude/indices_copy$transform/SparseTensor_5/dense_shape5transform/inputs/inputs/F_pickup_latitude/values_copy'transform/SparseToDense_5/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_5Squeezetransform/SparseToDense_5*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
)transform/bucketize/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
'transform/bucketize/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
\
&transform/bucketize/quantiles/sort/NegNegConst_10*
T0*
_output_shapes
:	
?
(transform/bucketize/quantiles/sort/ShapeShape&transform/bucketize/quantiles/sort/Neg*
T0*
_output_shapes
:*
out_type0
?
6transform/bucketize/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
8transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
8transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
0transform/bucketize/quantiles/sort/strided_sliceStridedSlice(transform/bucketize/quantiles/sort/Shape6transform/bucketize/quantiles/sort/strided_slice/stack8transform/bucketize/quantiles/sort/strided_slice/stack_18transform/bucketize/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/bucketize/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
)transform/bucketize/quantiles/sort/TopKV2TopKV2&transform/bucketize/quantiles/sort/Neg0transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	*
sorted(

(transform/bucketize/quantiles/sort/Neg_1Neg)transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
n
,transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
(transform/bucketize/quantiles/ExpandDims
ExpandDims(transform/bucketize/quantiles/sort/Neg_1,transform/bucketize/quantiles/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:	
t
)transform/bucketize/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
(transform/bucketize/quantiles/sort_1/NegNeg(transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	
?
*transform/bucketize/quantiles/sort_1/ShapeShape(transform/bucketize/quantiles/sort_1/Neg*
T0*
_output_shapes
:*
out_type0
?
8transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
:transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
:transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
2transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice*transform/bucketize/quantiles/sort_1/Shape8transform/bucketize/quantiles/sort_1/strided_slice/stack:transform/bucketize/quantiles/sort_1/strided_slice/stack_1:transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
k
)transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
+transform/bucketize/quantiles/sort_1/TopKV2TopKV2(transform/bucketize/quantiles/sort_1/Neg2transform/bucketize/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	*
sorted(
?
*transform/bucketize/quantiles/sort_1/Neg_1Neg+transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
f
$transform/bucketize/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
%transform/bucketize/assert_rank/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
V
Ntransform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
G
?transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Xtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlicePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Otransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastXtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
?
Ytransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegYtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:	
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_5*
T0*#
_output_shapes
:?????????
?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxPtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
?
Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
?
Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:

?
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_5*
T0*#
_output_shapes
:?????????
?
Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*

axis *	
num
?
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Cast`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubOtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
i
'transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
'transform/bucketize/apply_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0

5transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
/transform/bucketize/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
)transform/bucketize/apply_buckets/ReshapeReshape*transform/bucketize/quantiles/sort_1/Neg_1/transform/bucketize/apply_buckets/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	
r
0transform/bucketize/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
,transform/bucketize/apply_buckets/ExpandDims
ExpandDims)transform/bucketize/apply_buckets/Reshape0transform/bucketize/apply_buckets/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:	
?
)transform/bucketize/apply_buckets/Shape_1Shape,transform/bucketize/apply_buckets/ExpandDims*
T0*
_output_shapes
:*
out_type0
?
7transform/bucketize/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
1transform/bucketize/apply_buckets/strided_slice_1StridedSlice)transform/bucketize/apply_buckets/Shape_17transform/bucketize/apply_buckets/strided_slice_1/stack9transform/bucketize/apply_buckets/strided_slice_1/stack_19transform/bucketize/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
5transform/bucketize/apply_buckets/EncodeProto/sizes/0Pack1transform/bucketize/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
3transform/bucketize/apply_buckets/EncodeProto/sizesPack5transform/bucketize/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:*

axis 
?
-transform/bucketize/apply_buckets/EncodeProtoEncodeProto3transform/bucketize/apply_buckets/EncodeProto/sizes,transform/bucketize/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
descriptor_source
local://*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
7transform/bucketize/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
9transform/bucketize/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
1transform/bucketize/apply_buckets/strided_slice_2StridedSlice-transform/bucketize/apply_buckets/EncodeProto7transform/bucketize/apply_buckets/strided_slice_2/stack9transform/bucketize/apply_buckets/strided_slice_2/stack_19transform/bucketize/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
)transform/bucketize/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
i
transform/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_6StridedSlice5transform/inputs/inputs/F_pickup_longitude/shape_copytransform/strided_slice_6/stack!transform/strided_slice_6/stack_1!transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_6/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_6/dense_shapePacktransform/strided_slice_6&transform/SparseTensor_6/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_6SparseToDense7transform/inputs/inputs/F_pickup_longitude/indices_copy$transform/SparseTensor_6/dense_shape6transform/inputs/inputs/F_pickup_longitude/values_copy'transform/SparseToDense_6/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_6Squeezetransform/SparseToDense_6*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
+transform/bucketize_1/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
)transform/bucketize_1/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
^
(transform/bucketize_1/quantiles/sort/NegNegConst_11*
T0*
_output_shapes
:
?
*transform/bucketize_1/quantiles/sort/ShapeShape(transform/bucketize_1/quantiles/sort/Neg*
T0*
_output_shapes
:*
out_type0
?
8transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
:transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
:transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
2transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_1/quantiles/sort/Shape8transform/bucketize_1/quantiles/sort/strided_slice/stack:transform/bucketize_1/quantiles/sort/strided_slice/stack_1:transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
k
)transform/bucketize_1/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
+transform/bucketize_1/quantiles/sort/TopKV2TopKV2(transform/bucketize_1/quantiles/sort/Neg2transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
::*
sorted(
?
*transform/bucketize_1/quantiles/sort/Neg_1Neg+transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:
p
.transform/bucketize_1/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
*transform/bucketize_1/quantiles/ExpandDims
ExpandDims*transform/bucketize_1/quantiles/sort/Neg_1.transform/bucketize_1/quantiles/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
v
+transform/bucketize_1/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
*transform/bucketize_1/quantiles/sort_1/NegNeg*transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:
?
,transform/bucketize_1/quantiles/sort_1/ShapeShape*transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:*
out_type0
?
:transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
4transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_1/quantiles/sort_1/Shape:transform/bucketize_1/quantiles/sort_1/strided_slice/stack<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
m
+transform/bucketize_1/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
-transform/bucketize_1/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_1/quantiles/sort_1/Neg4transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::*
sorted(
?
,transform/bucketize_1/quantiles/sort_1/Neg_1Neg-transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
h
&transform/bucketize_1/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
'transform/bucketize_1/assert_rank/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
X
Ptransform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
?
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ztransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Qtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
?
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
?
[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:
?
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_6*
T0*#
_output_shapes
:?????????
?
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
?
\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
?
Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:
?
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_6*
T0*#
_output_shapes
:?????????
?
Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*

axis *	
num
?
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
k
)transform/bucketize_1/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
)transform/bucketize_1/apply_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
7transform/bucketize_1/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
1transform/bucketize_1/apply_buckets/strided_sliceStridedSlice)transform/bucketize_1/apply_buckets/Shape7transform/bucketize_1/apply_buckets/strided_slice/stack9transform/bucketize_1/apply_buckets/strided_slice/stack_19transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
1transform/bucketize_1/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
+transform/bucketize_1/apply_buckets/ReshapeReshape,transform/bucketize_1/quantiles/sort_1/Neg_11transform/bucketize_1/apply_buckets/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
t
2transform/bucketize_1/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
.transform/bucketize_1/apply_buckets/ExpandDims
ExpandDims+transform/bucketize_1/apply_buckets/Reshape2transform/bucketize_1/apply_buckets/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
?
+transform/bucketize_1/apply_buckets/Shape_1Shape.transform/bucketize_1/apply_buckets/ExpandDims*
T0*
_output_shapes
:*
out_type0
?
9transform/bucketize_1/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_1/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_1/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_1/apply_buckets/strided_slice_1StridedSlice+transform/bucketize_1/apply_buckets/Shape_19transform/bucketize_1/apply_buckets/strided_slice_1/stack;transform/bucketize_1/apply_buckets/strided_slice_1/stack_1;transform/bucketize_1/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
7transform/bucketize_1/apply_buckets/EncodeProto/sizes/0Pack3transform/bucketize_1/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
5transform/bucketize_1/apply_buckets/EncodeProto/sizesPack7transform/bucketize_1/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:*

axis 
?
/transform/bucketize_1/apply_buckets/EncodeProtoEncodeProto5transform/bucketize_1/apply_buckets/EncodeProto/sizes.transform/bucketize_1/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
descriptor_source
local://*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
9transform/bucketize_1/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
;transform/bucketize_1/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_1/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_1/apply_buckets/strided_slice_2StridedSlice/transform/bucketize_1/apply_buckets/EncodeProto9transform/bucketize_1/apply_buckets/strided_slice_2/stack;transform/bucketize_1/apply_buckets/strided_slice_2/stack_1;transform/bucketize_1/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
+transform/bucketize_1/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
i
transform/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_7StridedSlice5transform/inputs/inputs/F_dropoff_latitude/shape_copytransform/strided_slice_7/stack!transform/strided_slice_7/stack_1!transform/strided_slice_7/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_7/dense_shapePacktransform/strided_slice_7&transform/SparseTensor_7/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_7SparseToDense7transform/inputs/inputs/F_dropoff_latitude/indices_copy$transform/SparseTensor_7/dense_shape6transform/inputs/inputs/F_dropoff_latitude/values_copy'transform/SparseToDense_7/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_7Squeezetransform/SparseToDense_7*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
+transform/bucketize_2/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
)transform/bucketize_2/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
^
(transform/bucketize_2/quantiles/sort/NegNegConst_12*
T0*
_output_shapes
:

?
*transform/bucketize_2/quantiles/sort/ShapeShape(transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:*
out_type0
?
8transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
:transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
:transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
2transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_2/quantiles/sort/Shape8transform/bucketize_2/quantiles/sort/strided_slice/stack:transform/bucketize_2/quantiles/sort/strided_slice/stack_1:transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
k
)transform/bucketize_2/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
+transform/bucketize_2/quantiles/sort/TopKV2TopKV2(transform/bucketize_2/quantiles/sort/Neg2transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:
*
sorted(
?
*transform/bucketize_2/quantiles/sort/Neg_1Neg+transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:

p
.transform/bucketize_2/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
*transform/bucketize_2/quantiles/ExpandDims
ExpandDims*transform/bucketize_2/quantiles/sort/Neg_1.transform/bucketize_2/quantiles/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:

v
+transform/bucketize_2/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
*transform/bucketize_2/quantiles/sort_1/NegNeg*transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:

?
,transform/bucketize_2/quantiles/sort_1/ShapeShape*transform/bucketize_2/quantiles/sort_1/Neg*
T0*
_output_shapes
:*
out_type0
?
:transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
4transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_2/quantiles/sort_1/Shape:transform/bucketize_2/quantiles/sort_1/strided_slice/stack<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
m
+transform/bucketize_2/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
-transform/bucketize_2/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_2/quantiles/sort_1/Neg4transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:
*
sorted(
?
,transform/bucketize_2/quantiles/sort_1/Neg_1Neg-transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

h
&transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
'transform/bucketize_2/assert_rank/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
X
Ptransform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
?
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ztransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Qtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
?
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

?
[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:

?
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_7*
T0*#
_output_shapes
:?????????
?
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
?
\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
?
Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:
?
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_7*
T0*#
_output_shapes
:?????????
?
Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*

axis *	
num
?
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
k
)transform/bucketize_2/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
)transform/bucketize_2/apply_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
7transform/bucketize_2/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
1transform/bucketize_2/apply_buckets/strided_sliceStridedSlice)transform/bucketize_2/apply_buckets/Shape7transform/bucketize_2/apply_buckets/strided_slice/stack9transform/bucketize_2/apply_buckets/strided_slice/stack_19transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
1transform/bucketize_2/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
+transform/bucketize_2/apply_buckets/ReshapeReshape,transform/bucketize_2/quantiles/sort_1/Neg_11transform/bucketize_2/apply_buckets/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

t
2transform/bucketize_2/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
.transform/bucketize_2/apply_buckets/ExpandDims
ExpandDims+transform/bucketize_2/apply_buckets/Reshape2transform/bucketize_2/apply_buckets/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:

?
+transform/bucketize_2/apply_buckets/Shape_1Shape.transform/bucketize_2/apply_buckets/ExpandDims*
T0*
_output_shapes
:*
out_type0
?
9transform/bucketize_2/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_2/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_2/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_2/apply_buckets/strided_slice_1StridedSlice+transform/bucketize_2/apply_buckets/Shape_19transform/bucketize_2/apply_buckets/strided_slice_1/stack;transform/bucketize_2/apply_buckets/strided_slice_1/stack_1;transform/bucketize_2/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
7transform/bucketize_2/apply_buckets/EncodeProto/sizes/0Pack3transform/bucketize_2/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
5transform/bucketize_2/apply_buckets/EncodeProto/sizesPack7transform/bucketize_2/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:*

axis 
?
/transform/bucketize_2/apply_buckets/EncodeProtoEncodeProto5transform/bucketize_2/apply_buckets/EncodeProto/sizes.transform/bucketize_2/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
descriptor_source
local://*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
9transform/bucketize_2/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
;transform/bucketize_2/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_2/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_2/apply_buckets/strided_slice_2StridedSlice/transform/bucketize_2/apply_buckets/EncodeProto9transform/bucketize_2/apply_buckets/strided_slice_2/stack;transform/bucketize_2/apply_buckets/strided_slice_2/stack_1;transform/bucketize_2/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
+transform/bucketize_2/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
i
transform/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_8StridedSlice6transform/inputs/inputs/F_dropoff_longitude/shape_copytransform/strided_slice_8/stack!transform/strided_slice_8/stack_1!transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_8/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_8/dense_shapePacktransform/strided_slice_8&transform/SparseTensor_8/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_8SparseToDense8transform/inputs/inputs/F_dropoff_longitude/indices_copy$transform/SparseTensor_8/dense_shape7transform/inputs/inputs/F_dropoff_longitude/values_copy'transform/SparseToDense_8/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_8Squeezetransform/SparseToDense_8*
T0*#
_output_shapes
:?????????*
squeeze_dims

?
+transform/bucketize_3/quantiles/PlaceholderPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
)transform/bucketize_3/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
^
(transform/bucketize_3/quantiles/sort/NegNegConst_13*
T0*
_output_shapes
:
?
*transform/bucketize_3/quantiles/sort/ShapeShape(transform/bucketize_3/quantiles/sort/Neg*
T0*
_output_shapes
:*
out_type0
?
8transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
:transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
:transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
2transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_3/quantiles/sort/Shape8transform/bucketize_3/quantiles/sort/strided_slice/stack:transform/bucketize_3/quantiles/sort/strided_slice/stack_1:transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
k
)transform/bucketize_3/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
+transform/bucketize_3/quantiles/sort/TopKV2TopKV2(transform/bucketize_3/quantiles/sort/Neg2transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
::*
sorted(
?
*transform/bucketize_3/quantiles/sort/Neg_1Neg+transform/bucketize_3/quantiles/sort/TopKV2*
T0*
_output_shapes
:
p
.transform/bucketize_3/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
*transform/bucketize_3/quantiles/ExpandDims
ExpandDims*transform/bucketize_3/quantiles/sort/Neg_1.transform/bucketize_3/quantiles/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
v
+transform/bucketize_3/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
*transform/bucketize_3/quantiles/sort_1/NegNeg*transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:
?
,transform/bucketize_3/quantiles/sort_1/ShapeShape*transform/bucketize_3/quantiles/sort_1/Neg*
T0*
_output_shapes
:*
out_type0
?
:transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
4transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_3/quantiles/sort_1/Shape:transform/bucketize_3/quantiles/sort_1/strided_slice/stack<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
m
+transform/bucketize_3/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
?
-transform/bucketize_3/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_3/quantiles/sort_1/Neg4transform/bucketize_3/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::*
sorted(
?
,transform/bucketize_3/quantiles/sort_1/Neg_1Neg-transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
h
&transform/bucketize_3/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
?
'transform/bucketize_3/assert_rank/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
X
Ptransform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
?
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Ztransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
Qtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
?
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
?
[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:
?
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_8*
T0*#
_output_shapes
:?????????
?
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
?
^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
?
\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
?
Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:
?
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_8*
T0*#
_output_shapes
:?????????
?
Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*

axis *	
num
?
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:?????????*
num_features
?
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
?
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:?????????
k
)transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
)transform/bucketize_3/apply_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:*
out_type0
?
7transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
9transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
1transform/bucketize_3/apply_buckets/strided_sliceStridedSlice)transform/bucketize_3/apply_buckets/Shape7transform/bucketize_3/apply_buckets/strided_slice/stack9transform/bucketize_3/apply_buckets/strided_slice/stack_19transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
1transform/bucketize_3/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
+transform/bucketize_3/apply_buckets/ReshapeReshape,transform/bucketize_3/quantiles/sort_1/Neg_11transform/bucketize_3/apply_buckets/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
t
2transform/bucketize_3/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
.transform/bucketize_3/apply_buckets/ExpandDims
ExpandDims+transform/bucketize_3/apply_buckets/Reshape2transform/bucketize_3/apply_buckets/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
?
+transform/bucketize_3/apply_buckets/Shape_1Shape.transform/bucketize_3/apply_buckets/ExpandDims*
T0*
_output_shapes
:*
out_type0
?
9transform/bucketize_3/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_3/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_3/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_3/apply_buckets/strided_slice_1StridedSlice+transform/bucketize_3/apply_buckets/Shape_19transform/bucketize_3/apply_buckets/strided_slice_1/stack;transform/bucketize_3/apply_buckets/strided_slice_1/stack_1;transform/bucketize_3/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
7transform/bucketize_3/apply_buckets/EncodeProto/sizes/0Pack3transform/bucketize_3/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 
?
5transform/bucketize_3/apply_buckets/EncodeProto/sizesPack7transform/bucketize_3/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:*

axis 
?
/transform/bucketize_3/apply_buckets/EncodeProtoEncodeProto5transform/bucketize_3/apply_buckets/EncodeProto/sizes.transform/bucketize_3/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
descriptor_source
local://*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries
?
9transform/bucketize_3/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
;transform/bucketize_3/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
;transform/bucketize_3/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
3transform/bucketize_3/apply_buckets/strided_slice_2StridedSlice/transform/bucketize_3/apply_buckets/EncodeProto9transform/bucketize_3/apply_buckets/strided_slice_2/stack;transform/bucketize_3/apply_buckets/strided_slice_2/stack_1;transform/bucketize_3/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
?
+transform/bucketize_3/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
i
transform/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_9StridedSlice4transform/inputs/inputs/F_trip_start_hour/shape_copytransform/strided_slice_9/stack!transform/strided_slice_9/stack_1!transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_9/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
$transform/SparseTensor_9/dense_shapePacktransform/strided_slice_9&transform/SparseTensor_9/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_9SparseToDense6transform/inputs/inputs/F_trip_start_hour/indices_copy$transform/SparseTensor_9/dense_shape5transform/inputs/inputs/F_trip_start_hour/values_copy'transform/SparseToDense_9/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
~
transform/Squeeze_9Squeezetransform/SparseToDense_9*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_10StridedSlice3transform/inputs/inputs/F_trip_start_day/shape_copy transform/strided_slice_10/stack"transform/strided_slice_10/stack_1"transform/strided_slice_10/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_10/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_10/dense_shapePacktransform/strided_slice_10'transform/SparseTensor_10/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_10SparseToDense5transform/inputs/inputs/F_trip_start_day/indices_copy%transform/SparseTensor_10/dense_shape4transform/inputs/inputs/F_trip_start_day/values_copy(transform/SparseToDense_10/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_10Squeezetransform/SparseToDense_10*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_11StridedSlice5transform/inputs/inputs/F_trip_start_month/shape_copy transform/strided_slice_11/stack"transform/strided_slice_11/stack_1"transform/strided_slice_11/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_11/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_11/dense_shapePacktransform/strided_slice_11'transform/SparseTensor_11/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_11SparseToDense7transform/inputs/inputs/F_trip_start_month/indices_copy%transform/SparseTensor_11/dense_shape6transform/inputs/inputs/F_trip_start_month/values_copy(transform/SparseToDense_11/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_11Squeezetransform/SparseToDense_11*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_12StridedSlice8transform/inputs/inputs/F_pickup_census_tract/shape_copy transform/strided_slice_12/stack"transform/strided_slice_12/stack_1"transform/strided_slice_12/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_12/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_12/dense_shapePacktransform/strided_slice_12'transform/SparseTensor_12/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_12SparseToDense:transform/inputs/inputs/F_pickup_census_tract/indices_copy%transform/SparseTensor_12/dense_shape9transform/inputs/inputs/F_pickup_census_tract/values_copy(transform/SparseToDense_12/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_12Squeezetransform/SparseToDense_12*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_13StridedSlice9transform/inputs/inputs/F_dropoff_census_tract/shape_copy transform/strided_slice_13/stack"transform/strided_slice_13/stack_1"transform/strided_slice_13/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_13/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_13/dense_shapePacktransform/strided_slice_13'transform/SparseTensor_13/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_13SparseToDense;transform/inputs/inputs/F_dropoff_census_tract/indices_copy%transform/SparseTensor_13/dense_shape:transform/inputs/inputs/F_dropoff_census_tract/values_copy(transform/SparseToDense_13/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_13Squeezetransform/SparseToDense_13*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_14StridedSlice:transform/inputs/inputs/F_pickup_community_area/shape_copy transform/strided_slice_14/stack"transform/strided_slice_14/stack_1"transform/strided_slice_14/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_14/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_14/dense_shapePacktransform/strided_slice_14'transform/SparseTensor_14/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_14SparseToDense<transform/inputs/inputs/F_pickup_community_area/indices_copy%transform/SparseTensor_14/dense_shape;transform/inputs/inputs/F_pickup_community_area/values_copy(transform/SparseToDense_14/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_14Squeezetransform/SparseToDense_14*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_15StridedSlice;transform/inputs/inputs/F_dropoff_community_area/shape_copy transform/strided_slice_15/stack"transform/strided_slice_15/stack_1"transform/strided_slice_15/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_15/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_15/dense_shapePacktransform/strided_slice_15'transform/SparseTensor_15/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
transform/SparseToDense_15SparseToDense=transform/inputs/inputs/F_dropoff_community_area/indices_copy%transform/SparseTensor_15/dense_shape<transform/inputs/inputs/F_dropoff_community_area/values_copy(transform/SparseToDense_15/default_value*
T0	*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_15Squeezetransform/SparseToDense_15*
T0	*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_16StridedSlice'transform/inputs/inputs/fare/shape_copy transform/strided_slice_16/stack"transform/strided_slice_16/stack_1"transform/strided_slice_16/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_16/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_16/dense_shapePacktransform/strided_slice_16'transform/SparseTensor_16/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_16SparseToDense)transform/inputs/inputs/fare/indices_copy%transform/SparseTensor_16/dense_shape(transform/inputs/inputs/fare/values_copy(transform/SparseToDense_16/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_16Squeezetransform/SparseToDense_16*
T0*#
_output_shapes
:?????????*
squeeze_dims

j
 transform/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
transform/strided_slice_17StridedSlice'transform/inputs/inputs/tips/shape_copy transform/strided_slice_17/stack"transform/strided_slice_17/stack_1"transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_17/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
%transform/SparseTensor_17/dense_shapePacktransform/strided_slice_17'transform/SparseTensor_17/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
transform/SparseToDense_17SparseToDense)transform/inputs/inputs/tips/indices_copy%transform/SparseTensor_17/dense_shape(transform/inputs/inputs/tips/values_copy(transform/SparseToDense_17/default_value*
T0*
Tindices0	*'
_output_shapes
:?????????*
validate_indices(
?
transform/Squeeze_17Squeezetransform/SparseToDense_17*
T0*#
_output_shapes
:?????????*
squeeze_dims

\
transform/IsNanIsNantransform/Squeeze_16*
T0*#
_output_shapes
:?????????
e
transform/zeros_like	ZerosLiketransform/Squeeze_16*
T0*#
_output_shapes
:?????????
y
transform/CastCasttransform/zeros_like*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:?????????
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>
i
transform/MulMultransform/Squeeze_16transform/Const*
T0*#
_output_shapes
:?????????
o
transform/GreaterGreatertransform/Squeeze_17transform/Mul*
T0*#
_output_shapes
:?????????
x
transform/Cast_1Casttransform/Greater*

DstT0	*

SrcT0
*
Truncate( *#
_output_shapes
:?????????
{
transform/SelectSelecttransform/IsNantransform/Casttransform/Cast_1*
T0	*#
_output_shapes
:?????????

transform/initNoOp

transform/init_1NoOp

initNoOp"?"+
asset_filepaths

	Const_7:0
	Const_9:0"?
saved_model_assets?*?
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_7:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_9:0/vocab_compute_and_apply_vocabulary_1_vocabulary"?
table_initializer?
?
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"?
$tft_schema_override_annotation_proto?
?
Ctransform/compute_and_apply_vocabulary/vocabulary/strided_slice_6:0
Etransform/compute_and_apply_vocabulary_1/vocabulary/strided_slice_6:0
3transform/bucketize/apply_buckets/strided_slice_2:0
5transform/bucketize_1/apply_buckets/strided_slice_2:0
5transform/bucketize_2/apply_buckets/strided_slice_2:0
5transform/bucketize_3/apply_buckets/strided_slice_2:0"?
%tft_schema_override_annotation_tensor?
?
Wtransform/compute_and_apply_vocabulary/vocabulary/tft_schema_override_global_sentinel:0
Ytransform/compute_and_apply_vocabulary_1/vocabulary/tft_schema_override_global_sentinel:0
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"?
#tft_schema_override_annotation_type?
?
;transform/compute_and_apply_vocabulary/vocabulary/Const_1:0
=transform/compute_and_apply_vocabulary_1/vocabulary/Const_1:0
+transform/bucketize/apply_buckets/Const_1:0
-transform/bucketize_1/apply_buckets/Const_1:0
-transform/bucketize_2/apply_buckets/Const_1:0
-transform/bucketize_3/apply_buckets/Const_1:0"?
tft_schema_override_max?
?
8transform/compute_and_apply_vocabulary/apply_vocab/sub:0
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
1transform/bucketize/apply_buckets/strided_slice:0
3transform/bucketize_1/apply_buckets/strided_slice:0
3transform/bucketize_2/apply_buckets/strided_slice:0
3transform/bucketize_3/apply_buckets/strided_slice:0"?
tft_schema_override_min?
?
<transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
)transform/bucketize/apply_buckets/Const:0
+transform/bucketize_1/apply_buckets/Const:0
+transform/bucketize_2/apply_buckets/Const:0
+transform/bucketize_3/apply_buckets/Const:0"?
tft_schema_override_tensor?
?
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0*?$
transform_signature?$
?
company???????????????????"i
!transform/inputs/company/values:0"transform/inputs/company/indices:0 transform/inputs/company/shape:0
?
dropoff_census_tract?	??????????????????"?
0transform/inputs/F_dropoff_census_tract/values:01transform/inputs/F_dropoff_census_tract/indices:0/transform/inputs/F_dropoff_census_tract/shape:0
?
dropoff_community_area?	??????????????????"?
2transform/inputs/F_dropoff_community_area/values:03transform/inputs/F_dropoff_community_area/indices:01transform/inputs/F_dropoff_community_area/shape:0
?
dropoff_latitude???????????????????"?
,transform/inputs/F_dropoff_latitude/values:0-transform/inputs/F_dropoff_latitude/indices:0+transform/inputs/F_dropoff_latitude/shape:0
?
dropoff_longitude???????????????????"?
-transform/inputs/F_dropoff_longitude/values:0.transform/inputs/F_dropoff_longitude/indices:0,transform/inputs/F_dropoff_longitude/shape:0
?
fare???????????????????"`
transform/inputs/fare/values:0transform/inputs/fare/indices:0transform/inputs/fare/shape:0
?
payment_type???????????????????"~
(transform/inputs/F_payment_type/values:0)transform/inputs/F_payment_type/indices:0'transform/inputs/F_payment_type/shape:0
?
pickup_census_tract?	??????????????????"?
/transform/inputs/F_pickup_census_tract/values:00transform/inputs/F_pickup_census_tract/indices:0.transform/inputs/F_pickup_census_tract/shape:0
?
pickup_community_area?	??????????????????"?
1transform/inputs/F_pickup_community_area/values:02transform/inputs/F_pickup_community_area/indices:00transform/inputs/F_pickup_community_area/shape:0
?
pickup_latitude???????????????????"?
+transform/inputs/F_pickup_latitude/values:0,transform/inputs/F_pickup_latitude/indices:0*transform/inputs/F_pickup_latitude/shape:0
?
pickup_longitude???????????????????"?
,transform/inputs/F_pickup_longitude/values:0-transform/inputs/F_pickup_longitude/indices:0+transform/inputs/F_pickup_longitude/shape:0
?
tips???????????????????"`
transform/inputs/tips/values:0transform/inputs/tips/indices:0transform/inputs/tips/shape:0
?

trip_miles???????????????????"x
&transform/inputs/F_trip_miles/values:0'transform/inputs/F_trip_miles/indices:0%transform/inputs/F_trip_miles/shape:0
?
trip_seconds?	??????????????????"~
(transform/inputs/F_trip_seconds/values:0)transform/inputs/F_trip_seconds/indices:0'transform/inputs/F_trip_seconds/shape:0
?
trip_start_day?	??????????????????"?
*transform/inputs/F_trip_start_day/values:0+transform/inputs/F_trip_start_day/indices:0)transform/inputs/F_trip_start_day/shape:0
?
trip_start_hour?	??????????????????"?
+transform/inputs/F_trip_start_hour/values:0,transform/inputs/F_trip_start_hour/indices:0*transform/inputs/F_trip_start_hour/shape:0
?
trip_start_month?	??????????????????"?
,transform/inputs/F_trip_start_month/values:0-transform/inputs/F_trip_start_month/indices:0+transform/inputs/F_trip_start_month/shape:0r

company_xfd
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	?????????D
dropoff_census_tract_xf)
transform/Squeeze_13:0	?????????F
dropoff_community_area_xf)
transform/Squeeze_15:0	?????????|
dropoff_latitude_xfe
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????}
dropoff_longitude_xfe
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????E
fare_xf:
'transform/scale_to_z_score_1/SelectV2:0?????????u
payment_type_xfb
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	?????????C
pickup_census_tract_xf)
transform/Squeeze_12:0	?????????E
pickup_community_area_xf)
transform/Squeeze_14:0	?????????y
pickup_latitude_xfc
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????|
pickup_longitude_xfe
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	?????????0
tips_xf%
transform/Select:0	?????????I
trip_miles_xf8
%transform/scale_to_z_score/SelectV2:0?????????M
trip_seconds_xf:
'transform/scale_to_z_score_2/SelectV2:0?????????>
trip_start_day_xf)
transform/Squeeze_10:0	?????????>
trip_start_hour_xf(
transform/Squeeze_9:0	?????????@
trip_start_month_xf)
transform/Squeeze_11:0	?????????tensorflow/serving/predict