��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
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
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.6.0-dev202105192v1.12.1-56995-g3fd3ae1fbb18�
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
�
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
�
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel* 
_output_shapes
:
��*
dtype0
�
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
�
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!simple_rnn/simple_rnn_cell/bias
�
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes	
:�*
dtype0
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_nameRMSprop/dense/kernel/rms
�
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms*
_output_shapes
:	�*
dtype0
�
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameRMSprop/dense/bias/rms
}
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes
:*
dtype0
�
-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*>
shared_name/-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
�
ARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpReadVariableOp-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms* 
_output_shapes
:
��*
dtype0
�
7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
�
KRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms* 
_output_shapes
:
��*
dtype0
�
+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
�
?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpReadVariableOp+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
_output_shapes	
:�*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
		keras_api
�

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
v
iter
	decay
learning_rate
momentum
rho	rmsE	rmsF	rmsG	rmsH	rmsI
 
 
#
0
1
2
3
4
#
0
1
2
3
4
 
�
 non_trainable_variables

!layers
"layer_metrics
#metrics
	variables
$layer_regularization_losses
trainable_variables
regularization_losses
�

kernel
recurrent_kernel
bias
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
 
 

0
1
2

0
1
2
 
�
*non_trainable_variables

+states

,layers
-layer_metrics
.metrics
	variables
/layer_regularization_losses
trainable_variables
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
0non_trainable_variables

1layers
2layer_metrics
3metrics
	variables
4layer_regularization_losses
trainable_variables
regularization_losses
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

50
61
 
 

0
1
2

0
1
2
 
�
7non_trainable_variables

