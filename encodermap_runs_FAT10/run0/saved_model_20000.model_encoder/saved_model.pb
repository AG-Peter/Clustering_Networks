��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
.
Identity

input"T
output"T"	
Ttype
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring ��
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
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
~
Encoder_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameEncoder_0/kernel
w
$Encoder_0/kernel/Read/ReadVariableOpReadVariableOpEncoder_0/kernel* 
_output_shapes
:
��*
dtype0
u
Encoder_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameEncoder_0/bias
n
"Encoder_0/bias/Read/ReadVariableOpReadVariableOpEncoder_0/bias*
_output_shapes	
:�*
dtype0
~
Encoder_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameEncoder_1/kernel
w
$Encoder_1/kernel/Read/ReadVariableOpReadVariableOpEncoder_1/kernel* 
_output_shapes
:
��*
dtype0
u
Encoder_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameEncoder_1/bias
n
"Encoder_1/bias/Read/ReadVariableOpReadVariableOpEncoder_1/bias*
_output_shapes	
:�*
dtype0
w
Latent/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_nameLatent/kernel
p
!Latent/kernel/Read/ReadVariableOpReadVariableOpLatent/kernel*
_output_shapes
:	�*
dtype0
n
Latent/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameLatent/bias
g
Latent/bias/Read/ReadVariableOpReadVariableOpLatent/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*

$0
%1
&2* 
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

