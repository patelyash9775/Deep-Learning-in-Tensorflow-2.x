??
??
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
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
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

:	*
dtype0
?
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name195*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name229*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/sequential/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*/
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m*
_output_shapes

:	*
dtype0
?
Adam/sequential/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/dense/bias/m
?
0Adam/sequential/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*/
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v*
_output_shapes

:	*
dtype0
?
Adam/sequential/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/dense/bias/v
?
0Adam/sequential/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/v*
_output_shapes
:*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
Q
Const_2Const*
_output_shapes
:*
dtype0	*
valueB	R
Q
Const_3Const*
_output_shapes
:*
dtype0	*
valueB	R 
X
Const_4Const*
_output_shapes
:*
dtype0*
valueBBFavorite
Q
Const_5Const*
_output_shapes
:*
dtype0	*
valueB	R 
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_308495
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_308503
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
?
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
	optimizer
_build_input_shape
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
x

_feature_columns

_resources
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
d
iter

beta_1

beta_2
	decay
learning_ratem5m6v7v8
 

0
1
 

0
1
?

layers
trainable_variables
regularization_losses
layer_metrics
metrics
layer_regularization_losses
non_trainable_variables
	variables
 
 
,
 City
 !FavoriteChannelOfTransaction
 
 
 
?
trainable_variables
"layer_regularization_losses
regularization_losses
#layer_metrics
$metrics

%layers
&non_trainable_variables
	variables
ca
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
'layer_regularization_losses
regularization_losses
(layer_metrics
)metrics

*layers
+non_trainable_variables
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

,0
 
 

-City_lookup
)
'.#FavoriteChannelOfTransaction_lookup
 
 
 
 
 
 
 
 
 
 
4
	/total
	0count
1	variables
2	keras_api

3_initializer

4_initializer
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

/0
01

1	variables
 
 
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
w
serving_default_CityPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
}
serving_default_CustomerIDPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
,serving_default_FavoriteChannelOfTransactionPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

serving_default_FavoriteGamePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_FrequencyOFPlayPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
!serving_default_FrquncyOfPurchasePlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
serving_default_MaxAgeOfChildPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
serving_default_MinAgeOfChildPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????

serving_default_NoOfChildrenPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
serving_default_NoOfGamesBoughtPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
serving_default_NoOfGamesPlayedPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
"serving_default_NoOfUnitsPurchasedPlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
y
serving_default_TenurePlaceholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_Cityserving_default_CustomerID,serving_default_FavoriteChannelOfTransactionserving_default_FavoriteGameserving_default_FrequencyOFPlay!serving_default_FrquncyOfPurchaseserving_default_MaxAgeOfChildserving_default_MinAgeOfChildserving_default_NoOfChildrenserving_default_NoOfGamesBoughtserving_default_NoOfGamesPlayed"serving_default_NoOfUnitsPurchasedserving_default_Tenure
hash_tableConsthash_table_1Const_1sequential/dense/kernelsequential/dense/bias*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_307792
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOpConst_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_308587
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/sequential/dense/kernel/mAdam/sequential/dense/bias/mAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_308636??
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_307372