8layers
9layer_metrics
:metrics
&	variables
;layer_regularization_losses
'trainable_variables
(regularization_losses
 
 


0
 
 
 
 
 
 
 
 
4
	<total
	=count
>	variables
?	keras_api
D
	@total
	Acount
B
_fn_kwargs
C	variables
D	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

>	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

@0
A1

C	variables
��
VARIABLE_VALUERMSprop/dense/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUERMSprop/dense/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
 serving_default_simple_rnn_inputPlaceholder*-
_output_shapes
:����������	�*
dtype0*"
shape:����������	�
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_simple_rnn_input!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kerneldense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_5727
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOpARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpKRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOp?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8� *&
f!R
__inference__traced_save_6862
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rho!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/biastotalcounttotal_1count_1RMSprop/dense/kernel/rmsRMSprop/dense/bias/rms-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
Tin
2*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_6929ľ
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6179
inputs_0D
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6095*
condR
while_cond_6094*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�1
�
D__inference_sequential_layer_call_and_return_conditional_losses_5686
simple_rnn_input#
simple_rnn_5655:
��
simple_rnn_5657:	�#
simple_rnn_5659:
��

dense_5662:	�

dense_5664:
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_5655simple_rnn_5657simple_rnn_5659*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_55302$
"simple_rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_5662
dense_5664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_53392
dense/StatefulPartitionedCall�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5655* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5659* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5657*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mul�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
�#
�
while_body_4625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_simple_rnn_cell_1_4647_0:
��-
while_simple_rnn_cell_1_4649_0:	�2
while_simple_rnn_cell_1_4651_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_4647:
��+
while_simple_rnn_cell_1_4649:	�0
while_simple_rnn_cell_1_4651:
����/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1_4647_0while_simple_rnn_cell_1_4649_0while_simple_rnn_cell_1_4651_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_461221
/while/simple_rnn_cell_1/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_1_4647while_simple_rnn_cell_1_4647_0">
while_simple_rnn_cell_1_4649while_simple_rnn_cell_1_4649_0">
while_simple_rnn_cell_1_4651while_simple_rnn_cell_1_4651_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�1
�
__inference__traced_save_6862
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableopL
Hsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopV
Rsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopJ
Fsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableopHsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopRsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopFsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapesx
v: :	�:: : : : : :
��:
��:�: : : : :	�::
��:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 
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
: :&"
 
_output_shapes
:
��:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�: 

_output_shapes
::&"
 
_output_shapes
:
��:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: 
�s
�
__inference__wrapped_model_4542
simple_rnn_inputZ
Fsequential_simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource:
��V
Gsequential_simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource:	�\
Hsequential_simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource:
��B
/sequential_dense_matmul_readvariableop_resource:	�>
0sequential_dense_biasadd_readvariableop_resource:
identity��'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�>sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�=sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�?sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�sequential/simple_rnn/whilez
sequential/simple_rnn/ShapeShapesimple_rnn_input*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape�
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/simple_rnn/strided_slice/stack�
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_1�
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_2�
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/simple_rnn/strided_slice�
!sequential/simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2#
!sequential/simple_rnn/zeros/mul/y�
sequential/simple_rnn/zeros/mulMul,sequential/simple_rnn/strided_slice:output:0*sequential/simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/zeros/mul�
"sequential/simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential/simple_rnn/zeros/Less/y�
 sequential/simple_rnn/zeros/LessLess#sequential/simple_rnn/zeros/mul:z:0+sequential/simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/zeros/Less�
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential/simple_rnn/zeros/packed/1�
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/simple_rnn/zeros/packed�
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/simple_rnn/zeros/Const�
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
sequential/simple_rnn/zeros�
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/simple_rnn/transpose/perm�
sequential/simple_rnn/transpose	Transposesimple_rnn_input-sequential/simple_rnn/transpose/perm:output:0*
T0*-
_output_shapes
:�	����������2!
sequential/simple_rnn/transpose�
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape_1�
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_1/stack�
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_1�
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_2�
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_1�
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential/simple_rnn/TensorArrayV2/element_shape�
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/simple_rnn/TensorArrayV2�
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2M
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor�
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_2/stack�
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_1�
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_2�
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_2�
=sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02?
=sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�
.sequential/simple_rnn/simple_rnn_cell_1/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Esequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential/simple_rnn/simple_rnn_cell_1/MatMul�
>sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpGsequential_simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02@
>sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
/sequential/simple_rnn/simple_rnn_cell_1/BiasAddBiasAdd8sequential/simple_rnn/simple_rnn_cell_1/MatMul:product:0Fsequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential/simple_rnn/simple_rnn_cell_1/BiasAdd�
?sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpHsequential_simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02A
?sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
0sequential/simple_rnn/simple_rnn_cell_1/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Gsequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential/simple_rnn/simple_rnn_cell_1/MatMul_1�
+sequential/simple_rnn/simple_rnn_cell_1/addAddV28sequential/simple_rnn/simple_rnn_cell_1/BiasAdd:output:0:sequential/simple_rnn/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2-
+sequential/simple_rnn/simple_rnn_cell_1/add�
,sequential/simple_rnn/simple_rnn_cell_1/TanhTanh/sequential/simple_rnn/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2.
,sequential/simple_rnn/simple_rnn_cell_1/Tanh�
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  25
3sequential/simple_rnn/TensorArrayV2_1/element_shape�
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/simple_rnn/TensorArrayV2_1z
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/simple_rnn/time�
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential/simple_rnn/while/maximum_iterations�
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/simple_rnn/while/loop_counter�
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resourceGsequential_simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resourceHsequential_simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%sequential_simple_rnn_while_body_4469*1
cond)R'
%sequential_simple_rnn_while_cond_4468*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
sequential/simple_rnn/while�
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2H
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02:
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStack�
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential/simple_rnn/strided_slice_3/stack�
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn/strided_slice_3/stack_1�
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_3/stack_2�
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_3�
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn/transpose_1/perm�
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2#
!sequential/simple_rnn/transpose_1�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02(
&sequential/dense/MatMul/ReadVariableOp�
sequential/dense/MatMulMatMul.sequential/simple_rnn/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/MatMul�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/BiasAdd�
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential/dense/Sigmoidw
IdentityIdentitysequential/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp?^sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp@^sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp^sequential/simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2�
>sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp>sequential/simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp2�
?sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp?sequential/simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
�
�
)__inference_simple_rnn_layer_call_fn_6591
inputs_0
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_49162
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�

�
simple_rnn_while_cond_59092
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1H
Dsimple_rnn_while_simple_rnn_while_cond_5909___redundant_placeholder0H
Dsimple_rnn_while_simple_rnn_while_cond_5909___redundant_placeholder1H
Dsimple_rnn_while_simple_rnn_while_cond_5909___redundant_placeholder2H
Dsimple_rnn_while_simple_rnn_while_cond_5909___redundant_placeholder3
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�U
�
 __inference__traced_restore_6929
file_prefix0
assignvariableop_dense_kernel:	�+
assignvariableop_1_dense_bias:)
assignvariableop_2_rmsprop_iter:	 *
 assignvariableop_3_rmsprop_decay: 2