,serving_default* 
`Z
VARIABLE_VALUEEncoder_0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEEncoder_0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
$0* 
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEEncoder_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEEncoder_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
%0* 
�
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUELatent/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUELatent/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
&0* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
	
$0* 
* 
* 
* 
* 
	
%0* 
* 
* 
* 
* 
	
&0* 
* 
�
serving_default_Encoder_0_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Encoder_0_inputEncoder_0/kernelEncoder_0/biasEncoder_1/kernelEncoder_1/biasLatent/kernelLatent/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_87261
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$Encoder_0/kernel/Read/ReadVariableOp"Encoder_0/bias/Read/ReadVariableOp$Encoder_1/kernel/Read/ReadVariableOp"Encoder_1/bias/Read/ReadVariableOp!Latent/kernel/Read/ReadVariableOpLatent/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_87430
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEncoder_0/kernelEncoder_0/biasEncoder_1/kernelEncoder_1/biasLatent/kernelLatent/bias*
Tin
	2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_87458Һ
�
�
__inference_loss_fn_1_87378O
;encoder_1_kernel_regularizer_square_readvariableop_resource:
��
identity��2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;encoder_1_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$Encoder_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp
�
�
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
B__inference_Encoder_layer_call_and_return_conditional_losses_86899

inputs#
encoder_0_86830:
��
encoder_0_86832:	�#
encoder_1_86853:
��
encoder_1_86855:	�
latent_86875:	�
latent_86877:
identity��!Encoder_0/StatefulPartitionedCall�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�!Encoder_1/StatefulPartitionedCall�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/StatefulPartitionedCall�/Latent/kernel/Regularizer/Square/ReadVariableOp�
!Encoder_0/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_0_86830encoder_0_86832*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829�
!Encoder_1/StatefulPartitionedCallStatefulPartitionedCall*Encoder_0/StatefulPartitionedCall:output:0encoder_1_86853encoder_1_86855*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852�
Latent/StatefulPartitionedCallStatefulPartitionedCall*Encoder_1/StatefulPartitionedCall:output:0latent_86875latent_86877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_Latent_layer_call_and_return_conditional_losses_86874�
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_0_86830* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_1_86853* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOplatent_86875*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Latent/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Encoder_0/StatefulPartitionedCall3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp"^Encoder_1/StatefulPartitionedCall3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/StatefulPartitionedCall0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2F
!Encoder_0/StatefulPartitionedCall!Encoder_0/StatefulPartitionedCall2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2F
!Encoder_1/StatefulPartitionedCall!Encoder_1/StatefulPartitionedCall2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2@
Latent/StatefulPartitionedCallLatent/StatefulPartitionedCall2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_Encoder_0_layer_call_fn_87276

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_Latent_layer_call_and_return_conditional_losses_86874

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�/Latent/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp0^Latent/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�4
�
B__inference_Encoder_layer_call_and_return_conditional_losses_87242

inputs<
(encoder_0_matmul_readvariableop_resource:
��8
)encoder_0_biasadd_readvariableop_resource:	�<
(encoder_1_matmul_readvariableop_resource:
��8
)encoder_1_biasadd_readvariableop_resource:	�8
%latent_matmul_readvariableop_resource:	�4
&latent_biasadd_readvariableop_resource:
identity�� Encoder_0/BiasAdd/ReadVariableOp�Encoder_0/MatMul/ReadVariableOp�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp� Encoder_1/BiasAdd/ReadVariableOp�Encoder_1/MatMul/ReadVariableOp�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/BiasAdd/ReadVariableOp�Latent/MatMul/ReadVariableOp�/Latent/kernel/Regularizer/Square/ReadVariableOp�
Encoder_0/MatMul/ReadVariableOpReadVariableOp(encoder_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0~
Encoder_0/MatMulMatMulinputs'Encoder_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Encoder_0/BiasAdd/ReadVariableOpReadVariableOp)encoder_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder_0/BiasAddBiasAddEncoder_0/MatMul:product:0(Encoder_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
Encoder_0/TanhTanhEncoder_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Encoder_1/MatMul/ReadVariableOpReadVariableOp(encoder_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Encoder_1/MatMulMatMulEncoder_0/Tanh:y:0'Encoder_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Encoder_1/BiasAdd/ReadVariableOpReadVariableOp)encoder_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder_1/BiasAddBiasAddEncoder_1/MatMul:product:0(Encoder_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
Encoder_1/TanhTanhEncoder_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Latent/MatMul/ReadVariableOpReadVariableOp%latent_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Latent/MatMulMatMulEncoder_1/Tanh:y:0$Latent/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Latent/BiasAdd/ReadVariableOpReadVariableOp&latent_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Latent/BiasAddBiasAddLatent/MatMul:product:0%Latent/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(encoder_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(encoder_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%latent_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityLatent/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Encoder_0/BiasAdd/ReadVariableOp ^Encoder_0/MatMul/ReadVariableOp3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp!^Encoder_1/BiasAdd/ReadVariableOp ^Encoder_1/MatMul/ReadVariableOp3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/BiasAdd/ReadVariableOp^Latent/MatMul/ReadVariableOp0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2D
 Encoder_0/BiasAdd/ReadVariableOp Encoder_0/BiasAdd/ReadVariableOp2B
Encoder_0/MatMul/ReadVariableOpEncoder_0/MatMul/ReadVariableOp2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2D
 Encoder_1/BiasAdd/ReadVariableOp Encoder_1/BiasAdd/ReadVariableOp2B
Encoder_1/MatMul/ReadVariableOpEncoder_1/MatMul/ReadVariableOp2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2>
Latent/BiasAdd/ReadVariableOpLatent/BiasAdd/ReadVariableOp2<
Latent/MatMul/ReadVariableOpLatent/MatMul/ReadVariableOp2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
 __inference__wrapped_model_86805
encoder_0_inputD
0encoder_encoder_0_matmul_readvariableop_resource:
��@
1encoder_encoder_0_biasadd_readvariableop_resource:	�D
0encoder_encoder_1_matmul_readvariableop_resource:
��@
1encoder_encoder_1_biasadd_readvariableop_resource:	�@
-encoder_latent_matmul_readvariableop_resource:	�<
.encoder_latent_biasadd_readvariableop_resource:
identity��(Encoder/Encoder_0/BiasAdd/ReadVariableOp�'Encoder/Encoder_0/MatMul/ReadVariableOp�(Encoder/Encoder_1/BiasAdd/ReadVariableOp�'Encoder/Encoder_1/MatMul/ReadVariableOp�%Encoder/Latent/BiasAdd/ReadVariableOp�$Encoder/Latent/MatMul/ReadVariableOp�
'Encoder/Encoder_0/MatMul/ReadVariableOpReadVariableOp0encoder_encoder_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Encoder/Encoder_0/MatMulMatMulencoder_0_input/Encoder/Encoder_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(Encoder/Encoder_0/BiasAdd/ReadVariableOpReadVariableOp1encoder_encoder_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder/Encoder_0/BiasAddBiasAdd"Encoder/Encoder_0/MatMul:product:00Encoder/Encoder_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
Encoder/Encoder_0/TanhTanh"Encoder/Encoder_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'Encoder/Encoder_1/MatMul/ReadVariableOpReadVariableOp0encoder_encoder_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Encoder/Encoder_1/MatMulMatMulEncoder/Encoder_0/Tanh:y:0/Encoder/Encoder_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(Encoder/Encoder_1/BiasAdd/ReadVariableOpReadVariableOp1encoder_encoder_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder/Encoder_1/BiasAddBiasAdd"Encoder/Encoder_1/MatMul:product:00Encoder/Encoder_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
Encoder/Encoder_1/TanhTanh"Encoder/Encoder_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
$Encoder/Latent/MatMul/ReadVariableOpReadVariableOp-encoder_latent_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Encoder/Latent/MatMulMatMulEncoder/Encoder_1/Tanh:y:0,Encoder/Latent/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%Encoder/Latent/BiasAdd/ReadVariableOpReadVariableOp.encoder_latent_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Encoder/Latent/BiasAddBiasAddEncoder/Latent/MatMul:product:0-Encoder/Latent/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
IdentityIdentityEncoder/Latent/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^Encoder/Encoder_0/BiasAdd/ReadVariableOp(^Encoder/Encoder_0/MatMul/ReadVariableOp)^Encoder/Encoder_1/BiasAdd/ReadVariableOp(^Encoder/Encoder_1/MatMul/ReadVariableOp&^Encoder/Latent/BiasAdd/ReadVariableOp%^Encoder/Latent/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2T
(Encoder/Encoder_0/BiasAdd/ReadVariableOp(Encoder/Encoder_0/BiasAdd/ReadVariableOp2R
'Encoder/Encoder_0/MatMul/ReadVariableOp'Encoder/Encoder_0/MatMul/ReadVariableOp2T
(Encoder/Encoder_1/BiasAdd/ReadVariableOp(Encoder/Encoder_1/BiasAdd/ReadVariableOp2R
'Encoder/Encoder_1/MatMul/ReadVariableOp'Encoder/Encoder_1/MatMul/ReadVariableOp2N
%Encoder/Latent/BiasAdd/ReadVariableOp%Encoder/Latent/BiasAdd/ReadVariableOp2L
$Encoder/Latent/MatMul/ReadVariableOp$Encoder/Latent/MatMul/ReadVariableOp:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�
�
'__inference_Encoder_layer_call_fn_87158

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Encoder_layer_call_and_return_conditional_losses_87000o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_Encoder_layer_call_fn_87141

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Encoder_layer_call_and_return_conditional_losses_86899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_Encoder_1_layer_call_and_return_conditional_losses_87325

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_87367O
;encoder_0_kernel_regularizer_square_readvariableop_resource:
��
identity��2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;encoder_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$Encoder_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp
�	
�
'__inference_Encoder_layer_call_fn_87032
encoder_0_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Encoder_layer_call_and_return_conditional_losses_87000o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�*
�
B__inference_Encoder_layer_call_and_return_conditional_losses_87000

inputs#
encoder_0_86966:
��
encoder_0_86968:	�#
encoder_1_86971:
��
encoder_1_86973:	�
latent_86976:	�
latent_86978:
identity��!Encoder_0/StatefulPartitionedCall�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�!Encoder_1/StatefulPartitionedCall�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/StatefulPartitionedCall�/Latent/kernel/Regularizer/Square/ReadVariableOp�
!Encoder_0/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_0_86966encoder_0_86968*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829�
!Encoder_1/StatefulPartitionedCallStatefulPartitionedCall*Encoder_0/StatefulPartitionedCall:output:0encoder_1_86971encoder_1_86973*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852�
Latent/StatefulPartitionedCallStatefulPartitionedCall*Encoder_1/StatefulPartitionedCall:output:0latent_86976latent_86978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_Latent_layer_call_and_return_conditional_losses_86874�
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_0_86966* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_1_86971* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOplatent_86976*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Latent/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Encoder_0/StatefulPartitionedCall3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp"^Encoder_1/StatefulPartitionedCall3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/StatefulPartitionedCall0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2F
!Encoder_0/StatefulPartitionedCall!Encoder_0/StatefulPartitionedCall2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2F
!Encoder_1/StatefulPartitionedCall!Encoder_1/StatefulPartitionedCall2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2@
Latent/StatefulPartitionedCallLatent/StatefulPartitionedCall2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
!__inference__traced_restore_87458
file_prefix5
!assignvariableop_encoder_0_kernel:
��0
!assignvariableop_1_encoder_0_bias:	�7
#assignvariableop_2_encoder_1_kernel:
��0
!assignvariableop_3_encoder_1_bias:	�3
 assignvariableop_4_latent_kernel:	�,
assignvariableop_5_latent_bias:

identity_7��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_encoder_0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_encoder_0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_encoder_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_encoder_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_latent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_latent_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�*
�
B__inference_Encoder_layer_call_and_return_conditional_losses_87106
encoder_0_input#
encoder_0_87072:
��
encoder_0_87074:	�#
encoder_1_87077:
��
encoder_1_87079:	�
latent_87082:	�
latent_87084:
identity��!Encoder_0/StatefulPartitionedCall�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�!Encoder_1/StatefulPartitionedCall�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/StatefulPartitionedCall�/Latent/kernel/Regularizer/Square/ReadVariableOp�
!Encoder_0/StatefulPartitionedCallStatefulPartitionedCallencoder_0_inputencoder_0_87072encoder_0_87074*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829�
!Encoder_1/StatefulPartitionedCallStatefulPartitionedCall*Encoder_0/StatefulPartitionedCall:output:0encoder_1_87077encoder_1_87079*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852�
Latent/StatefulPartitionedCallStatefulPartitionedCall*Encoder_1/StatefulPartitionedCall:output:0latent_87082latent_87084*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_Latent_layer_call_and_return_conditional_losses_86874�
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_0_87072* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_1_87077* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOplatent_87082*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Latent/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Encoder_0/StatefulPartitionedCall3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp"^Encoder_1/StatefulPartitionedCall3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/StatefulPartitionedCall0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2F
!Encoder_0/StatefulPartitionedCall!Encoder_0/StatefulPartitionedCall2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2F
!Encoder_1/StatefulPartitionedCall!Encoder_1/StatefulPartitionedCall2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2@
Latent/StatefulPartitionedCallLatent/StatefulPartitionedCall2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�
�
A__inference_Latent_layer_call_and_return_conditional_losses_87356

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�/Latent/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp0^Latent/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_87261
encoder_0_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_86805o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�4
�
B__inference_Encoder_layer_call_and_return_conditional_losses_87200

inputs<
(encoder_0_matmul_readvariableop_resource:
��8
)encoder_0_biasadd_readvariableop_resource:	�<
(encoder_1_matmul_readvariableop_resource:
��8
)encoder_1_biasadd_readvariableop_resource:	�8
%latent_matmul_readvariableop_resource:	�4
&latent_biasadd_readvariableop_resource:
identity�� Encoder_0/BiasAdd/ReadVariableOp�Encoder_0/MatMul/ReadVariableOp�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp� Encoder_1/BiasAdd/ReadVariableOp�Encoder_1/MatMul/ReadVariableOp�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/BiasAdd/ReadVariableOp�Latent/MatMul/ReadVariableOp�/Latent/kernel/Regularizer/Square/ReadVariableOp�
Encoder_0/MatMul/ReadVariableOpReadVariableOp(encoder_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0~
Encoder_0/MatMulMatMulinputs'Encoder_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Encoder_0/BiasAdd/ReadVariableOpReadVariableOp)encoder_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder_0/BiasAddBiasAddEncoder_0/MatMul:product:0(Encoder_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
Encoder_0/TanhTanhEncoder_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Encoder_1/MatMul/ReadVariableOpReadVariableOp(encoder_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Encoder_1/MatMulMatMulEncoder_0/Tanh:y:0'Encoder_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Encoder_1/BiasAdd/ReadVariableOpReadVariableOp)encoder_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Encoder_1/BiasAddBiasAddEncoder_1/MatMul:product:0(Encoder_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
Encoder_1/TanhTanhEncoder_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Latent/MatMul/ReadVariableOpReadVariableOp%latent_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Latent/MatMulMatMulEncoder_1/Tanh:y:0$Latent/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Latent/BiasAdd/ReadVariableOpReadVariableOp&latent_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Latent/BiasAddBiasAddLatent/MatMul:product:0%Latent/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(encoder_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(encoder_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%latent_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityLatent/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Encoder_0/BiasAdd/ReadVariableOp ^Encoder_0/MatMul/ReadVariableOp3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp!^Encoder_1/BiasAdd/ReadVariableOp ^Encoder_1/MatMul/ReadVariableOp3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/BiasAdd/ReadVariableOp^Latent/MatMul/ReadVariableOp0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2D
 Encoder_0/BiasAdd/ReadVariableOp Encoder_0/BiasAdd/ReadVariableOp2B
Encoder_0/MatMul/ReadVariableOpEncoder_0/MatMul/ReadVariableOp2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2D
 Encoder_1/BiasAdd/ReadVariableOp Encoder_1/BiasAdd/ReadVariableOp2B
Encoder_1/MatMul/ReadVariableOpEncoder_1/MatMul/ReadVariableOp2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2>
Latent/BiasAdd/ReadVariableOpLatent/BiasAdd/ReadVariableOp2<
Latent/MatMul/ReadVariableOpLatent/MatMul/ReadVariableOp2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
B__inference_Encoder_layer_call_and_return_conditional_losses_87069
encoder_0_input#
encoder_0_87035:
��
encoder_0_87037:	�#
encoder_1_87040:
��
encoder_1_87042:	�
latent_87045:	�
latent_87047:
identity��!Encoder_0/StatefulPartitionedCall�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�!Encoder_1/StatefulPartitionedCall�2Encoder_1/kernel/Regularizer/Square/ReadVariableOp�Latent/StatefulPartitionedCall�/Latent/kernel/Regularizer/Square/ReadVariableOp�
!Encoder_0/StatefulPartitionedCallStatefulPartitionedCallencoder_0_inputencoder_0_87035encoder_0_87037*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829�
!Encoder_1/StatefulPartitionedCallStatefulPartitionedCall*Encoder_0/StatefulPartitionedCall:output:0encoder_1_87040encoder_1_87042*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852�
Latent/StatefulPartitionedCallStatefulPartitionedCall*Encoder_1/StatefulPartitionedCall:output:0latent_87045latent_87047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_Latent_layer_call_and_return_conditional_losses_86874�
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_0_87035* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2Encoder_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_1_87040* 
_output_shapes
:
��*
dtype0�
#Encoder_1/kernel/Regularizer/SquareSquare:Encoder_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_1/kernel/Regularizer/SumSum'Encoder_1/kernel/Regularizer/Square:y:0+Encoder_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_1/kernel/Regularizer/mulMul+Encoder_1/kernel/Regularizer/mul/x:output:0)Encoder_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOplatent_87045*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'Latent/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Encoder_0/StatefulPartitionedCall3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp"^Encoder_1/StatefulPartitionedCall3^Encoder_1/kernel/Regularizer/Square/ReadVariableOp^Latent/StatefulPartitionedCall0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2F
!Encoder_0/StatefulPartitionedCall!Encoder_0/StatefulPartitionedCall2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2F
!Encoder_1/StatefulPartitionedCall!Encoder_1/StatefulPartitionedCall2h
2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2Encoder_1/kernel/Regularizer/Square/ReadVariableOp2@
Latent/StatefulPartitionedCallLatent/StatefulPartitionedCall2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�
�
D__inference_Encoder_0_layer_call_and_return_conditional_losses_87293

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
'__inference_Encoder_layer_call_fn_86914
encoder_0_input
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_Encoder_layer_call_and_return_conditional_losses_86899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameEncoder_0_input
�
�
)__inference_Encoder_1_layer_call_fn_87308

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Encoder_1_layer_call_and_return_conditional_losses_86852p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_87389K
8latent_kernel_regularizer_square_readvariableop_resource:	�
identity��/Latent/kernel/Regularizer/Square/ReadVariableOp�
/Latent/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8latent_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 Latent/kernel/Regularizer/SquareSquare7Latent/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�p
Latent/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Latent/kernel/Regularizer/SumSum$Latent/kernel/Regularizer/Square:y:0(Latent/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
Latent/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Latent/kernel/Regularizer/mulMul(Latent/kernel/Regularizer/mul/x:output:0&Latent/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!Latent/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^Latent/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/Latent/kernel/Regularizer/Square/ReadVariableOp/Latent/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference__traced_save_87430
file_prefix/
+savev2_encoder_0_kernel_read_readvariableop-
)savev2_encoder_0_bias_read_readvariableop/
+savev2_encoder_1_kernel_read_readvariableop-
)savev2_encoder_1_bias_read_readvariableop,
(savev2_latent_kernel_read_readvariableop*
&savev2_latent_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_encoder_0_kernel_read_readvariableop)savev2_encoder_0_bias_read_readvariableop+savev2_encoder_1_kernel_read_readvariableop)savev2_encoder_1_bias_read_readvariableop(savev2_latent_kernel_read_readvariableop&savev2_latent_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*N
_input_shapes=
;: :
��:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: 
�
�
D__inference_Encoder_0_layer_call_and_return_conditional_losses_86829

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�2Encoder_0/kernel/Regularizer/Square/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
2Encoder_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Encoder_0/kernel/Regularizer/SquareSquare:Encoder_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"Encoder_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 Encoder_0/kernel/Regularizer/SumSum'Encoder_0/kernel/Regularizer/Square:y:0+Encoder_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"Encoder_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
 Encoder_0/kernel/Regularizer/mulMul+Encoder_0/kernel/Regularizer/mul/x:output:0)Encoder_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Encoder_0/kernel/Regularizer/Square/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2Encoder_0/kernel/Regularizer/Square/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_Latent_layer_call_fn_87340

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_Latent_layer_call_and_return_conditional_losses_86874o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
L
Encoder_0_input9
!serving_default_Encoder_0_input:0����������:
Latent0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�J
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_Encoder_layer_call_fn_86914
'__inference_Encoder_layer_call_fn_87141
'__inference_Encoder_layer_call_fn_87158
'__inference_Encoder_layer_call_fn_87032�
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
B__inference_Encoder_layer_call_and_return_conditional_losses_87200
B__inference_Encoder_layer_call_and_return_conditional_losses_87242
B__inference_Encoder_layer_call_and_return_conditional_losses_87069
B__inference_Encoder_layer_call_and_return_conditional_losses_87106�
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
�B�
 __inference__wrapped_model_86805Encoder_0_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
,serving_default"
signature_map
$:"
��2Encoder_0/kernel
:�2Encoder_0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_Encoder_0_layer_call_fn_87276�
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
D__inference_Encoder_0_layer_call_and_return_conditional_losses_87293�
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
$:"
��2Encoder_1/kernel
:�2Encoder_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
�
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_Encoder_1_layer_call_fn_87308�
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
D__inference_Encoder_1_layer_call_and_return_conditional_losses_87325�
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
 :	�2Latent/kernel
:2Latent/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
&0"
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_Latent_layer_call_fn_87340�
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
A__inference_Latent_layer_call_and_return_conditional_losses_87356�
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
__inference_loss_fn_0_87367�
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
__inference_loss_fn_1_87378�
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
__inference_loss_fn_2_87389�
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
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_signature_wrapper_87261Encoder_0_input"�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
%0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
&0"
trackable_list_wrapper
 "
trackable_dict_wrapper�
D__inference_Encoder_0_layer_call_and_return_conditional_losses_87293^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_Encoder_0_layer_call_fn_87276Q0�-
&�#
!�
inputs����������
� "������������
D__inference_Encoder_1_layer_call_and_return_conditional_losses_87325^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_Encoder_1_layer_call_fn_87308Q0�-
&�#
!�
inputs����������
� "������������
B__inference_Encoder_layer_call_and_return_conditional_losses_87069rA�>
7�4
*�'
Encoder_0_input����������
p 

 
� "%�"
�
0���������
� �
B__inference_Encoder_layer_call_and_return_conditional_losses_87106rA�>
7�4
*�'
Encoder_0_input����������
p

 
� "%�"
�
0���������
� �
B__inference_Encoder_layer_call_and_return_conditional_losses_87200i8�5
.�+
!�
inputs����������
p 

 
� "%�"
�
0���������
� �
B__inference_Encoder_layer_call_and_return_conditional_losses_87242i8�5
.�+
!�
inputs����������
p

 
� "%�"
�
0���������
� �
'__inference_Encoder_layer_call_fn_86914eA�>
7�4
*�'
Encoder_0_input����������
p 

 
� "�����������
'__inference_Encoder_layer_call_fn_87032eA�>
7�4
*�'
Encoder_0_input����������
p

 
� "�����������
'__inference_Encoder_layer_call_fn_87141\8�5
.�+
!�
inputs����������
p 

 
� "�����������
'__inference_Encoder_layer_call_fn_87158\8�5
.�+
!�
inputs����������
p

 
� "�����������
A__inference_Latent_layer_call_and_return_conditional_losses_87356]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� z
&__inference_Latent_layer_call_fn_87340P0�-
&�#
!�
inputs����������
� "�����������
 __inference__wrapped_model_86805t9�6
/�,
*�'
Encoder_0_input����������
� "/�,
*
Latent �
Latent���������:
__inference_loss_fn_0_87367�

� 
� "� :
__inference_loss_fn_1_87378�

� 
� "� :
__inference_loss_fn_2_87389�

� 
� "� �
#__inference_signature_wrapper_87261�L�I
� 
B�?
=
Encoder_0_input*�'
Encoder_0_input����������"/�,
*
Latent �
Latent���������