inputs	
inputs_1	
inputs_2
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
dense_features_307346
dense_features_307348	
dense_features_307350
dense_features_307352	
dense_307366:	
dense_307368:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12dense_features_307346dense_features_307348dense_features_307350dense_features_307352*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3073452(
&dense_features/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_307366dense_307368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3073652
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O	K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O
K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_308442

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
ɾ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_307345
features	

features_1	

features_2

features_3

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-City_indicator/to_sparse_input/ignore_value/x?
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2-
+City_indicator/to_sparse_input/ignore_value?
'City_indicator/to_sparse_input/NotEqualNotEqualfeatures/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2)
'City_indicator/to_sparse_input/NotEqual?
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2(
&City_indicator/to_sparse_input/indices?
%City_indicator/to_sparse_input/valuesGatherNdfeatures.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2'
%City_indicator/to_sparse_input/values?
*City_indicator/to_sparse_input/dense_shapeShapefeatures*
T0	*
_output_shapes
:*
out_type0	2,
*City_indicator/to_sparse_input/dense_shape?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2.
,City_indicator/None_Lookup/LookupTableFindV2?
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*City_indicator/SparseToDense/default_value?
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2
City_indicator/SparseToDense?
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
City_indicator/one_hot/Const?
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
City_indicator/one_hot/Const_1~
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
City_indicator/one_hot/depth?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
City_indicator/one_hot?
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$City_indicator/Sum/reduction_indices?
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Sumw
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:2
City_indicator/Shape?
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"City_indicator/strided_slice/stack?
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_1?
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_2?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
City_indicator/strided_slice?
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
City_indicator/Reshape/shape/1?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
City_indicator/Reshape/shape?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Reshape?
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2G
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual
features_2NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2A
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2@
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd
features_2FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape
features_2*
T0*
_output_shapes
:*
out_type0	2D
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2F
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2D
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????26
4FavoriteChannelOfTransaction_indicator/SparseToDense?
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4FavoriteChannelOfTransaction_indicator/one_hot/Const?
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    28
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :26
4FavoriteChannelOfTransaction_indicator/one_hot/depth?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/one_hot?
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2>
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2,
*FavoriteChannelOfTransaction_indicator/Sum?
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2.
,FavoriteChannelOfTransaction_indicator/Shape?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:FavoriteChannelOfTransaction_indicator/strided_slice/stack?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4FavoriteChannelOfTransaction_indicator/strided_slice?
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4FavoriteChannelOfTransaction_indicator/Reshape/shape?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/Reshape?
FrequencyOFPlay/CastCast
features_4*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrequencyOFPlay/Castv
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2
FrequencyOFPlay/Shape?
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FrequencyOFPlay/strided_slice/stack?
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_1?
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_2?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FrequencyOFPlay/strided_slice?
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FrequencyOFPlay/Reshape/shape/1?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
FrequencyOFPlay/Reshape/shape?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrequencyOFPlay/Reshape?
FrquncyOfPurchase/CastCast
features_5*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrquncyOfPurchase/Cast|
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2
FrquncyOfPurchase/Shape?
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%FrquncyOfPurchase/strided_slice/stack?
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_1?
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_2?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
FrquncyOfPurchase/strided_slice?
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!FrquncyOfPurchase/Reshape/shape/1?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
FrquncyOfPurchase/Reshape/shape?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrquncyOfPurchase/Reshape}
MinAgeOfChild/CastCast
features_7*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
MinAgeOfChild/Castp
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2
MinAgeOfChild/Shape?
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!MinAgeOfChild/strided_slice/stack?
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_1?
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_2?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
MinAgeOfChild/strided_slice?
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
MinAgeOfChild/Reshape/shape/1?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
MinAgeOfChild/Reshape/shape?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
MinAgeOfChild/Reshape{
NoOfChildren/CastCast
features_8*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfChildren/Castm
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:2
NoOfChildren/Shape?
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 NoOfChildren/strided_slice/stack?
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_1?
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_2?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfChildren/strided_slice~
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
NoOfChildren/Reshape/shape/1?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfChildren/Reshape/shape?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfChildren/Reshape?
NoOfGamesBought/CastCast
features_9*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesBought/Castv
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesBought/Shape?
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesBought/strided_slice/stack?
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_1?
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_2?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesBought/strided_slice?
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesBought/Reshape/shape/1?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesBought/Reshape/shape?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesBought/Reshape?
NoOfGamesPlayed/CastCastfeatures_10*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesPlayed/Castv
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesPlayed/Shape?
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesPlayed/strided_slice/stack?
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_1?
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_2?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesPlayed/strided_slice?
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesPlayed/Reshape/shape/1?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesPlayed/Reshape/shape?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesPlayed/Reshape?
NoOfUnitsPurchased/CastCastfeatures_11*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Cast
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2
NoOfUnitsPurchased/Shape?
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&NoOfUnitsPurchased/strided_slice/stack?
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_1?
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_2?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 NoOfUnitsPurchased/strided_slice?
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"NoOfUnitsPurchased/Reshape/shape/1?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 NoOfUnitsPurchased/Reshape/shape?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
concat?
IdentityIdentityconcat:output:0-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:Q	M
'
_output_shapes
:?????????
"
_user_specified_name
features:Q
M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_3084822
.table_init228_lookuptableimportv2_table_handle*
&table_init228_lookuptableimportv2_keys,
(table_init228_lookuptableimportv2_values	
identity??!table_init228/LookupTableImportV2?
!table_init228/LookupTableImportV2LookupTableImportV2.table_init228_lookuptableimportv2_table_handle&table_init228_lookuptableimportv2_keys(table_init228_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2#
!table_init228/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constu
IdentityIdentityConst:output:0"^table_init228/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init228/LookupTableImportV2!table_init228/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_307755
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
dense_features_307740
dense_features_307742	
dense_features_307744
dense_features_307746	
dense_307749:	
dense_307751:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenuredense_features_307740dense_features_307742dense_features_307744dense_features_307746*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3075672(
&dense_features/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_307749dense_307751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3073652
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_307725
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
dense_features_307710
dense_features_307712	
dense_features_307714
dense_features_307716	
dense_307719:	
dense_307721:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenuredense_features_307710dense_features_307712dense_features_307714dense_features_307716*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3073452(
&dense_features/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_307719dense_307721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3073652
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_308093
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cityinputs_customerid#inputs_favoritechanneloftransactioninputs_favoritegameinputs_frequencyofplayinputs_frquncyofpurchaseinputs_maxageofchildinputs_minageofchildinputs_noofchildreninputs_noofgamesboughtinputs_noofgamesplayedinputs_noofunitspurchasedinputs_tenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3073722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/City:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:lh
'
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:_
[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?&
?
__inference__traced_save_308587
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*U
_input_shapesD
B: :	:: : : : : : : :	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
::

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_307695
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3076512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_dense_features_layer_call_fn_308407
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_cityfeatures_customerid%features_favoritechanneloftransactionfeatures_favoritegamefeatures_frequencyofplayfeatures_frquncyofpurchasefeatures_maxageofchildfeatures_minageofchildfeatures_noofchildrenfeatures_noofgamesboughtfeatures_noofgamesplayedfeatures_noofunitspurchasedfeatures_tenureunknown	unknown_0	unknown_1	unknown_2*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3073452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/City:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:nj
'
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:a	]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:a
]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:d`
'
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:XT
'
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_308064
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	L
Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	d
`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlee
adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?;dense_features/City_indicator/None_Lookup/LookupTableFindV2?Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
<dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2>
<dense_features/City_indicator/to_sparse_input/ignore_value/x?
:dense_features/City_indicator/to_sparse_input/ignore_valueCastEdense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2<
:dense_features/City_indicator/to_sparse_input/ignore_value?
6dense_features/City_indicator/to_sparse_input/NotEqualNotEqualinputs_city>dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????28
6dense_features/City_indicator/to_sparse_input/NotEqual?
5dense_features/City_indicator/to_sparse_input/indicesWhere:dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????27
5dense_features/City_indicator/to_sparse_input/indices?
4dense_features/City_indicator/to_sparse_input/valuesGatherNdinputs_city=dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4dense_features/City_indicator/to_sparse_input/values?
9dense_features/City_indicator/to_sparse_input/dense_shapeShapeinputs_city*
T0	*
_output_shapes
:*
out_type0	2;
9dense_features/City_indicator/to_sparse_input/dense_shape?
;dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/City_indicator/to_sparse_input/values:output:0Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2=
;dense_features/City_indicator/None_Lookup/LookupTableFindV2?
9dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2;
9dense_features/City_indicator/SparseToDense/default_value?
+dense_features/City_indicator/SparseToDenseSparseToDense=dense_features/City_indicator/to_sparse_input/indices:index:0Bdense_features/City_indicator/to_sparse_input/dense_shape:output:0Ddense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2-
+dense_features/City_indicator/SparseToDense?
+dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+dense_features/City_indicator/one_hot/Const?
-dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2/
-dense_features/City_indicator/one_hot/Const_1?
+dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features/City_indicator/one_hot/depth?
%dense_features/City_indicator/one_hotOneHot3dense_features/City_indicator/SparseToDense:dense:04dense_features/City_indicator/one_hot/depth:output:04dense_features/City_indicator/one_hot/Const:output:06dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2'
%dense_features/City_indicator/one_hot?
3dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3dense_features/City_indicator/Sum/reduction_indices?
!dense_features/City_indicator/SumSum.dense_features/City_indicator/one_hot:output:0<dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2#
!dense_features/City_indicator/Sum?
#dense_features/City_indicator/ShapeShape*dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:2%
#dense_features/City_indicator/Shape?
1dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_features/City_indicator/strided_slice/stack?
3dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_features/City_indicator/strided_slice/stack_1?
3dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_features/City_indicator/strided_slice/stack_2?
+dense_features/City_indicator/strided_sliceStridedSlice,dense_features/City_indicator/Shape:output:0:dense_features/City_indicator/strided_slice/stack:output:0<dense_features/City_indicator/strided_slice/stack_1:output:0<dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_features/City_indicator/strided_slice?
-dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-dense_features/City_indicator/Reshape/shape/1?
+dense_features/City_indicator/Reshape/shapePack4dense_features/City_indicator/strided_slice:output:06dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+dense_features/City_indicator/Reshape/shape?
%dense_features/City_indicator/ReshapeReshape*dense_features/City_indicator/Sum:output:04dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2'
%dense_features/City_indicator/Reshape?
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2V
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual#inputs_favoritechanneloftransaction]dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2P
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereRdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2O
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd#inputs_favoritechanneloftransactionUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2N
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape#inputs_favoritechanneloftransaction*
T0*
_output_shapes
:*
out_type0	2S
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2U
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2S
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0Zdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0\dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0Zdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2E
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2E
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const?
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2G
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2E
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotKdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hot?
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2M
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
9dense_features/FavoriteChannelOfTransaction_indicator/SumSumFdense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2;
9dense_features/FavoriteChannelOfTransaction_indicator/Sum?
;dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2=
;dense_features/FavoriteChannelOfTransaction_indicator/Shape?
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceDdense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0Rdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_slice?
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackLdense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2E
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape?
=dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2?
=dense_features/FavoriteChannelOfTransaction_indicator/Reshape?
#dense_features/FrequencyOFPlay/CastCastinputs_frequencyofplay*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/FrequencyOFPlay/Cast?
$dense_features/FrequencyOFPlay/ShapeShape'dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/FrequencyOFPlay/Shape?
2dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/FrequencyOFPlay/strided_slice/stack?
4dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/FrequencyOFPlay/strided_slice/stack_1?
4dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/FrequencyOFPlay/strided_slice/stack_2?
,dense_features/FrequencyOFPlay/strided_sliceStridedSlice-dense_features/FrequencyOFPlay/Shape:output:0;dense_features/FrequencyOFPlay/strided_slice/stack:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/FrequencyOFPlay/strided_slice?
.dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/FrequencyOFPlay/Reshape/shape/1?
,dense_features/FrequencyOFPlay/Reshape/shapePack5dense_features/FrequencyOFPlay/strided_slice:output:07dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/FrequencyOFPlay/Reshape/shape?
&dense_features/FrequencyOFPlay/ReshapeReshape'dense_features/FrequencyOFPlay/Cast:y:05dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/FrequencyOFPlay/Reshape?
%dense_features/FrquncyOfPurchase/CastCastinputs_frquncyofpurchase*

DstT0*

SrcT0	*'
_output_shapes
:?????????2'
%dense_features/FrquncyOfPurchase/Cast?
&dense_features/FrquncyOfPurchase/ShapeShape)dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2(
&dense_features/FrquncyOfPurchase/Shape?
4dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/FrquncyOfPurchase/strided_slice/stack?
6dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/FrquncyOfPurchase/strided_slice/stack_1?
6dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/FrquncyOfPurchase/strided_slice/stack_2?
.dense_features/FrquncyOfPurchase/strided_sliceStridedSlice/dense_features/FrquncyOfPurchase/Shape:output:0=dense_features/FrquncyOfPurchase/strided_slice/stack:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/FrquncyOfPurchase/strided_slice?
0dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/FrquncyOfPurchase/Reshape/shape/1?
.dense_features/FrquncyOfPurchase/Reshape/shapePack7dense_features/FrquncyOfPurchase/strided_slice:output:09dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/FrquncyOfPurchase/Reshape/shape?
(dense_features/FrquncyOfPurchase/ReshapeReshape)dense_features/FrquncyOfPurchase/Cast:y:07dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/FrquncyOfPurchase/Reshape?
!dense_features/MinAgeOfChild/CastCastinputs_minageofchild*

DstT0*

SrcT0	*'
_output_shapes
:?????????2#
!dense_features/MinAgeOfChild/Cast?
"dense_features/MinAgeOfChild/ShapeShape%dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2$
"dense_features/MinAgeOfChild/Shape?
0dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_features/MinAgeOfChild/strided_slice/stack?
2dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_features/MinAgeOfChild/strided_slice/stack_1?
2dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_features/MinAgeOfChild/strided_slice/stack_2?
*dense_features/MinAgeOfChild/strided_sliceStridedSlice+dense_features/MinAgeOfChild/Shape:output:09dense_features/MinAgeOfChild/strided_slice/stack:output:0;dense_features/MinAgeOfChild/strided_slice/stack_1:output:0;dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_features/MinAgeOfChild/strided_slice?
,dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2.
,dense_features/MinAgeOfChild/Reshape/shape/1?
*dense_features/MinAgeOfChild/Reshape/shapePack3dense_features/MinAgeOfChild/strided_slice:output:05dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2,
*dense_features/MinAgeOfChild/Reshape/shape?
$dense_features/MinAgeOfChild/ReshapeReshape%dense_features/MinAgeOfChild/Cast:y:03dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2&
$dense_features/MinAgeOfChild/Reshape?
 dense_features/NoOfChildren/CastCastinputs_noofchildren*

DstT0*

SrcT0	*'
_output_shapes
:?????????2"
 dense_features/NoOfChildren/Cast?
!dense_features/NoOfChildren/ShapeShape$dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:2#
!dense_features/NoOfChildren/Shape?
/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_features/NoOfChildren/strided_slice/stack?
1dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features/NoOfChildren/strided_slice/stack_1?
1dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features/NoOfChildren/strided_slice/stack_2?
)dense_features/NoOfChildren/strided_sliceStridedSlice*dense_features/NoOfChildren/Shape:output:08dense_features/NoOfChildren/strided_slice/stack:output:0:dense_features/NoOfChildren/strided_slice/stack_1:output:0:dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_features/NoOfChildren/strided_slice?
+dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features/NoOfChildren/Reshape/shape/1?
)dense_features/NoOfChildren/Reshape/shapePack2dense_features/NoOfChildren/strided_slice:output:04dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)dense_features/NoOfChildren/Reshape/shape?
#dense_features/NoOfChildren/ReshapeReshape$dense_features/NoOfChildren/Cast:y:02dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2%
#dense_features/NoOfChildren/Reshape?
#dense_features/NoOfGamesBought/CastCastinputs_noofgamesbought*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/NoOfGamesBought/Cast?
$dense_features/NoOfGamesBought/ShapeShape'dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/NoOfGamesBought/Shape?
2dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/NoOfGamesBought/strided_slice/stack?
4dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesBought/strided_slice/stack_1?
4dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesBought/strided_slice/stack_2?
,dense_features/NoOfGamesBought/strided_sliceStridedSlice-dense_features/NoOfGamesBought/Shape:output:0;dense_features/NoOfGamesBought/strided_slice/stack:output:0=dense_features/NoOfGamesBought/strided_slice/stack_1:output:0=dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/NoOfGamesBought/strided_slice?
.dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/NoOfGamesBought/Reshape/shape/1?
,dense_features/NoOfGamesBought/Reshape/shapePack5dense_features/NoOfGamesBought/strided_slice:output:07dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/NoOfGamesBought/Reshape/shape?
&dense_features/NoOfGamesBought/ReshapeReshape'dense_features/NoOfGamesBought/Cast:y:05dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/NoOfGamesBought/Reshape?
#dense_features/NoOfGamesPlayed/CastCastinputs_noofgamesplayed*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/NoOfGamesPlayed/Cast?
$dense_features/NoOfGamesPlayed/ShapeShape'dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/NoOfGamesPlayed/Shape?
2dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/NoOfGamesPlayed/strided_slice/stack?
4dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesPlayed/strided_slice/stack_1?
4dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesPlayed/strided_slice/stack_2?
,dense_features/NoOfGamesPlayed/strided_sliceStridedSlice-dense_features/NoOfGamesPlayed/Shape:output:0;dense_features/NoOfGamesPlayed/strided_slice/stack:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/NoOfGamesPlayed/strided_slice?
.dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/NoOfGamesPlayed/Reshape/shape/1?
,dense_features/NoOfGamesPlayed/Reshape/shapePack5dense_features/NoOfGamesPlayed/strided_slice:output:07dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/NoOfGamesPlayed/Reshape/shape?
&dense_features/NoOfGamesPlayed/ReshapeReshape'dense_features/NoOfGamesPlayed/Cast:y:05dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/NoOfGamesPlayed/Reshape?
&dense_features/NoOfUnitsPurchased/CastCastinputs_noofunitspurchased*

DstT0*

SrcT0	*'
_output_shapes
:?????????2(
&dense_features/NoOfUnitsPurchased/Cast?
'dense_features/NoOfUnitsPurchased/ShapeShape*dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2)
'dense_features/NoOfUnitsPurchased/Shape?
5dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5dense_features/NoOfUnitsPurchased/strided_slice/stack?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2?
/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice0dense_features/NoOfUnitsPurchased/Shape:output:0>dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/dense_features/NoOfUnitsPurchased/strided_slice?
1dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1dense_features/NoOfUnitsPurchased/Reshape/shape/1?
/dense_features/NoOfUnitsPurchased/Reshape/shapePack8dense_features/NoOfUnitsPurchased/strided_slice:output:0:dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:21
/dense_features/NoOfUnitsPurchased/Reshape/shape?
)dense_features/NoOfUnitsPurchased/ReshapeReshape*dense_features/NoOfUnitsPurchased/Cast:y:08dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2+
)dense_features/NoOfUnitsPurchased/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV2.dense_features/City_indicator/Reshape:output:0Fdense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0/dense_features/FrequencyOFPlay/Reshape:output:01dense_features/FrquncyOfPurchase/Reshape:output:0-dense_features/MinAgeOfChild/Reshape:output:0,dense_features/NoOfChildren/Reshape:output:0/dense_features/NoOfGamesBought/Reshape:output:0/dense_features/NoOfGamesPlayed/Reshape:output:02dense_features/NoOfUnitsPurchased/Reshape:output:0#dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
dense_features/concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp<^dense_features/City_indicator/None_Lookup/LookupTableFindV2T^dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2z
;dense_features/City_indicator/None_Lookup/LookupTableFindV2;dense_features/City_indicator/None_Lookup/LookupTableFindV22?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/City:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:lh
'
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:_
[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_307387
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3073722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_308382
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-City_indicator/to_sparse_input/ignore_value/x?
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2-
+City_indicator/to_sparse_input/ignore_value?
'City_indicator/to_sparse_input/NotEqualNotEqualfeatures_city/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2)
'City_indicator/to_sparse_input/NotEqual?
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2(
&City_indicator/to_sparse_input/indices?
%City_indicator/to_sparse_input/valuesGatherNdfeatures_city.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2'
%City_indicator/to_sparse_input/values?
*City_indicator/to_sparse_input/dense_shapeShapefeatures_city*
T0	*
_output_shapes
:*
out_type0	2,
*City_indicator/to_sparse_input/dense_shape?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2.
,City_indicator/None_Lookup/LookupTableFindV2?
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*City_indicator/SparseToDense/default_value?
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2
City_indicator/SparseToDense?
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
City_indicator/one_hot/Const?
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
City_indicator/one_hot/Const_1~
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
City_indicator/one_hot/depth?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
City_indicator/one_hot?
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$City_indicator/Sum/reduction_indices?
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Sumw
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:2
City_indicator/Shape?
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"City_indicator/strided_slice/stack?
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_1?
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_2?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
City_indicator/strided_slice?
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
City_indicator/Reshape/shape/1?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
City_indicator/Reshape/shape?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Reshape?
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2G
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual%features_favoritechanneloftransactionNFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2A
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2@
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd%features_favoritechanneloftransactionFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape%features_favoritechanneloftransaction*
T0*
_output_shapes
:*
out_type0	2D
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2F
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2D
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????26
4FavoriteChannelOfTransaction_indicator/SparseToDense?
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4FavoriteChannelOfTransaction_indicator/one_hot/Const?
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    28
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :26
4FavoriteChannelOfTransaction_indicator/one_hot/depth?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/one_hot?
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2>
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2,
*FavoriteChannelOfTransaction_indicator/Sum?
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2.
,FavoriteChannelOfTransaction_indicator/Shape?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:FavoriteChannelOfTransaction_indicator/strided_slice/stack?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4FavoriteChannelOfTransaction_indicator/strided_slice?
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4FavoriteChannelOfTransaction_indicator/Reshape/shape?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/Reshape?
FrequencyOFPlay/CastCastfeatures_frequencyofplay*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrequencyOFPlay/Castv
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2
FrequencyOFPlay/Shape?
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FrequencyOFPlay/strided_slice/stack?
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_1?
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_2?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FrequencyOFPlay/strided_slice?
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FrequencyOFPlay/Reshape/shape/1?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
FrequencyOFPlay/Reshape/shape?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrequencyOFPlay/Reshape?
FrquncyOfPurchase/CastCastfeatures_frquncyofpurchase*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrquncyOfPurchase/Cast|
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2
FrquncyOfPurchase/Shape?
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%FrquncyOfPurchase/strided_slice/stack?
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_1?
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_2?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
FrquncyOfPurchase/strided_slice?
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!FrquncyOfPurchase/Reshape/shape/1?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
FrquncyOfPurchase/Reshape/shape?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrquncyOfPurchase/Reshape?
MinAgeOfChild/CastCastfeatures_minageofchild*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
MinAgeOfChild/Castp
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2
MinAgeOfChild/Shape?
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!MinAgeOfChild/strided_slice/stack?
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_1?
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_2?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
MinAgeOfChild/strided_slice?
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
MinAgeOfChild/Reshape/shape/1?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
MinAgeOfChild/Reshape/shape?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
MinAgeOfChild/Reshape?
NoOfChildren/CastCastfeatures_noofchildren*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfChildren/Castm
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:2
NoOfChildren/Shape?
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 NoOfChildren/strided_slice/stack?
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_1?
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_2?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfChildren/strided_slice~
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
NoOfChildren/Reshape/shape/1?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfChildren/Reshape/shape?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfChildren/Reshape?
NoOfGamesBought/CastCastfeatures_noofgamesbought*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesBought/Castv
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesBought/Shape?
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesBought/strided_slice/stack?
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_1?
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_2?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesBought/strided_slice?
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesBought/Reshape/shape/1?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesBought/Reshape/shape?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesBought/Reshape?
NoOfGamesPlayed/CastCastfeatures_noofgamesplayed*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesPlayed/Castv
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesPlayed/Shape?
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesPlayed/strided_slice/stack?
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_1?
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_2?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesPlayed/strided_slice?
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesPlayed/Reshape/shape/1?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesPlayed/Reshape/shape?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesPlayed/Reshape?
NoOfUnitsPurchased/CastCastfeatures_noofunitspurchased*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Cast
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2
NoOfUnitsPurchased/Shape?
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&NoOfUnitsPurchased/strided_slice/stack?
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_1?
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_2?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 NoOfUnitsPurchased/strided_slice?
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"NoOfUnitsPurchased/Reshape/shape/1?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 NoOfUnitsPurchased/Reshape/shape?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
concat?
IdentityIdentityconcat:output:0-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/City:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:nj
'
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:a	]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:a
]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:d`
'
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:XT
'
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_3084642
.table_init194_lookuptableimportv2_table_handle*
&table_init194_lookuptableimportv2_keys	,
(table_init194_lookuptableimportv2_values	
identity??!table_init194/LookupTableImportV2?
!table_init194/LookupTableImportV2LookupTableImportV2.table_init194_lookuptableimportv2_table_handle&table_init194_lookuptableimportv2_keys(table_init194_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 2#
!table_init194/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constu
IdentityIdentityConst:output:0"^table_init194/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init194/LookupTableImportV2!table_init194/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
/__inference_dense_features_layer_call_fn_308432
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_cityfeatures_customerid%features_favoritechanneloftransactionfeatures_favoritegamefeatures_frequencyofplayfeatures_frquncyofpurchasefeatures_maxageofchildfeatures_minageofchildfeatures_noofchildrenfeatures_noofgamesboughtfeatures_noofgamesplayedfeatures_noofunitspurchasedfeatures_tenureunknown	unknown_0	unknown_1	unknown_2*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3075672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/City:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:nj
'
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:a	]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:a
]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:d`
'
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:XT
'
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_308456
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name195*
value_dtype0	2

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_307928
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	L
Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	d
`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlee
adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?;dense_features/City_indicator/None_Lookup/LookupTableFindV2?Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
<dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2>
<dense_features/City_indicator/to_sparse_input/ignore_value/x?
:dense_features/City_indicator/to_sparse_input/ignore_valueCastEdense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2<
:dense_features/City_indicator/to_sparse_input/ignore_value?
6dense_features/City_indicator/to_sparse_input/NotEqualNotEqualinputs_city>dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????28
6dense_features/City_indicator/to_sparse_input/NotEqual?
5dense_features/City_indicator/to_sparse_input/indicesWhere:dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????27
5dense_features/City_indicator/to_sparse_input/indices?
4dense_features/City_indicator/to_sparse_input/valuesGatherNdinputs_city=dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4dense_features/City_indicator/to_sparse_input/values?
9dense_features/City_indicator/to_sparse_input/dense_shapeShapeinputs_city*
T0	*
_output_shapes
:*
out_type0	2;
9dense_features/City_indicator/to_sparse_input/dense_shape?
;dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/City_indicator/to_sparse_input/values:output:0Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2=
;dense_features/City_indicator/None_Lookup/LookupTableFindV2?
9dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2;
9dense_features/City_indicator/SparseToDense/default_value?
+dense_features/City_indicator/SparseToDenseSparseToDense=dense_features/City_indicator/to_sparse_input/indices:index:0Bdense_features/City_indicator/to_sparse_input/dense_shape:output:0Ddense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2-
+dense_features/City_indicator/SparseToDense?
+dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+dense_features/City_indicator/one_hot/Const?
-dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2/
-dense_features/City_indicator/one_hot/Const_1?
+dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features/City_indicator/one_hot/depth?
%dense_features/City_indicator/one_hotOneHot3dense_features/City_indicator/SparseToDense:dense:04dense_features/City_indicator/one_hot/depth:output:04dense_features/City_indicator/one_hot/Const:output:06dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2'
%dense_features/City_indicator/one_hot?
3dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3dense_features/City_indicator/Sum/reduction_indices?
!dense_features/City_indicator/SumSum.dense_features/City_indicator/one_hot:output:0<dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2#
!dense_features/City_indicator/Sum?
#dense_features/City_indicator/ShapeShape*dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:2%
#dense_features/City_indicator/Shape?
1dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_features/City_indicator/strided_slice/stack?
3dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_features/City_indicator/strided_slice/stack_1?
3dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_features/City_indicator/strided_slice/stack_2?
+dense_features/City_indicator/strided_sliceStridedSlice,dense_features/City_indicator/Shape:output:0:dense_features/City_indicator/strided_slice/stack:output:0<dense_features/City_indicator/strided_slice/stack_1:output:0<dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_features/City_indicator/strided_slice?
-dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-dense_features/City_indicator/Reshape/shape/1?
+dense_features/City_indicator/Reshape/shapePack4dense_features/City_indicator/strided_slice:output:06dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+dense_features/City_indicator/Reshape/shape?
%dense_features/City_indicator/ReshapeReshape*dense_features/City_indicator/Sum:output:04dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2'
%dense_features/City_indicator/Reshape?
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2V
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual#inputs_favoritechanneloftransaction]dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2P
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereRdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2O
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd#inputs_favoritechanneloftransactionUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2N
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape#inputs_favoritechanneloftransaction*
T0*
_output_shapes
:*
out_type0	2S
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2U
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2S
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0Zdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0\dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0Zdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2E
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2E
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const?
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2G
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2E
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotKdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hot?
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2M
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
9dense_features/FavoriteChannelOfTransaction_indicator/SumSumFdense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2;
9dense_features/FavoriteChannelOfTransaction_indicator/Sum?
;dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2=
;dense_features/FavoriteChannelOfTransaction_indicator/Shape?
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceDdense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0Rdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_slice?
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackLdense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2E
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape?
=dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2?
=dense_features/FavoriteChannelOfTransaction_indicator/Reshape?
#dense_features/FrequencyOFPlay/CastCastinputs_frequencyofplay*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/FrequencyOFPlay/Cast?
$dense_features/FrequencyOFPlay/ShapeShape'dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/FrequencyOFPlay/Shape?
2dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/FrequencyOFPlay/strided_slice/stack?
4dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/FrequencyOFPlay/strided_slice/stack_1?
4dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/FrequencyOFPlay/strided_slice/stack_2?
,dense_features/FrequencyOFPlay/strided_sliceStridedSlice-dense_features/FrequencyOFPlay/Shape:output:0;dense_features/FrequencyOFPlay/strided_slice/stack:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/FrequencyOFPlay/strided_slice?
.dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/FrequencyOFPlay/Reshape/shape/1?
,dense_features/FrequencyOFPlay/Reshape/shapePack5dense_features/FrequencyOFPlay/strided_slice:output:07dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/FrequencyOFPlay/Reshape/shape?
&dense_features/FrequencyOFPlay/ReshapeReshape'dense_features/FrequencyOFPlay/Cast:y:05dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/FrequencyOFPlay/Reshape?
%dense_features/FrquncyOfPurchase/CastCastinputs_frquncyofpurchase*

DstT0*

SrcT0	*'
_output_shapes
:?????????2'
%dense_features/FrquncyOfPurchase/Cast?
&dense_features/FrquncyOfPurchase/ShapeShape)dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2(
&dense_features/FrquncyOfPurchase/Shape?
4dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/FrquncyOfPurchase/strided_slice/stack?
6dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/FrquncyOfPurchase/strided_slice/stack_1?
6dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/FrquncyOfPurchase/strided_slice/stack_2?
.dense_features/FrquncyOfPurchase/strided_sliceStridedSlice/dense_features/FrquncyOfPurchase/Shape:output:0=dense_features/FrquncyOfPurchase/strided_slice/stack:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/FrquncyOfPurchase/strided_slice?
0dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/FrquncyOfPurchase/Reshape/shape/1?
.dense_features/FrquncyOfPurchase/Reshape/shapePack7dense_features/FrquncyOfPurchase/strided_slice:output:09dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/FrquncyOfPurchase/Reshape/shape?
(dense_features/FrquncyOfPurchase/ReshapeReshape)dense_features/FrquncyOfPurchase/Cast:y:07dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/FrquncyOfPurchase/Reshape?
!dense_features/MinAgeOfChild/CastCastinputs_minageofchild*

DstT0*

SrcT0	*'
_output_shapes
:?????????2#
!dense_features/MinAgeOfChild/Cast?
"dense_features/MinAgeOfChild/ShapeShape%dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2$
"dense_features/MinAgeOfChild/Shape?
0dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_features/MinAgeOfChild/strided_slice/stack?
2dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_features/MinAgeOfChild/strided_slice/stack_1?
2dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_features/MinAgeOfChild/strided_slice/stack_2?
*dense_features/MinAgeOfChild/strided_sliceStridedSlice+dense_features/MinAgeOfChild/Shape:output:09dense_features/MinAgeOfChild/strided_slice/stack:output:0;dense_features/MinAgeOfChild/strided_slice/stack_1:output:0;dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_features/MinAgeOfChild/strided_slice?
,dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2.
,dense_features/MinAgeOfChild/Reshape/shape/1?
*dense_features/MinAgeOfChild/Reshape/shapePack3dense_features/MinAgeOfChild/strided_slice:output:05dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2,
*dense_features/MinAgeOfChild/Reshape/shape?
$dense_features/MinAgeOfChild/ReshapeReshape%dense_features/MinAgeOfChild/Cast:y:03dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2&
$dense_features/MinAgeOfChild/Reshape?
 dense_features/NoOfChildren/CastCastinputs_noofchildren*

DstT0*

SrcT0	*'
_output_shapes
:?????????2"
 dense_features/NoOfChildren/Cast?
!dense_features/NoOfChildren/ShapeShape$dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:2#
!dense_features/NoOfChildren/Shape?
/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_features/NoOfChildren/strided_slice/stack?
1dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features/NoOfChildren/strided_slice/stack_1?
1dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_features/NoOfChildren/strided_slice/stack_2?
)dense_features/NoOfChildren/strided_sliceStridedSlice*dense_features/NoOfChildren/Shape:output:08dense_features/NoOfChildren/strided_slice/stack:output:0:dense_features/NoOfChildren/strided_slice/stack_1:output:0:dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_features/NoOfChildren/strided_slice?
+dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+dense_features/NoOfChildren/Reshape/shape/1?
)dense_features/NoOfChildren/Reshape/shapePack2dense_features/NoOfChildren/strided_slice:output:04dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2+
)dense_features/NoOfChildren/Reshape/shape?
#dense_features/NoOfChildren/ReshapeReshape$dense_features/NoOfChildren/Cast:y:02dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2%
#dense_features/NoOfChildren/Reshape?
#dense_features/NoOfGamesBought/CastCastinputs_noofgamesbought*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/NoOfGamesBought/Cast?
$dense_features/NoOfGamesBought/ShapeShape'dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/NoOfGamesBought/Shape?
2dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/NoOfGamesBought/strided_slice/stack?
4dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesBought/strided_slice/stack_1?
4dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesBought/strided_slice/stack_2?
,dense_features/NoOfGamesBought/strided_sliceStridedSlice-dense_features/NoOfGamesBought/Shape:output:0;dense_features/NoOfGamesBought/strided_slice/stack:output:0=dense_features/NoOfGamesBought/strided_slice/stack_1:output:0=dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/NoOfGamesBought/strided_slice?
.dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/NoOfGamesBought/Reshape/shape/1?
,dense_features/NoOfGamesBought/Reshape/shapePack5dense_features/NoOfGamesBought/strided_slice:output:07dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/NoOfGamesBought/Reshape/shape?
&dense_features/NoOfGamesBought/ReshapeReshape'dense_features/NoOfGamesBought/Cast:y:05dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/NoOfGamesBought/Reshape?
#dense_features/NoOfGamesPlayed/CastCastinputs_noofgamesplayed*

DstT0*

SrcT0	*'
_output_shapes
:?????????2%
#dense_features/NoOfGamesPlayed/Cast?
$dense_features/NoOfGamesPlayed/ShapeShape'dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2&
$dense_features/NoOfGamesPlayed/Shape?
2dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/NoOfGamesPlayed/strided_slice/stack?
4dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesPlayed/strided_slice/stack_1?
4dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/NoOfGamesPlayed/strided_slice/stack_2?
,dense_features/NoOfGamesPlayed/strided_sliceStridedSlice-dense_features/NoOfGamesPlayed/Shape:output:0;dense_features/NoOfGamesPlayed/strided_slice/stack:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/NoOfGamesPlayed/strided_slice?
.dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/NoOfGamesPlayed/Reshape/shape/1?
,dense_features/NoOfGamesPlayed/Reshape/shapePack5dense_features/NoOfGamesPlayed/strided_slice:output:07dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/NoOfGamesPlayed/Reshape/shape?
&dense_features/NoOfGamesPlayed/ReshapeReshape'dense_features/NoOfGamesPlayed/Cast:y:05dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/NoOfGamesPlayed/Reshape?
&dense_features/NoOfUnitsPurchased/CastCastinputs_noofunitspurchased*

DstT0*

SrcT0	*'
_output_shapes
:?????????2(
&dense_features/NoOfUnitsPurchased/Cast?
'dense_features/NoOfUnitsPurchased/ShapeShape*dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2)
'dense_features/NoOfUnitsPurchased/Shape?
5dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5dense_features/NoOfUnitsPurchased/strided_slice/stack?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2?
/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice0dense_features/NoOfUnitsPurchased/Shape:output:0>dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/dense_features/NoOfUnitsPurchased/strided_slice?
1dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1dense_features/NoOfUnitsPurchased/Reshape/shape/1?
/dense_features/NoOfUnitsPurchased/Reshape/shapePack8dense_features/NoOfUnitsPurchased/strided_slice:output:0:dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:21
/dense_features/NoOfUnitsPurchased/Reshape/shape?
)dense_features/NoOfUnitsPurchased/ReshapeReshape*dense_features/NoOfUnitsPurchased/Cast:y:08dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2+
)dense_features/NoOfUnitsPurchased/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV2.dense_features/City_indicator/Reshape:output:0Fdense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0/dense_features/FrequencyOFPlay/Reshape:output:01dense_features/FrquncyOfPurchase/Reshape:output:0-dense_features/MinAgeOfChild/Reshape:output:0,dense_features/NoOfChildren/Reshape:output:0/dense_features/NoOfGamesBought/Reshape:output:0/dense_features/NoOfGamesPlayed/Reshape:output:02dense_features/NoOfUnitsPurchased/Reshape:output:0#dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
dense_features/concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdd?
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp<^dense_features/City_indicator/None_Lookup/LookupTableFindV2T^dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2z
;dense_features/City_indicator/None_Lookup/LookupTableFindV2;dense_features/City_indicator/None_Lookup/LookupTableFindV22?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/City:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:lh
'
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:_
[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?;
?
"__inference__traced_restore_308636
file_prefix:
(assignvariableop_sequential_dense_kernel:	6
(assignvariableop_1_sequential_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: C
1assignvariableop_9_adam_sequential_dense_kernel_m:	>
0assignvariableop_10_adam_sequential_dense_bias_m:D
2assignvariableop_11_adam_sequential_dense_kernel_v:	>
0assignvariableop_12_adam_sequential_dense_bias_v:
identity_14??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp1assignvariableop_9_adam_sequential_dense_kernel_mIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_adam_sequential_dense_bias_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_sequential_dense_kernel_vIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_sequential_dense_bias_vIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_13Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_13?
Identity_14IdentityIdentity_13:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_14"#
identity_14Identity_14:output:0*/
_input_shapes
: : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
-
__inference__destroyer_308469
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
!__inference__wrapped_model_307184
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	W
Ssequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleX
Tsequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	o
ksequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlep
lsequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	A
/sequential_dense_matmul_readvariableop_resource:	>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2?^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
Gsequential/dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2I
Gsequential/dense_features/City_indicator/to_sparse_input/ignore_value/x?
Esequential/dense_features/City_indicator/to_sparse_input/ignore_valueCastPsequential/dense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2G
Esequential/dense_features/City_indicator/to_sparse_input/ignore_value?
Asequential/dense_features/City_indicator/to_sparse_input/NotEqualNotEqualcityIsequential/dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2C
Asequential/dense_features/City_indicator/to_sparse_input/NotEqual?
@sequential/dense_features/City_indicator/to_sparse_input/indicesWhereEsequential/dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2B
@sequential/dense_features/City_indicator/to_sparse_input/indices?
?sequential/dense_features/City_indicator/to_sparse_input/valuesGatherNdcityHsequential/dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2A
?sequential/dense_features/City_indicator/to_sparse_input/values?
Dsequential/dense_features/City_indicator/to_sparse_input/dense_shapeShapecity*
T0	*
_output_shapes
:*
out_type0	2F
Dsequential/dense_features/City_indicator/to_sparse_input/dense_shape?
Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ssequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleHsequential/dense_features/City_indicator/to_sparse_input/values:output:0Tsequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2H
Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2?
Dsequential/dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2F
Dsequential/dense_features/City_indicator/SparseToDense/default_value?
6sequential/dense_features/City_indicator/SparseToDenseSparseToDenseHsequential/dense_features/City_indicator/to_sparse_input/indices:index:0Msequential/dense_features/City_indicator/to_sparse_input/dense_shape:output:0Osequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Msequential/dense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????28
6sequential/dense_features/City_indicator/SparseToDense?
6sequential/dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential/dense_features/City_indicator/one_hot/Const?
8sequential/dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2:
8sequential/dense_features/City_indicator/one_hot/Const_1?
6sequential/dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/dense_features/City_indicator/one_hot/depth?
0sequential/dense_features/City_indicator/one_hotOneHot>sequential/dense_features/City_indicator/SparseToDense:dense:0?sequential/dense_features/City_indicator/one_hot/depth:output:0?sequential/dense_features/City_indicator/one_hot/Const:output:0Asequential/dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????22
0sequential/dense_features/City_indicator/one_hot?
>sequential/dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2@
>sequential/dense_features/City_indicator/Sum/reduction_indices?
,sequential/dense_features/City_indicator/SumSum9sequential/dense_features/City_indicator/one_hot:output:0Gsequential/dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2.
,sequential/dense_features/City_indicator/Sum?
.sequential/dense_features/City_indicator/ShapeShape5sequential/dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:20
.sequential/dense_features/City_indicator/Shape?
<sequential/dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/dense_features/City_indicator/strided_slice/stack?
>sequential/dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/dense_features/City_indicator/strided_slice/stack_1?
>sequential/dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/dense_features/City_indicator/strided_slice/stack_2?
6sequential/dense_features/City_indicator/strided_sliceStridedSlice7sequential/dense_features/City_indicator/Shape:output:0Esequential/dense_features/City_indicator/strided_slice/stack:output:0Gsequential/dense_features/City_indicator/strided_slice/stack_1:output:0Gsequential/dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential/dense_features/City_indicator/strided_slice?
8sequential/dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential/dense_features/City_indicator/Reshape/shape/1?
6sequential/dense_features/City_indicator/Reshape/shapePack?sequential/dense_features/City_indicator/strided_slice:output:0Asequential/dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:28
6sequential/dense_features/City_indicator/Reshape/shape?
0sequential/dense_features/City_indicator/ReshapeReshape5sequential/dense_features/City_indicator/Sum:output:0?sequential/dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
0sequential/dense_features/City_indicator/Reshape?
_sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2a
_sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqualfavoritechanneloftransactionhsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2[
Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
Xsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhere]sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2Z
Xsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNdfavoritechanneloftransaction`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2Y
Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShapefavoritechanneloftransaction*
T0*
_output_shapes
:*
out_type0	2^
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2ksequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handle`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0lsequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2`
^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2^
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDense`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0esequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0gsequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0esequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2P
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2P
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const?
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2R
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2P
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth?
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotVsequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2J
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot?
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2X
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
Dsequential/dense_features/FavoriteChannelOfTransaction_indicator/SumSumQsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2F
Dsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum?
Fsequential/dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeMsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2H
Fsequential/dense_features/FavoriteChannelOfTransaction_indicator/Shape?
Tsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2V
Tsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack?
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceOsequential/dense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0]sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice?
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2R
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackWsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2P
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape?
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeMsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2J
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape?
.sequential/dense_features/FrequencyOFPlay/CastCastfrequencyofplay*

DstT0*

SrcT0	*'
_output_shapes
:?????????20
.sequential/dense_features/FrequencyOFPlay/Cast?
/sequential/dense_features/FrequencyOFPlay/ShapeShape2sequential/dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:21
/sequential/dense_features/FrequencyOFPlay/Shape?
=sequential/dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/dense_features/FrequencyOFPlay/strided_slice/stack?
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_1?
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_2?
7sequential/dense_features/FrequencyOFPlay/strided_sliceStridedSlice8sequential/dense_features/FrequencyOFPlay/Shape:output:0Fsequential/dense_features/FrequencyOFPlay/strided_slice/stack:output:0Hsequential/dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0Hsequential/dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential/dense_features/FrequencyOFPlay/strided_slice?
9sequential/dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features/FrequencyOFPlay/Reshape/shape/1?
7sequential/dense_features/FrequencyOFPlay/Reshape/shapePack@sequential/dense_features/FrequencyOFPlay/strided_slice:output:0Bsequential/dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/dense_features/FrequencyOFPlay/Reshape/shape?
1sequential/dense_features/FrequencyOFPlay/ReshapeReshape2sequential/dense_features/FrequencyOFPlay/Cast:y:0@sequential/dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????23
1sequential/dense_features/FrequencyOFPlay/Reshape?
0sequential/dense_features/FrquncyOfPurchase/CastCastfrquncyofpurchase*

DstT0*

SrcT0	*'
_output_shapes
:?????????22
0sequential/dense_features/FrquncyOfPurchase/Cast?
1sequential/dense_features/FrquncyOfPurchase/ShapeShape4sequential/dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:23
1sequential/dense_features/FrquncyOfPurchase/Shape?
?sequential/dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential/dense_features/FrquncyOfPurchase/strided_slice/stack?
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_1?
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_2?
9sequential/dense_features/FrquncyOfPurchase/strided_sliceStridedSlice:sequential/dense_features/FrquncyOfPurchase/Shape:output:0Hsequential/dense_features/FrquncyOfPurchase/strided_slice/stack:output:0Jsequential/dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0Jsequential/dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9sequential/dense_features/FrquncyOfPurchase/strided_slice?
;sequential/dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;sequential/dense_features/FrquncyOfPurchase/Reshape/shape/1?
9sequential/dense_features/FrquncyOfPurchase/Reshape/shapePackBsequential/dense_features/FrquncyOfPurchase/strided_slice:output:0Dsequential/dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2;
9sequential/dense_features/FrquncyOfPurchase/Reshape/shape?
3sequential/dense_features/FrquncyOfPurchase/ReshapeReshape4sequential/dense_features/FrquncyOfPurchase/Cast:y:0Bsequential/dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????25
3sequential/dense_features/FrquncyOfPurchase/Reshape?
,sequential/dense_features/MinAgeOfChild/CastCastminageofchild*

DstT0*

SrcT0	*'
_output_shapes
:?????????2.
,sequential/dense_features/MinAgeOfChild/Cast?
-sequential/dense_features/MinAgeOfChild/ShapeShape0sequential/dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2/
-sequential/dense_features/MinAgeOfChild/Shape?
;sequential/dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential/dense_features/MinAgeOfChild/strided_slice/stack?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_1?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_2?
5sequential/dense_features/MinAgeOfChild/strided_sliceStridedSlice6sequential/dense_features/MinAgeOfChild/Shape:output:0Dsequential/dense_features/MinAgeOfChild/strided_slice/stack:output:0Fsequential/dense_features/MinAgeOfChild/strided_slice/stack_1:output:0Fsequential/dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5sequential/dense_features/MinAgeOfChild/strided_slice?
7sequential/dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential/dense_features/MinAgeOfChild/Reshape/shape/1?
5sequential/dense_features/MinAgeOfChild/Reshape/shapePack>sequential/dense_features/MinAgeOfChild/strided_slice:output:0@sequential/dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:27
5sequential/dense_features/MinAgeOfChild/Reshape/shape?
/sequential/dense_features/MinAgeOfChild/ReshapeReshape0sequential/dense_features/MinAgeOfChild/Cast:y:0>sequential/dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????21
/sequential/dense_features/MinAgeOfChild/Reshape?
+sequential/dense_features/NoOfChildren/CastCastnoofchildren*

DstT0*

SrcT0	*'
_output_shapes
:?????????2-
+sequential/dense_features/NoOfChildren/Cast?
,sequential/dense_features/NoOfChildren/ShapeShape/sequential/dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:2.
,sequential/dense_features/NoOfChildren/Shape?
:sequential/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential/dense_features/NoOfChildren/strided_slice/stack?
<sequential/dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential/dense_features/NoOfChildren/strided_slice/stack_1?
<sequential/dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential/dense_features/NoOfChildren/strided_slice/stack_2?
4sequential/dense_features/NoOfChildren/strided_sliceStridedSlice5sequential/dense_features/NoOfChildren/Shape:output:0Csequential/dense_features/NoOfChildren/strided_slice/stack:output:0Esequential/dense_features/NoOfChildren/strided_slice/stack_1:output:0Esequential/dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential/dense_features/NoOfChildren/strided_slice?
6sequential/dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential/dense_features/NoOfChildren/Reshape/shape/1?
4sequential/dense_features/NoOfChildren/Reshape/shapePack=sequential/dense_features/NoOfChildren/strided_slice:output:0?sequential/dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4sequential/dense_features/NoOfChildren/Reshape/shape?
.sequential/dense_features/NoOfChildren/ReshapeReshape/sequential/dense_features/NoOfChildren/Cast:y:0=sequential/dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.sequential/dense_features/NoOfChildren/Reshape?
.sequential/dense_features/NoOfGamesBought/CastCastnoofgamesbought*

DstT0*

SrcT0	*'
_output_shapes
:?????????20
.sequential/dense_features/NoOfGamesBought/Cast?
/sequential/dense_features/NoOfGamesBought/ShapeShape2sequential/dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:21
/sequential/dense_features/NoOfGamesBought/Shape?
=sequential/dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/dense_features/NoOfGamesBought/strided_slice/stack?
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_1?
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_2?
7sequential/dense_features/NoOfGamesBought/strided_sliceStridedSlice8sequential/dense_features/NoOfGamesBought/Shape:output:0Fsequential/dense_features/NoOfGamesBought/strided_slice/stack:output:0Hsequential/dense_features/NoOfGamesBought/strided_slice/stack_1:output:0Hsequential/dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential/dense_features/NoOfGamesBought/strided_slice?
9sequential/dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features/NoOfGamesBought/Reshape/shape/1?
7sequential/dense_features/NoOfGamesBought/Reshape/shapePack@sequential/dense_features/NoOfGamesBought/strided_slice:output:0Bsequential/dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/dense_features/NoOfGamesBought/Reshape/shape?
1sequential/dense_features/NoOfGamesBought/ReshapeReshape2sequential/dense_features/NoOfGamesBought/Cast:y:0@sequential/dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????23
1sequential/dense_features/NoOfGamesBought/Reshape?
.sequential/dense_features/NoOfGamesPlayed/CastCastnoofgamesplayed*

DstT0*

SrcT0	*'
_output_shapes
:?????????20
.sequential/dense_features/NoOfGamesPlayed/Cast?
/sequential/dense_features/NoOfGamesPlayed/ShapeShape2sequential/dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:21
/sequential/dense_features/NoOfGamesPlayed/Shape?
=sequential/dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/dense_features/NoOfGamesPlayed/strided_slice/stack?
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_1?
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_2?
7sequential/dense_features/NoOfGamesPlayed/strided_sliceStridedSlice8sequential/dense_features/NoOfGamesPlayed/Shape:output:0Fsequential/dense_features/NoOfGamesPlayed/strided_slice/stack:output:0Hsequential/dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0Hsequential/dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential/dense_features/NoOfGamesPlayed/strided_slice?
9sequential/dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features/NoOfGamesPlayed/Reshape/shape/1?
7sequential/dense_features/NoOfGamesPlayed/Reshape/shapePack@sequential/dense_features/NoOfGamesPlayed/strided_slice:output:0Bsequential/dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/dense_features/NoOfGamesPlayed/Reshape/shape?
1sequential/dense_features/NoOfGamesPlayed/ReshapeReshape2sequential/dense_features/NoOfGamesPlayed/Cast:y:0@sequential/dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????23
1sequential/dense_features/NoOfGamesPlayed/Reshape?
1sequential/dense_features/NoOfUnitsPurchased/CastCastnoofunitspurchased*

DstT0*

SrcT0	*'
_output_shapes
:?????????23
1sequential/dense_features/NoOfUnitsPurchased/Cast?
2sequential/dense_features/NoOfUnitsPurchased/ShapeShape5sequential/dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:24
2sequential/dense_features/NoOfUnitsPurchased/Shape?
@sequential/dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@sequential/dense_features/NoOfUnitsPurchased/strided_slice/stack?
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_1?
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_2?
:sequential/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice;sequential/dense_features/NoOfUnitsPurchased/Shape:output:0Isequential/dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0Ksequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0Ksequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:sequential/dense_features/NoOfUnitsPurchased/strided_slice?
<sequential/dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<sequential/dense_features/NoOfUnitsPurchased/Reshape/shape/1?
:sequential/dense_features/NoOfUnitsPurchased/Reshape/shapePackCsequential/dense_features/NoOfUnitsPurchased/strided_slice:output:0Esequential/dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2<
:sequential/dense_features/NoOfUnitsPurchased/Reshape/shape?
4sequential/dense_features/NoOfUnitsPurchased/ReshapeReshape5sequential/dense_features/NoOfUnitsPurchased/Cast:y:0Csequential/dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????26
4sequential/dense_features/NoOfUnitsPurchased/Reshape?
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%sequential/dense_features/concat/axis?
 sequential/dense_features/concatConcatV29sequential/dense_features/City_indicator/Reshape:output:0Qsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0:sequential/dense_features/FrequencyOFPlay/Reshape:output:0<sequential/dense_features/FrquncyOfPurchase/Reshape:output:08sequential/dense_features/MinAgeOfChild/Reshape:output:07sequential/dense_features/NoOfChildren/Reshape:output:0:sequential/dense_features/NoOfGamesBought/Reshape:output:0:sequential/dense_features/NoOfGamesPlayed/Reshape:output:0=sequential/dense_features/NoOfUnitsPurchased/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2"
 sequential/dense_features/concat?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul)sequential/dense_features/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/BiasAdd?
IdentityIdentity!sequential/dense/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOpG^sequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2_^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2?
Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV22?
^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_3084952
.table_init194_lookuptableimportv2_table_handle*
&table_init194_lookuptableimportv2_keys	,
(table_init194_lookuptableimportv2_values	
identity??!table_init194/LookupTableImportV2?
!table_init194/LookupTableImportV2LookupTableImportV2.table_init194_lookuptableimportv2_table_handle&table_init194_lookuptableimportv2_keys(table_init194_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 2#
!table_init194/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constu
IdentityIdentityConst:output:0"^table_init194/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init194/LookupTableImportV2!table_init194/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
;
__inference__creator_308474
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name229*
value_dtype0	2

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_307651

inputs	
inputs_1	
inputs_2
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
dense_features_307636
dense_features_307638	
dense_features_307640
dense_features_307642	
dense_307645:	
dense_307647:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12dense_features_307636dense_features_307638dense_features_307640dense_features_307642*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_3075672(
&dense_features/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_307645dense_307647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3073652
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O	K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O
K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_308252
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-City_indicator/to_sparse_input/ignore_value/x?
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2-
+City_indicator/to_sparse_input/ignore_value?
'City_indicator/to_sparse_input/NotEqualNotEqualfeatures_city/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2)
'City_indicator/to_sparse_input/NotEqual?
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2(
&City_indicator/to_sparse_input/indices?
%City_indicator/to_sparse_input/valuesGatherNdfeatures_city.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2'
%City_indicator/to_sparse_input/values?
*City_indicator/to_sparse_input/dense_shapeShapefeatures_city*
T0	*
_output_shapes
:*
out_type0	2,
*City_indicator/to_sparse_input/dense_shape?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2.
,City_indicator/None_Lookup/LookupTableFindV2?
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*City_indicator/SparseToDense/default_value?
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2
City_indicator/SparseToDense?
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
City_indicator/one_hot/Const?
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
City_indicator/one_hot/Const_1~
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
City_indicator/one_hot/depth?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
City_indicator/one_hot?
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$City_indicator/Sum/reduction_indices?
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Sumw
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:2
City_indicator/Shape?
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"City_indicator/strided_slice/stack?
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_1?
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_2?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
City_indicator/strided_slice?
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
City_indicator/Reshape/shape/1?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
City_indicator/Reshape/shape?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Reshape?
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2G
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual%features_favoritechanneloftransactionNFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2A
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2@
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd%features_favoritechanneloftransactionFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape%features_favoritechanneloftransaction*
T0*
_output_shapes
:*
out_type0	2D
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2F
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2D
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????26
4FavoriteChannelOfTransaction_indicator/SparseToDense?
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4FavoriteChannelOfTransaction_indicator/one_hot/Const?
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    28
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :26
4FavoriteChannelOfTransaction_indicator/one_hot/depth?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/one_hot?
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2>
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2,
*FavoriteChannelOfTransaction_indicator/Sum?
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2.
,FavoriteChannelOfTransaction_indicator/Shape?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:FavoriteChannelOfTransaction_indicator/strided_slice/stack?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4FavoriteChannelOfTransaction_indicator/strided_slice?
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4FavoriteChannelOfTransaction_indicator/Reshape/shape?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/Reshape?
FrequencyOFPlay/CastCastfeatures_frequencyofplay*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrequencyOFPlay/Castv
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2
FrequencyOFPlay/Shape?
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FrequencyOFPlay/strided_slice/stack?
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_1?
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_2?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FrequencyOFPlay/strided_slice?
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FrequencyOFPlay/Reshape/shape/1?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
FrequencyOFPlay/Reshape/shape?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrequencyOFPlay/Reshape?
FrquncyOfPurchase/CastCastfeatures_frquncyofpurchase*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrquncyOfPurchase/Cast|
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2
FrquncyOfPurchase/Shape?
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%FrquncyOfPurchase/strided_slice/stack?
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_1?
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_2?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
FrquncyOfPurchase/strided_slice?
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!FrquncyOfPurchase/Reshape/shape/1?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
FrquncyOfPurchase/Reshape/shape?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrquncyOfPurchase/Reshape?
MinAgeOfChild/CastCastfeatures_minageofchild*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
MinAgeOfChild/Castp
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2
MinAgeOfChild/Shape?
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!MinAgeOfChild/strided_slice/stack?
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_1?
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_2?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
MinAgeOfChild/strided_slice?
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
MinAgeOfChild/Reshape/shape/1?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
MinAgeOfChild/Reshape/shape?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
MinAgeOfChild/Reshape?
NoOfChildren/CastCastfeatures_noofchildren*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfChildren/Castm
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:2
NoOfChildren/Shape?
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 NoOfChildren/strided_slice/stack?
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_1?
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_2?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfChildren/strided_slice~
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
NoOfChildren/Reshape/shape/1?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfChildren/Reshape/shape?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfChildren/Reshape?
NoOfGamesBought/CastCastfeatures_noofgamesbought*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesBought/Castv
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesBought/Shape?
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesBought/strided_slice/stack?
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_1?
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_2?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesBought/strided_slice?
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesBought/Reshape/shape/1?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesBought/Reshape/shape?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesBought/Reshape?
NoOfGamesPlayed/CastCastfeatures_noofgamesplayed*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesPlayed/Castv
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesPlayed/Shape?
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesPlayed/strided_slice/stack?
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_1?
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_2?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesPlayed/strided_slice?
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesPlayed/Reshape/shape/1?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesPlayed/Reshape/shape?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesPlayed/Reshape?
NoOfUnitsPurchased/CastCastfeatures_noofunitspurchased*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Cast
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2
NoOfUnitsPurchased/Shape?
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&NoOfUnitsPurchased/strided_slice/stack?
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_1?
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_2?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 NoOfUnitsPurchased/strided_slice?
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"NoOfUnitsPurchased/Reshape/shape/1?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 NoOfUnitsPurchased/Reshape/shape?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
concat?
IdentityIdentityconcat:output:0-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:V R
'
_output_shapes
:?????????
'
_user_specified_namefeatures/City:\X
'
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:nj
'
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:_[
'
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:^Z
'
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:a	]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:a
]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:d`
'
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:XT
'
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
?
-
__inference__destroyer_308487
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_3085032
.table_init228_lookuptableimportv2_table_handle*
&table_init228_lookuptableimportv2_keys,
(table_init228_lookuptableimportv2_values	
identity??!table_init228/LookupTableImportV2?
!table_init228/LookupTableImportV2LookupTableImportV2.table_init228_lookuptableimportv2_table_handle&table_init228_lookuptableimportv2_keys(table_init228_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2#
!table_init228/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constu
IdentityIdentityConst:output:0"^table_init228/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init228/LookupTableImportV2!table_init228/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
$__inference_signature_wrapper_307792
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_3071842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameCity:SO
'
_output_shapes
:?????????
$
_user_specified_name
CustomerID:ea
'
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:UQ
'
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:XT
'
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:ZV
'
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:VR
'
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:VR
'
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:UQ
'
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:X	T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:X
T
'
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:[W
'
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:OK
'
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_layer_call_fn_308451

inputs
unknown:	
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3073652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_307365

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
ɾ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_307567
features	

features_1	

features_2

features_3

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-City_indicator/to_sparse_input/ignore_value/x?
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2-
+City_indicator/to_sparse_input/ignore_value?
'City_indicator/to_sparse_input/NotEqualNotEqualfeatures/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:?????????2)
'City_indicator/to_sparse_input/NotEqual?
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2(
&City_indicator/to_sparse_input/indices?
%City_indicator/to_sparse_input/valuesGatherNdfeatures.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2'
%City_indicator/to_sparse_input/values?
*City_indicator/to_sparse_input/dense_shapeShapefeatures*
T0	*
_output_shapes
:*
out_type0	2,
*City_indicator/to_sparse_input/dense_shape?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????2.
,City_indicator/None_Lookup/LookupTableFindV2?
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2,
*City_indicator/SparseToDense/default_value?
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????2
City_indicator/SparseToDense?
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
City_indicator/one_hot/Const?
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
City_indicator/one_hot/Const_1~
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
City_indicator/one_hot/depth?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????2
City_indicator/one_hot?
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2&
$City_indicator/Sum/reduction_indices?
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Sumw
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:2
City_indicator/Shape?
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"City_indicator/strided_slice/stack?
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_1?
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$City_indicator/strided_slice/stack_2?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
City_indicator/strided_slice?
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
City_indicator/Reshape/shape/1?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
City_indicator/Reshape/shape?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
City_indicator/Reshape?
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2G
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual
features_2NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2A
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual?
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2@
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indices?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd
features_2FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2?
=FavoriteChannelOfTransaction_indicator/to_sparse_input/values?
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape
features_2*
T0*
_output_shapes
:*
out_type0	2D
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2F
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2D
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_value?
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????26
4FavoriteChannelOfTransaction_indicator/SparseToDense?
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4FavoriteChannelOfTransaction_indicator/one_hot/Const?
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    28
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1?
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :26
4FavoriteChannelOfTransaction_indicator/one_hot/depth?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/one_hot?
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????2>
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indices?
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2,
*FavoriteChannelOfTransaction_indicator/Sum?
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:2.
,FavoriteChannelOfTransaction_indicator/Shape?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:FavoriteChannelOfTransaction_indicator/strided_slice/stack?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4FavoriteChannelOfTransaction_indicator/strided_slice?
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :28
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4FavoriteChannelOfTransaction_indicator/Reshape/shape?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????20
.FavoriteChannelOfTransaction_indicator/Reshape?
FrequencyOFPlay/CastCast
features_4*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrequencyOFPlay/Castv
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:2
FrequencyOFPlay/Shape?
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#FrequencyOFPlay/strided_slice/stack?
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_1?
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%FrequencyOFPlay/strided_slice/stack_2?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
FrequencyOFPlay/strided_slice?
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
FrequencyOFPlay/Reshape/shape/1?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
FrequencyOFPlay/Reshape/shape?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrequencyOFPlay/Reshape?
FrquncyOfPurchase/CastCast
features_5*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
FrquncyOfPurchase/Cast|
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:2
FrquncyOfPurchase/Shape?
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%FrquncyOfPurchase/strided_slice/stack?
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_1?
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'FrquncyOfPurchase/strided_slice/stack_2?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
FrquncyOfPurchase/strided_slice?
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!FrquncyOfPurchase/Reshape/shape/1?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
FrquncyOfPurchase/Reshape/shape?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
FrquncyOfPurchase/Reshape}
MinAgeOfChild/CastCast
features_7*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
MinAgeOfChild/Castp
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:2
MinAgeOfChild/Shape?
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!MinAgeOfChild/strided_slice/stack?
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_1?
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#MinAgeOfChild/strided_slice/stack_2?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
MinAgeOfChild/strided_slice?
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
MinAgeOfChild/Reshape/shape/1?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
MinAgeOfChild/Reshape/shape?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
MinAgeOfChild/Reshape{
NoOfChildren/CastCast
features_8*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfChildren/Castm
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:2
NoOfChildren/Shape?
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 NoOfChildren/strided_slice/stack?
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_1?
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"NoOfChildren/strided_slice/stack_2?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfChildren/strided_slice~
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
NoOfChildren/Reshape/shape/1?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfChildren/Reshape/shape?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfChildren/Reshape?
NoOfGamesBought/CastCast
features_9*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesBought/Castv
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesBought/Shape?
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesBought/strided_slice/stack?
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_1?
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesBought/strided_slice/stack_2?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesBought/strided_slice?
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesBought/Reshape/shape/1?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesBought/Reshape/shape?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesBought/Reshape?
NoOfGamesPlayed/CastCastfeatures_10*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfGamesPlayed/Castv
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:2
NoOfGamesPlayed/Shape?
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#NoOfGamesPlayed/strided_slice/stack?
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_1?
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%NoOfGamesPlayed/strided_slice/stack_2?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
NoOfGamesPlayed/strided_slice?
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
NoOfGamesPlayed/Reshape/shape/1?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
NoOfGamesPlayed/Reshape/shape?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfGamesPlayed/Reshape?
NoOfUnitsPurchased/CastCastfeatures_11*

DstT0*

SrcT0	*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Cast
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:2
NoOfUnitsPurchased/Shape?
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&NoOfUnitsPurchased/strided_slice/stack?
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_1?
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(NoOfUnitsPurchased/strided_slice/stack_2?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 NoOfUnitsPurchased/strided_slice?
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"NoOfUnitsPurchased/Reshape/shape/1?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 NoOfUnitsPurchased/Reshape/shape?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
NoOfUnitsPurchased/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	2
concat?
IdentityIdentityconcat:output:0-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:Q	M
'
_output_shapes
:?????????
"
_user_specified_name
features:Q
M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_308122
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cityinputs_customerid#inputs_favoritechanneloftransactioninputs_favoritegameinputs_frequencyofplayinputs_frquncyofpurchaseinputs_maxageofchildinputs_minageofchildinputs_noofchildreninputs_noofgamesboughtinputs_noofgamesplayedinputs_noofunitspurchasedinputs_tenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3076512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinputs/City:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:lh
'
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:]Y
'
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:\X
'
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:_
[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
5
City-
serving_default_City:0	?????????
A

CustomerID3
serving_default_CustomerID:0	?????????
e
FavoriteChannelOfTransactionE
.serving_default_FavoriteChannelOfTransaction:0?????????
E
FavoriteGame5
serving_default_FavoriteGame:0?????????
K
FrequencyOFPlay8
!serving_default_FrequencyOFPlay:0	?????????
O
FrquncyOfPurchase:
#serving_default_FrquncyOfPurchase:0	?????????
G
MaxAgeOfChild6
serving_default_MaxAgeOfChild:0	?????????
G
MinAgeOfChild6
serving_default_MinAgeOfChild:0	?????????
E
NoOfChildren5
serving_default_NoOfChildren:0	?????????
K
NoOfGamesBought8
!serving_default_NoOfGamesBought:0	?????????
K
NoOfGamesPlayed8
!serving_default_NoOfGamesPlayed:0	?????????
Q
NoOfUnitsPurchased;
$serving_default_NoOfUnitsPurchased:0	?????????
9
Tenure/
serving_default_Tenure:0	?????????>
output_12
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict:??
?U
layer-0
layer_with_weights-0
layer-1
	optimizer
_build_input_shape
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
9_default_save_signature
*:&call_and_return_all_conditional_losses
;__call__"?S
_tf_keras_sequential?S{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "City", "vocabulary_list": {"class_name": "__tuple__", "items": [1]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "FavoriteChannelOfTransaction", "vocabulary_list": {"class_name": "__tuple__", "items": ["Favorite"]}, "dtype": "string", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "FrequencyOFPlay", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "FrquncyOfPurchase", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "MinAgeOfChild", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfChildren", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesBought", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesPlayed", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfUnitsPurchased", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"CustomerID": {"class_name": "__tuple__", "items": [null, 1]}, "City": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfChildren": {"class_name": "__tuple__", "items": [null, 1]}, "MinAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "MaxAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "Tenure": {"class_name": "__tuple__", "items": [null, 1]}, "FrquncyOfPurchase": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfUnitsPurchased": {"class_name": "__tuple__", "items": [null, 1]}, "FrequencyOFPlay": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesPlayed": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesBought": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteChannelOfTransaction": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteGame": {"class_name": "__tuple__", "items": [null, 1]}}}, "shared_object_id": 4, "build_input_shape": {"CustomerID": {"class_name": "__tuple__", "items": [null, 1]}, "City": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfChildren": {"class_name": "__tuple__", "items": [null, 1]}, "MinAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "MaxAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "Tenure": {"class_name": "__tuple__", "items": [null, 1]}, "FrquncyOfPurchase": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfUnitsPurchased": {"class_name": "__tuple__", "items": [null, 1]}, "FrequencyOFPlay": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesPlayed": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesBought": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteChannelOfTransaction": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteGame": {"class_name": "__tuple__", "items": [null, 1]}}, "is_graph_network": false, "save_spec": {"CustomerID": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "CustomerID"]}, "City": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "City"]}, "NoOfChildren": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "NoOfChildren"]}, "MinAgeOfChild": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "MinAgeOfChild"]}, "MaxAgeOfChild": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "MaxAgeOfChild"]}, "Tenure": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "Tenure"]}, "FrquncyOfPurchase": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "FrquncyOfPurchase"]}, "NoOfUnitsPurchased": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "NoOfUnitsPurchased"]}, "FrequencyOFPlay": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "FrequencyOFPlay"]}, "NoOfGamesPlayed": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "NoOfGamesPlayed"]}, "NoOfGamesBought": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "NoOfGamesBought"]}, "FavoriteChannelOfTransaction": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "string", "FavoriteChannelOfTransaction"]}, "FavoriteGame": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "string", "FavoriteGame"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "City", "vocabulary_list": {"class_name": "__tuple__", "items": [1]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "FavoriteChannelOfTransaction", "vocabulary_list": {"class_name": "__tuple__", "items": ["Favorite"]}, "dtype": "string", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "FrequencyOFPlay", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "FrquncyOfPurchase", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "MinAgeOfChild", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfChildren", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesBought", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesPlayed", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfUnitsPurchased", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}], "build_input_shape": {"CustomerID": {"class_name": "__tuple__", "items": [null, 1]}, "City": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfChildren": {"class_name": "__tuple__", "items": [null, 1]}, "MinAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "MaxAgeOfChild": {"class_name": "__tuple__", "items": [null, 1]}, "Tenure": {"class_name": "__tuple__", "items": [null, 1]}, "FrquncyOfPurchase": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfUnitsPurchased": {"class_name": "__tuple__", "items": [null, 1]}, "FrequencyOFPlay": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesPlayed": {"class_name": "__tuple__", "items": [null, 1]}, "NoOfGamesBought": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteChannelOfTransaction": {"class_name": "__tuple__", "items": [null, 1]}, "FavoriteGame": {"class_name": "__tuple__", "items": [null, 1]}}}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

_feature_columns

_resources
trainable_variables
regularization_losses
	variables
	keras_api
*<&call_and_return_all_conditional_losses
=__call__"?
_tf_keras_layer?{"name": "dense_features", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "City", "vocabulary_list": {"class_name": "__tuple__", "items": [1]}, "dtype": "int64", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "IndicatorColumn", "config": {"categorical_column": {"class_name": "VocabularyListCategoricalColumn", "config": {"key": "FavoriteChannelOfTransaction", "vocabulary_list": {"class_name": "__tuple__", "items": ["Favorite"]}, "dtype": "string", "default_value": -1, "num_oov_buckets": 0}}}}, {"class_name": "NumericColumn", "config": {"key": "FrequencyOFPlay", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "FrquncyOfPurchase", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "MinAgeOfChild", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfChildren", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesBought", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfGamesPlayed", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "NoOfUnitsPurchased", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}, "shared_object_id": 0, "build_input_shape": {"CustomerID": {"class_name": "TensorShape", "items": [null, 1]}, "City": {"class_name": "TensorShape", "items": [null, 1]}, "NoOfChildren": {"class_name": "TensorShape", "items": [null, 1]}, "MinAgeOfChild": {"class_name": "TensorShape", "items": [null, 1]}, "MaxAgeOfChild": {"class_name": "TensorShape", "items": [null, 1]}, "Tenure": {"class_name": "TensorShape", "items": [null, 1]}, "FrquncyOfPurchase": {"class_name": "TensorShape", "items": [null, 1]}, "NoOfUnitsPurchased": {"class_name": "TensorShape", "items": [null, 1]}, "FrequencyOFPlay": {"class_name": "TensorShape", "items": [null, 1]}, "NoOfGamesPlayed": {"class_name": "TensorShape", "items": [null, 1]}, "NoOfGamesBought": {"class_name": "TensorShape", "items": [null, 1]}, "FavoriteChannelOfTransaction": {"class_name": "TensorShape", "items": [null, 1]}, "FavoriteGame": {"class_name": "TensorShape", "items": [null, 1]}}, "_is_feature_layer": true}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*>&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
w
iter

beta_1

beta_2
	decay
learning_ratem5m6v7v8"
	optimizer
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

layers
trainable_variables
regularization_losses
layer_metrics
metrics
layer_regularization_losses
non_trainable_variables
	variables
;__call__
9_default_save_signature
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
,
@serving_default"
signature_map
 "
trackable_list_wrapper
J
 City
 !FavoriteChannelOfTransaction"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
"layer_regularization_losses
regularization_losses
#layer_metrics
$metrics

%layers
&non_trainable_variables
	variables
=__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
):'	2sequential/dense/kernel
#:!2sequential/dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
'layer_regularization_losses
regularization_losses
(layer_metrics
)metrics

*layers
+non_trainable_variables
	variables
?__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/
-City_lookup"
_generic_user_object
G
'.#FavoriteChannelOfTransaction_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	/total
	0count
1	variables
2	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 6}
R
3_initializer
A_create_resource
B_initialize
C_destroy_resourceR 
R
4_initializer
D_create_resource
E_initialize
F_destroy_resourceR 
:  (2total
:  (2count
.
/0
01"
trackable_list_wrapper
-
1	variables"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
.:,	2Adam/sequential/dense/kernel/m
(:&2Adam/sequential/dense/bias/m
.:,	2Adam/sequential/dense/kernel/v
(:&2Adam/sequential/dense/bias/v
?2?
!__inference__wrapped_model_307184?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_307928
F__inference_sequential_layer_call_and_return_conditional_losses_308064
F__inference_sequential_layer_call_and_return_conditional_losses_307725
F__inference_sequential_layer_call_and_return_conditional_losses_307755?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_layer_call_fn_307387
+__inference_sequential_layer_call_fn_308093
+__inference_sequential_layer_call_fn_308122
+__inference_sequential_layer_call_fn_307695?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dense_features_layer_call_and_return_conditional_losses_308252
J__inference_dense_features_layer_call_and_return_conditional_losses_308382?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_dense_features_layer_call_fn_308407
/__inference_dense_features_layer_call_fn_308432?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_308442?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_308451?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_307792City
CustomerIDFavoriteChannelOfTransactionFavoriteGameFrequencyOFPlayFrquncyOfPurchaseMaxAgeOfChildMinAgeOfChildNoOfChildrenNoOfGamesBoughtNoOfGamesPlayedNoOfUnitsPurchasedTenure"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_308456?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_308464?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_308469?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_308474?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_308482?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_308487?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_57
__inference__creator_308456?

? 
? "? 7
__inference__creator_308474?

? 
? "? 9
__inference__destroyer_308469?

? 
? "? 9
__inference__destroyer_308487?

? 
? "? @
__inference__initializer_308464-IJ?

? 
? "? @
__inference__initializer_308482.KL?

? 
? "? ?
!__inference__wrapped_model_307184?-G.H???
???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
? "3?0
.
output_1"?
output_1??????????
J__inference_dense_features_layer_call_and_return_conditional_losses_308252?-G.H???
???
???
/
City'?$
features/City?????????	
;

CustomerID-?*
features/CustomerID?????????	
_
FavoriteChannelOfTransaction??<
%features/FavoriteChannelOfTransaction?????????
?
FavoriteGame/?,
features/FavoriteGame?????????
E
FrequencyOFPlay2?/
features/FrequencyOFPlay?????????	
I
FrquncyOfPurchase4?1
features/FrquncyOfPurchase?????????	
A
MaxAgeOfChild0?-
features/MaxAgeOfChild?????????	
A
MinAgeOfChild0?-
features/MinAgeOfChild?????????	
?
NoOfChildren/?,
features/NoOfChildren?????????	
E
NoOfGamesBought2?/
features/NoOfGamesBought?????????	
E
NoOfGamesPlayed2?/
features/NoOfGamesPlayed?????????	
K
NoOfUnitsPurchased5?2
features/NoOfUnitsPurchased?????????	
3
Tenure)?&
features/Tenure?????????	

 
p 
? "%?"
?
0?????????	
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_308382?-G.H???
???
???
/
City'?$
features/City?????????	
;

CustomerID-?*
features/CustomerID?????????	
_
FavoriteChannelOfTransaction??<
%features/FavoriteChannelOfTransaction?????????
?
FavoriteGame/?,
features/FavoriteGame?????????
E
FrequencyOFPlay2?/
features/FrequencyOFPlay?????????	
I
FrquncyOfPurchase4?1
features/FrquncyOfPurchase?????????	
A
MaxAgeOfChild0?-
features/MaxAgeOfChild?????????	
A
MinAgeOfChild0?-
features/MinAgeOfChild?????????	
?
NoOfChildren/?,
features/NoOfChildren?????????	
E
NoOfGamesBought2?/
features/NoOfGamesBought?????????	
E
NoOfGamesPlayed2?/
features/NoOfGamesPlayed?????????	
K
NoOfUnitsPurchased5?2
features/NoOfUnitsPurchased?????????	
3
Tenure)?&
features/Tenure?????????	

 
p
? "%?"
?
0?????????	
? ?
/__inference_dense_features_layer_call_fn_308407?-G.H???
???
???
/
City'?$
features/City?????????	
;

CustomerID-?*
features/CustomerID?????????	
_
FavoriteChannelOfTransaction??<
%features/FavoriteChannelOfTransaction?????????
?
FavoriteGame/?,
features/FavoriteGame?????????
E
FrequencyOFPlay2?/
features/FrequencyOFPlay?????????	
I
FrquncyOfPurchase4?1
features/FrquncyOfPurchase?????????	
A
MaxAgeOfChild0?-
features/MaxAgeOfChild?????????	
A
MinAgeOfChild0?-
features/MinAgeOfChild?????????	
?
NoOfChildren/?,
features/NoOfChildren?????????	
E
NoOfGamesBought2?/
features/NoOfGamesBought?????????	
E
NoOfGamesPlayed2?/
features/NoOfGamesPlayed?????????	
K
NoOfUnitsPurchased5?2
features/NoOfUnitsPurchased?????????	
3
Tenure)?&
features/Tenure?????????	

 
p 
? "??????????	?
/__inference_dense_features_layer_call_fn_308432?-G.H???
???
???
/
City'?$
features/City?????????	
;

CustomerID-?*
features/CustomerID?????????	
_
FavoriteChannelOfTransaction??<
%features/FavoriteChannelOfTransaction?????????
?
FavoriteGame/?,
features/FavoriteGame?????????
E
FrequencyOFPlay2?/
features/FrequencyOFPlay?????????	
I
FrquncyOfPurchase4?1
features/FrquncyOfPurchase?????????	
A
MaxAgeOfChild0?-
features/MaxAgeOfChild?????????	
A
MinAgeOfChild0?-
features/MinAgeOfChild?????????	
?
NoOfChildren/?,
features/NoOfChildren?????????	
E
NoOfGamesBought2?/
features/NoOfGamesBought?????????	
E
NoOfGamesPlayed2?/
features/NoOfGamesPlayed?????????	
K
NoOfUnitsPurchased5?2
features/NoOfUnitsPurchased?????????	
3
Tenure)?&
features/Tenure?????????	

 
p
? "??????????	?
A__inference_dense_layer_call_and_return_conditional_losses_308442\/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????
? y
&__inference_dense_layer_call_fn_308451O/?,
%?"
 ?
inputs?????????	
? "???????????
F__inference_sequential_layer_call_and_return_conditional_losses_307725?-G.H???
???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_307755?-G.H???
???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_307928?-G.H???
???
???
-
City%?"
inputs/City?????????	
9

CustomerID+?(
inputs/CustomerID?????????	
]
FavoriteChannelOfTransaction=?:
#inputs/FavoriteChannelOfTransaction?????????
=
FavoriteGame-?*
inputs/FavoriteGame?????????
C
FrequencyOFPlay0?-
inputs/FrequencyOFPlay?????????	
G
FrquncyOfPurchase2?/
inputs/FrquncyOfPurchase?????????	
?
MaxAgeOfChild.?+
inputs/MaxAgeOfChild?????????	
?
MinAgeOfChild.?+
inputs/MinAgeOfChild?????????	
=
NoOfChildren-?*
inputs/NoOfChildren?????????	
C
NoOfGamesBought0?-
inputs/NoOfGamesBought?????????	
C
NoOfGamesPlayed0?-
inputs/NoOfGamesPlayed?????????	
I
NoOfUnitsPurchased3?0
inputs/NoOfUnitsPurchased?????????	
1
Tenure'?$
inputs/Tenure?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_308064?-G.H???
???
???
-
City%?"
inputs/City?????????	
9

CustomerID+?(
inputs/CustomerID?????????	
]
FavoriteChannelOfTransaction=?:
#inputs/FavoriteChannelOfTransaction?????????
=
FavoriteGame-?*
inputs/FavoriteGame?????????
C
FrequencyOFPlay0?-
inputs/FrequencyOFPlay?????????	
G
FrquncyOfPurchase2?/
inputs/FrquncyOfPurchase?????????	
?
MaxAgeOfChild.?+
inputs/MaxAgeOfChild?????????	
?
MinAgeOfChild.?+
inputs/MinAgeOfChild?????????	
=
NoOfChildren-?*
inputs/NoOfChildren?????????	
C
NoOfGamesBought0?-
inputs/NoOfGamesBought?????????	
C
NoOfGamesPlayed0?-
inputs/NoOfGamesPlayed?????????	
I
NoOfUnitsPurchased3?0
inputs/NoOfUnitsPurchased?????????	
1
Tenure'?$
inputs/Tenure?????????	
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_307387?-G.H???
???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_307695?-G.H???
???
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	
p

 
? "???????????
+__inference_sequential_layer_call_fn_308093?-G.H???
???
???
-
City%?"
inputs/City?????????	
9

CustomerID+?(
inputs/CustomerID?????????	
]
FavoriteChannelOfTransaction=?:
#inputs/FavoriteChannelOfTransaction?????????
=
FavoriteGame-?*
inputs/FavoriteGame?????????
C
FrequencyOFPlay0?-
inputs/FrequencyOFPlay?????????	
G
FrquncyOfPurchase2?/
inputs/FrquncyOfPurchase?????????	
?
MaxAgeOfChild.?+
inputs/MaxAgeOfChild?????????	
?
MinAgeOfChild.?+
inputs/MinAgeOfChild?????????	
=
NoOfChildren-?*
inputs/NoOfChildren?????????	
C
NoOfGamesBought0?-
inputs/NoOfGamesBought?????????	
C
NoOfGamesPlayed0?-
inputs/NoOfGamesPlayed?????????	
I
NoOfUnitsPurchased3?0
inputs/NoOfUnitsPurchased?????????	
1
Tenure'?$
inputs/Tenure?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_308122?-G.H???
???
???
-
City%?"
inputs/City?????????	
9

CustomerID+?(
inputs/CustomerID?????????	
]
FavoriteChannelOfTransaction=?:
#inputs/FavoriteChannelOfTransaction?????????
=
FavoriteGame-?*
inputs/FavoriteGame?????????
C
FrequencyOFPlay0?-
inputs/FrequencyOFPlay?????????	
G
FrquncyOfPurchase2?/
inputs/FrquncyOfPurchase?????????	
?
MaxAgeOfChild.?+
inputs/MaxAgeOfChild?????????	
?
MinAgeOfChild.?+
inputs/MinAgeOfChild?????????	
=
NoOfChildren-?*
inputs/NoOfChildren?????????	
C
NoOfGamesBought0?-
inputs/NoOfGamesBought?????????	
C
NoOfGamesPlayed0?-
inputs/NoOfGamesPlayed?????????	
I
NoOfUnitsPurchased3?0
inputs/NoOfUnitsPurchased?????????	
1
Tenure'?$
inputs/Tenure?????????	
p

 
? "???????????
$__inference_signature_wrapper_307792?-G.H???
? 
???
&
City?
City?????????	
2

CustomerID$?!

CustomerID?????????	
V
FavoriteChannelOfTransaction6?3
FavoriteChannelOfTransaction?????????
6
FavoriteGame&?#
FavoriteGame?????????
<
FrequencyOFPlay)?&
FrequencyOFPlay?????????	
@
FrquncyOfPurchase+?(
FrquncyOfPurchase?????????	
8
MaxAgeOfChild'?$
MaxAgeOfChild?????????	
8
MinAgeOfChild'?$
MinAgeOfChild?????????	
6
NoOfChildren&?#
NoOfChildren?????????	
<
NoOfGamesBought)?&
NoOfGamesBought?????????	
<
NoOfGamesPlayed)?&
NoOfGamesPlayed?????????	
B
NoOfUnitsPurchased,?)
NoOfUnitsPurchased?????????	
*
Tenure ?
Tenure?????????	"3?0
.
output_1"?
output_1?????????