(assignvariableop_4_rmsprop_learning_rate: -
#assignvariableop_5_rmsprop_momentum: (
assignvariableop_6_rmsprop_rho: H
4assignvariableop_7_simple_rnn_simple_rnn_cell_kernel:
��R
>assignvariableop_8_simple_rnn_simple_rnn_cell_recurrent_kernel:
��A
2assignvariableop_9_simple_rnn_simple_rnn_cell_bias:	�#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: ?
,assignvariableop_14_rmsprop_dense_kernel_rms:	�8
*assignvariableop_15_rmsprop_dense_bias_rms:U
Aassignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms:
��_
Kassignvariableop_17_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms:
��N
?assignvariableop_18_rmsprop_simple_rnn_simple_rnn_cell_bias_rms:	�
identity_20��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_rmsprop_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_rmsprop_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_rmsprop_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_rmsprop_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_rmsprop_rhoIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp4assignvariableop_7_simple_rnn_simple_rnn_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp>assignvariableop_8_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp2assignvariableop_9_simple_rnn_simple_rnn_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp,assignvariableop_14_rmsprop_dense_kernel_rmsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_rmsprop_dense_bias_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpAassignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_kernel_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpKassignvariableop_17_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp?assignvariableop_18_rmsprop_simple_rnn_simple_rnn_cell_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_189
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_19f
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_20�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
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
�	
�
)__inference_sequential_layer_call_fn_5618
simple_rnn_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_55902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
�=
�
simple_rnn_while_body_57732
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0W
Csimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��S
Dsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�Y
Esimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorU
Asimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource:
��Q
Bsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�W
Csimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02:
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
)simple_rnn/while/simple_rnn_cell_1/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0@simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)simple_rnn/while/simple_rnn_cell_1/MatMul�
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02;
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
*simple_rnn/while/simple_rnn_cell_1/BiasAddBiasAdd3simple_rnn/while/simple_rnn_cell_1/MatMul:product:0Asimple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*simple_rnn/while/simple_rnn_cell_1/BiasAdd�
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02<
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
+simple_rnn/while/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_while_placeholder_2Bsimple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+simple_rnn/while/simple_rnn_cell_1/MatMul_1�
&simple_rnn/while/simple_rnn_cell_1/addAddV23simple_rnn/while/simple_rnn_cell_1/BiasAdd:output:05simple_rnn/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&simple_rnn/while/simple_rnn_cell_1/add�
'simple_rnn/while/simple_rnn_cell_1/TanhTanh*simple_rnn/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2)
'simple_rnn/while/simple_rnn_cell_1/Tanh�
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder+simple_rnn/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y�
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1�
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity�
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1�
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2�
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3�
simple_rnn/while/Identity_4Identity+simple_rnn/while/simple_rnn_cell_1/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:����������2
simple_rnn/while/Identity_4�
simple_rnn/while/NoOpNoOp:^simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp9^simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp;^simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
simple_rnn/while/NoOp"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"�
Bsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resourceDsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Csimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceEsimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2v
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp2x
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�a
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4916

inputs*
simple_rnn_cell_1_4823:
��%
simple_rnn_cell_1_4825:	�*
simple_rnn_cell_1_4827:
��
identity��)simple_rnn_cell_1/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_4823simple_rnn_cell_1_4825simple_rnn_cell_1_4827*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_47682+
)simple_rnn_cell_1/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_4823simple_rnn_cell_1_4825simple_rnn_cell_1_4827*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_4835*
condR
while_cond_4834*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4823* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4827* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4825*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�I
�
%sequential_simple_rnn_while_body_4469H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0�
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0b
Nsequential_simple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��^
Osequential_simple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�d
Psequential_simple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor`
Lsequential_simple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource:
��\
Msequential_simple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�b
Nsequential_simple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����Dsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�Csequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�Esequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2O
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02A
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
Csequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02E
Csequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
4sequential/simple_rnn/while/simple_rnn_cell_1/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Ksequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������26
4sequential/simple_rnn/while/simple_rnn_cell_1/MatMul�
Dsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpOsequential_simple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02F
Dsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
5sequential/simple_rnn/while/simple_rnn_cell_1/BiasAddBiasAdd>sequential/simple_rnn/while/simple_rnn_cell_1/MatMul:product:0Lsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������27
5sequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd�
Esequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpPsequential_simple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02G
Esequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
6sequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_2Msequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������28
6sequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1�
1sequential/simple_rnn/while/simple_rnn_cell_1/addAddV2>sequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd:output:0@sequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������23
1sequential/simple_rnn/while/simple_rnn_cell_1/add�
2sequential/simple_rnn/while/simple_rnn_cell_1/TanhTanh5sequential/simple_rnn/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������24
2sequential/simple_rnn/while/simple_rnn_cell_1/Tanh�
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder6sequential/simple_rnn/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem�
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/simple_rnn/while/add/y�
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/while/add�
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/simple_rnn/while/add_1/y�
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn/while/add_1�
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity�
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_1�
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_2�
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_3�
&sequential/simple_rnn/while/Identity_4Identity6sequential/simple_rnn/while/simple_rnn_cell_1/Tanh:y:0!^sequential/simple_rnn/while/NoOp*
T0*(
_output_shapes
:����������2(
&sequential/simple_rnn/while/Identity_4�
 sequential/simple_rnn/while/NoOpNoOpE^sequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOpF^sequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential/simple_rnn/while/NoOp"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"�
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"�
Msequential_simple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resourceOsequential_simple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Nsequential_simple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resourcePsequential_simple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Lsequential_simple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2�
Dsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpDsequential/simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2�
Csequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp2�
Esequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpEsequential/simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�1
�
while_body_5236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
?__inference_dense_layer_call_and_return_conditional_losses_5339

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
)__inference_sequential_layer_call_fn_6016

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_53642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�
�
while_cond_4624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4624___redundant_placeholder02
.while_while_cond_4624___redundant_placeholder12
.while_while_cond_4624___redundant_placeholder22
.while_while_cond_4624___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_6224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6224___redundant_placeholder02
.while_while_cond_6224___redundant_placeholder12
.while_while_cond_6224___redundant_placeholder22
.while_while_cond_6224___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_simple_rnn_layer_call_fn_6580
inputs_0
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_47062
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�
�
while_cond_6094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6094___redundant_placeholder02
.while_while_cond_6094___redundant_placeholder12
.while_while_cond_6094___redundant_placeholder22
.while_while_cond_6094___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6439

inputsD
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:�	����������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6355*
condR
while_cond_6354*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�5
�
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4612

inputs

states2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������2
Tanh�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identity_1�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
while_cond_6354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6354___redundant_placeholder02
.while_while_cond_6354___redundant_placeholder12
.while_while_cond_6354___redundant_placeholder22
.while_while_cond_6354___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�1
�
while_body_6225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_5445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5445___redundant_placeholder02
.while_while_cond_5445___redundant_placeholder12
.while_while_cond_5445___redundant_placeholder22
.while_while_cond_5445___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�5
�
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_4768

inputs

states2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������2
Tanh�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identity_1�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
?__inference_dense_layer_call_and_return_conditional_losses_6624

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
while_body_4835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_simple_rnn_cell_1_4857_0:
��-
while_simple_rnn_cell_1_4859_0:	�2
while_simple_rnn_cell_1_4861_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_4857:
��+
while_simple_rnn_cell_1_4859:	�0
while_simple_rnn_cell_1_4861:
����/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1_4857_0while_simple_rnn_cell_1_4859_0while_simple_rnn_cell_1_4861_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_476821
/while/simple_rnn_cell_1/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_1_4857while_simple_rnn_cell_1_4857_0">
while_simple_rnn_cell_1_4859while_simple_rnn_cell_1_4859_0">
while_simple_rnn_cell_1_4861while_simple_rnn_cell_1_4861_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�1
�
D__inference_sequential_layer_call_and_return_conditional_losses_5364

inputs#
simple_rnn_5321:
��
simple_rnn_5323:	�#
simple_rnn_5325:
��

dense_5340:	�

dense_5342:
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_5321simple_rnn_5323simple_rnn_5325*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_53202$
"simple_rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_5340
dense_5342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_53392
dense/StatefulPartitionedCall�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5321* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5325* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5323*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mul�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�1
�
D__inference_sequential_layer_call_and_return_conditional_losses_5590

inputs#
simple_rnn_5559:
��
simple_rnn_5561:	�#
simple_rnn_5563:
��

dense_5566:	�

dense_5568:
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_5559simple_rnn_5561simple_rnn_5563*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_55302$
"simple_rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_5566
dense_5568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_53392
dense/StatefulPartitionedCall�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5559* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5563* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5561*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mul�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5530

inputsD
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:�	����������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_5446*
condR
while_cond_5445*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�a
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4706

inputs*
simple_rnn_cell_1_4613:
��%
simple_rnn_cell_1_4615:	�*
simple_rnn_cell_1_4617:
��
identity��)simple_rnn_cell_1/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_4613simple_rnn_cell_1_4615simple_rnn_cell_1_4617*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_46122+
)simple_rnn_cell_1/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_4613simple_rnn_cell_1_4615simple_rnn_cell_1_4617*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_4625*
condR
while_cond_4624*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4613* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4617* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_1_4615*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6569

inputsD
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:�	����������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6485*
condR
while_cond_6484*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�1
�
D__inference_sequential_layer_call_and_return_conditional_losses_5652
simple_rnn_input#
simple_rnn_5621:
��
simple_rnn_5623:	�#
simple_rnn_5625:
��

dense_5628:	�

dense_5630:
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_5621simple_rnn_5623simple_rnn_5625*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_53202$
"simple_rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_5628
dense_5630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_53392
dense/StatefulPartitionedCall�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5621* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5625* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_5623*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mul�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
�1
�
while_body_6485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
__inference_loss_fn_0_6760W
Csimple_rnn_cell_1_kernel_regularizer_square_readvariableop_resource:
��
identity��:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCsimple_rnn_cell_1_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mulv
IdentityIdentity,simple_rnn_cell_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp
�=
�
simple_rnn_while_body_59102
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0W
Csimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��S
Dsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�Y
Esimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorU
Asimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource:
��Q
Bsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�W
Csimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02:
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
)simple_rnn/while/simple_rnn_cell_1/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0@simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)simple_rnn/while/simple_rnn_cell_1/MatMul�
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02;
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
*simple_rnn/while/simple_rnn_cell_1/BiasAddBiasAdd3simple_rnn/while/simple_rnn_cell_1/MatMul:product:0Asimple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*simple_rnn/while/simple_rnn_cell_1/BiasAdd�
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02<
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
+simple_rnn/while/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_while_placeholder_2Bsimple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+simple_rnn/while/simple_rnn_cell_1/MatMul_1�
&simple_rnn/while/simple_rnn_cell_1/addAddV23simple_rnn/while/simple_rnn_cell_1/BiasAdd:output:05simple_rnn/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&simple_rnn/while/simple_rnn_cell_1/add�
'simple_rnn/while/simple_rnn_cell_1/TanhTanh*simple_rnn/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2)
'simple_rnn/while/simple_rnn_cell_1/Tanh�
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder+simple_rnn/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y�
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1�
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity�
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1�
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2�
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3�
simple_rnn/while/Identity_4Identity+simple_rnn/while/simple_rnn_cell_1/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:����������2
simple_rnn/while/Identity_4�
simple_rnn/while/NoOpNoOp:^simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp9^simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp;^simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
simple_rnn/while/NoOp"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"�
Bsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resourceDsimple_rnn_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Csimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceEsimple_rnn_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2v
9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp9simple_rnn/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp8simple_rnn/while/simple_rnn_cell_1/MatMul/ReadVariableOp2x
:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:simple_rnn/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
)__inference_sequential_layer_call_fn_6031

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_55902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�
�
)__inference_simple_rnn_layer_call_fn_6602

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_53202
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�5
�
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6686

inputs
states_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������2
Tanh�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identity_1�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�1
�
while_body_5446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
)__inference_sequential_layer_call_fn_5377
simple_rnn_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_53642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
�
�
)__inference_simple_rnn_layer_call_fn_6613

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_55302
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
��
�
D__inference_sequential_layer_call_and_return_conditional_losses_5864

inputsO
;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource:
��K
<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource:	�Q
=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource:
��7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�simple_rnn/while�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpZ
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn/Shape�
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack�
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1�
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slices
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/mul/y�
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/Less/y�
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessy
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/packed/1�
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const�
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
simple_rnn/zeros�
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm�
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*-
_output_shapes
:�	����������2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1�
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack�
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1�
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1�
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&simple_rnn/TensorArrayV2/element_shape�
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2�
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor�
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack�
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1�
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
simple_rnn/strided_slice_2�
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype024
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�
#simple_rnn/simple_rnn_cell_1/MatMulMatMul#simple_rnn/strided_slice_2:output:0:simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#simple_rnn/simple_rnn_cell_1/MatMul�
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
$simple_rnn/simple_rnn_cell_1/BiasAddBiasAdd-simple_rnn/simple_rnn_cell_1/MatMul:product:0;simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$simple_rnn/simple_rnn_cell_1/BiasAdd�
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype026
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
%simple_rnn/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/zeros:output:0<simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%simple_rnn/simple_rnn_cell_1/MatMul_1�
 simple_rnn/simple_rnn_cell_1/addAddV2-simple_rnn/simple_rnn_cell_1/BiasAdd:output:0/simple_rnn/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 simple_rnn/simple_rnn_cell_1/add�
!simple_rnn/simple_rnn_cell_1/TanhTanh$simple_rnn/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2#
!simple_rnn/simple_rnn_cell_1/Tanh�
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2*
(simple_rnn/TensorArrayV2_1/element_shape�
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time�
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#simple_rnn/while/maximum_iterations�
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter�
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *&
bodyR
simple_rnn_while_body_5773*&
condR
simple_rnn_while_cond_5772*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
simple_rnn/while�
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack�
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 simple_rnn/strided_slice_3/stack�
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1�
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
simple_rnn/strided_slice_3�
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm�
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
simple_rnn/transpose_1�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMul#simple_rnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense/Sigmoid�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mull
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp4^simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp3^simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp5^simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn/while9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2j
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp2h
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp2l
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�5
�
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6721

inputs
states_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������2
Tanh�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������2

Identity_1�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
0__inference_simple_rnn_cell_1_layer_call_fn_6735

inputs
states_0
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_46122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5320

inputsD
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:�	����������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_5236*
condR
while_cond_5235*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:����������	�: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�
�
0__inference_simple_rnn_cell_1_layer_call_fn_6749

inputs
states_0
unknown:
��
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_47682
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�

�
simple_rnn_while_cond_57722
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1H
Dsimple_rnn_while_simple_rnn_while_cond_5772___redundant_placeholder0H
Dsimple_rnn_while_simple_rnn_while_cond_5772___redundant_placeholder1H
Dsimple_rnn_while_simple_rnn_while_cond_5772___redundant_placeholder2H
Dsimple_rnn_while_simple_rnn_while_cond_5772___redundant_placeholder3
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�m
�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6309
inputs_0D
0simple_rnn_cell_1_matmul_readvariableop_resource:
��@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
��
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6225*
condR
while_cond_6224*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�
�
while_cond_6484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6484___redundant_placeholder02
.while_while_cond_6484___redundant_placeholder12
.while_while_cond_6484___redundant_placeholder22
.while_while_cond_6484___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�1
�
while_body_6095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
__inference_loss_fn_2_6782P
Asimple_rnn_cell_1_bias_regularizer_square_readvariableop_resource:	�
identity��8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpAsimple_rnn_cell_1_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mult
IdentityIdentity*simple_rnn_cell_1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOp9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp
�
�
"__inference_signature_wrapper_5727
simple_rnn_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_45422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
-
_output_shapes
:����������	�
*
_user_specified_namesimple_rnn_input
��
�
D__inference_sequential_layer_call_and_return_conditional_losses_6001

inputsO
;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource:
��K
<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource:	�Q
=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource:
��7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�simple_rnn/while�8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpZ
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:2
simple_rnn/Shape�
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack�
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1�
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slices
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/mul/y�
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/Less/y�
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessy
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/packed/1�
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const�
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
simple_rnn/zeros�
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm�
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*-
_output_shapes
:�	����������2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1�
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack�
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1�
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1�
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&simple_rnn/TensorArrayV2/element_shape�
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2�
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor�
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack�
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1�
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
simple_rnn/strided_slice_2�
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype024
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp�
#simple_rnn/simple_rnn_cell_1/MatMulMatMul#simple_rnn/strided_slice_2:output:0:simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#simple_rnn/simple_rnn_cell_1/MatMul�
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
$simple_rnn/simple_rnn_cell_1/BiasAddBiasAdd-simple_rnn/simple_rnn_cell_1/MatMul:product:0;simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$simple_rnn/simple_rnn_cell_1/BiasAdd�
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype026
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
%simple_rnn/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/zeros:output:0<simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%simple_rnn/simple_rnn_cell_1/MatMul_1�
 simple_rnn/simple_rnn_cell_1/addAddV2-simple_rnn/simple_rnn_cell_1/BiasAdd:output:0/simple_rnn/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 simple_rnn/simple_rnn_cell_1/add�
!simple_rnn/simple_rnn_cell_1/TanhTanh$simple_rnn/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2#
!simple_rnn/simple_rnn_cell_1/Tanh�
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2*
(simple_rnn/TensorArrayV2_1/element_shape�
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time�
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#simple_rnn/while/maximum_iterations�
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter�
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *&
bodyR
simple_rnn_while_body_5910*&
condR
simple_rnn_while_cond_5909*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations 2
simple_rnn/while�
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:�	����������*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack�
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 simple_rnn/strided_slice_3/stack�
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1�
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
simple_rnn/strided_slice_3�
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm�
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*-
_output_shapes
:����������	�2
simple_rnn/transpose_1�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMul#simple_rnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense/Sigmoid�
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02<
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp�
+simple_rnn_cell_1/kernel/Regularizer/SquareSquareBsimple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2-
+simple_rnn_cell_1/kernel/Regularizer/Square�
*simple_rnn_cell_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2,
*simple_rnn_cell_1/kernel/Regularizer/Const�
(simple_rnn_cell_1/kernel/Regularizer/SumSum/simple_rnn_cell_1/kernel/Regularizer/Square:y:03simple_rnn_cell_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/Sum�
*simple_rnn_cell_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2,
*simple_rnn_cell_1/kernel/Regularizer/mul/x�
(simple_rnn_cell_1/kernel/Regularizer/mulMul3simple_rnn_cell_1/kernel/Regularizer/mul/x:output:01simple_rnn_cell_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(simple_rnn_cell_1/kernel/Regularizer/mul�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOp=simple_rnn_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp<simple_rnn_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp�
)simple_rnn_cell_1/bias/Regularizer/SquareSquare@simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2+
)simple_rnn_cell_1/bias/Regularizer/Square�
(simple_rnn_cell_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(simple_rnn_cell_1/bias/Regularizer/Const�
&simple_rnn_cell_1/bias/Regularizer/SumSum-simple_rnn_cell_1/bias/Regularizer/Square:y:01simple_rnn_cell_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/Sum�
(simple_rnn_cell_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2*
(simple_rnn_cell_1/bias/Regularizer/mul/x�
&simple_rnn_cell_1/bias/Regularizer/mulMul1simple_rnn_cell_1/bias/Regularizer/mul/x:output:0/simple_rnn_cell_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2(
&simple_rnn_cell_1/bias/Regularizer/mull
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp4^simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp3^simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp5^simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn/while9^simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp;^simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:����������	�: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2j
3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp3simple_rnn/simple_rnn_cell_1/BiasAdd/ReadVariableOp2h
2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp2simple_rnn/simple_rnn_cell_1/MatMul/ReadVariableOp2l
4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp4simple_rnn/simple_rnn_cell_1/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2t
8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp8simple_rnn_cell_1/bias/Regularizer/Square/ReadVariableOp2x
:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp:simple_rnn_cell_1/kernel/Regularizer/Square/ReadVariableOp2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:����������	�
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_6771a
Msimple_rnn_cell_1_recurrent_kernel_regularizer_square_readvariableop_resource:
��
identity��Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpReadVariableOpMsimple_rnn_cell_1_recurrent_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype02F
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp�
5simple_rnn_cell_1/recurrent_kernel/Regularizer/SquareSquareLsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��27
5simple_rnn_cell_1/recurrent_kernel/Regularizer/Square�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/Const�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/SumSum9simple_rnn_cell_1/recurrent_kernel/Regularizer/Square:y:0=simple_rnn_cell_1/recurrent_kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum�
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<26
4simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x�
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mulMul=simple_rnn_cell_1/recurrent_kernel/Regularizer/mul/x:output:0;simple_rnn_cell_1/recurrent_kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 24
2simple_rnn_cell_1/recurrent_kernel/Regularizer/mul�
IdentityIdentity6simple_rnn_cell_1/recurrent_kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOpE^simple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Dsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOpDsimple_rnn_cell_1/recurrent_kernel/Regularizer/Square/ReadVariableOp
�1
�
while_body_6355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0L
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:
��H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorJ
6while_simple_rnn_cell_1_matmul_readvariableop_resource:
��F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:����������2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:����������2
while/Identity_4�

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_dense_layer_call_fn_6633

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_53392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_4834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4834___redundant_placeholder02
.while_while_cond_4834___redundant_placeholder12
.while_while_cond_4834___redundant_placeholder22
.while_while_cond_4834___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
%sequential_simple_rnn_while_cond_4468H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_4468___redundant_placeholder0^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_4468___redundant_placeholder1^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_4468___redundant_placeholder2^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_4468___redundant_placeholder3(
$sequential_simple_rnn_while_identity
�
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/while/Less�
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_5235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5235___redundant_placeholder02
.while_while_cond_5235___redundant_placeholder12
.while_while_cond_5235___redundant_placeholder22
.while_while_cond_5235___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
simple_rnn_input?
"serving_default_simple_rnn_input:0����������	�9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:֮
�(
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
		keras_api
*J&call_and_return_all_conditional_losses
K_default_save_signature
L__call__"�&
_tf_keras_sequential�%{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1276, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "simple_rnn_input"}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "recurrent_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 6}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 300]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1276, 300]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1276, 300]}, "float32", "simple_rnn_input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1276, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "simple_rnn_input"}, "shared_object_id": 0}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "recurrent_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 6}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
�

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
*M&call_and_return_all_conditional_losses
N__call__"�
_tf_keras_rnn_layer�{"name": "simple_rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "recurrent_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 6}, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 8, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 300]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1276, 300]}}
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"�
_tf_keras_layer�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
�
iter
	decay
learning_rate
momentum
rho	rmsE	rmsF	rmsG	rmsH	rmsI"
oss_optimizer
,
Qserving_default"
signature_map
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
 non_trainable_variables

!layers
"layer_metrics
#metrics
	variables
$layer_regularization_losses
trainable_variables
regularization_losses
L__call__
K_default_save_signature
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�


kernel
recurrent_kernel
bias
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*R&call_and_return_all_conditional_losses
S__call__"�
_tf_keras_layer�{"name": "simple_rnn_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SimpleRNNCell", "config": {"name": "simple_rnn_cell_1", "trainable": true, "dtype": "float32", "units": 300, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "recurrent_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 6}, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 7}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
�
*non_trainable_variables

+states

,layers
-layer_metrics
.metrics
	variables
/layer_regularization_losses
trainable_variables
regularization_losses
N__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
:	�2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2layer_metrics
3metrics
	variables
4layer_regularization_losses
trainable_variables
regularization_losses
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
5:3
��2!simple_rnn/simple_rnn_cell/kernel
?:=
��2+simple_rnn/simple_rnn_cell/recurrent_kernel
.:,�2simple_rnn/simple_rnn_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
�
7non_trainable_variables

8layers
9layer_metrics
:metrics
&	variables
;layer_regularization_losses
'trainable_variables
(regularization_losses
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
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
�
	<total
	=count
>	variables
?	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
�
	@total
	Acount
B
_fn_kwargs
C	variables
D	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 14}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
:  (2total
:  (2count
.
<0
=1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
):'	�2RMSprop/dense/kernel/rms
": 2RMSprop/dense/bias/rms
?:=
��2-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
I:G
��27RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
8:6�2+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
�2�
D__inference_sequential_layer_call_and_return_conditional_losses_5864
D__inference_sequential_layer_call_and_return_conditional_losses_6001
D__inference_sequential_layer_call_and_return_conditional_losses_5652
D__inference_sequential_layer_call_and_return_conditional_losses_5686�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_4542�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *5�2
0�-
simple_rnn_input����������	�
�2�
)__inference_sequential_layer_call_fn_5377
)__inference_sequential_layer_call_fn_6016
)__inference_sequential_layer_call_fn_6031
)__inference_sequential_layer_call_fn_5618�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6179
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6309
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6439
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6569�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_simple_rnn_layer_call_fn_6580
)__inference_simple_rnn_layer_call_fn_6591
)__inference_simple_rnn_layer_call_fn_6602
)__inference_simple_rnn_layer_call_fn_6613�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_6624�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_dense_layer_call_fn_6633�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_5727simple_rnn_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6686
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6721�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_simple_rnn_cell_1_layer_call_fn_6735
0__inference_simple_rnn_cell_1_layer_call_fn_6749�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference_loss_fn_0_6760�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_6771�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_6782�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� �
__inference__wrapped_model_4542w?�<
5�2
0�-
simple_rnn_input����������	�
� "-�*
(
dense�
dense����������
?__inference_dense_layer_call_and_return_conditional_losses_6624]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� x
$__inference_dense_layer_call_fn_6633P0�-
&�#
!�
inputs����������
� "����������9
__inference_loss_fn_0_6760�

� 
� "� 9
__inference_loss_fn_1_6771�

� 
� "� 9
__inference_loss_fn_2_6782�

� 
� "� �
D__inference_sequential_layer_call_and_return_conditional_losses_5652wG�D
=�:
0�-
simple_rnn_input����������	�
p 

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_5686wG�D
=�:
0�-
simple_rnn_input����������	�
p

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_5864m=�:
3�0
&�#
inputs����������	�
p 

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_6001m=�:
3�0
&�#
inputs����������	�
p

 
� "%�"
�
0���������
� �
)__inference_sequential_layer_call_fn_5377jG�D
=�:
0�-
simple_rnn_input����������	�
p 

 
� "�����������
)__inference_sequential_layer_call_fn_5618jG�D
=�:
0�-
simple_rnn_input����������	�
p

 
� "�����������
)__inference_sequential_layer_call_fn_6016`=�:
3�0
&�#
inputs����������	�
p 

 
� "�����������
)__inference_sequential_layer_call_fn_6031`=�:
3�0
&�#
inputs����������	�
p

 
� "�����������
"__inference_signature_wrapper_5727�S�P
� 
I�F
D
simple_rnn_input0�-
simple_rnn_input����������	�"-�*
(
dense�
dense����������
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6686�^�[
T�Q
!�
inputs����������
(�%
#� 
states/0����������
p 
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
K__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_6721�^�[
T�Q
!�
inputs����������
(�%
#� 
states/0����������
p
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
0__inference_simple_rnn_cell_1_layer_call_fn_6735�^�[
T�Q
!�
inputs����������
(�%
#� 
states/0����������
p 
� "F�C
�
0����������
#� 
�
1/0�����������
0__inference_simple_rnn_cell_1_layer_call_fn_6749�^�[
T�Q
!�
inputs����������
(�%
#� 
states/0����������
p
� "F�C
�
0����������
#� 
�
1/0�����������
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6179P�M
F�C
5�2
0�-
inputs/0�������������������

 
p 

 
� "&�#
�
0����������
� �
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6309P�M
F�C
5�2
0�-
inputs/0�������������������

 
p

 
� "&�#
�
0����������
� �
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6439pA�>
7�4
&�#
inputs����������	�

 
p 

 
� "&�#
�
0����������
� �
D__inference_simple_rnn_layer_call_and_return_conditional_losses_6569pA�>
7�4
&�#
inputs����������	�

 
p

 
� "&�#
�
0����������
� �
)__inference_simple_rnn_layer_call_fn_6580rP�M
F�C
5�2
0�-
inputs/0�������������������

 
p 

 
� "������������
)__inference_simple_rnn_layer_call_fn_6591rP�M
F�C
5�2
0�-
inputs/0�������������������

 
p

 
� "������������
)__inference_simple_rnn_layer_call_fn_6602cA�>
7�4
&�#
inputs����������	�

 
p 

 
� "������������
)__inference_simple_rnn_layer_call_fn_6613cA�>
7�4
&�#
inputs����������	�

 
p

 
� "�����������