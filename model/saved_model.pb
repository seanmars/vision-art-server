
þ
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*	1.0.0-rc22unknownÓî

global_step/Initializer/ConstConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_step
VariableV2*
	container *
shape: *
_class
loc:@global_step*
_output_shapes
: *
shared_name *
dtype0	
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/Const*
use_locking(*
_output_shapes
: *
T0	*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
_
input_palettePlaceholder*
shape: *
dtype0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
average_color/Reshape/shapeConst*!
valueB"ÿÿÿÿ      *
dtype0*
_output_shapes
:

average_color/ReshapeReshapeinput_paletteaverage_color/Reshape/shape*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
Tshape0
f
$average_color/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
¦
average_color/MeanMeanaverage_color/Reshape$average_color/Mean/reduction_indices*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
	keep_dims( 
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatConcatV2input_paletteaverage_color/Meanconcat/axis*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0
Á
>embedding/embedding_1/weights/Initializer/random_uniform/shapeConst*
valueB"      *0
_class&
$"loc:@embedding/embedding_1/weights*
dtype0*
_output_shapes
:
³
<embedding/embedding_1/weights/Initializer/random_uniform/minConst*
valueB
 *Ô¾*0
_class&
$"loc:@embedding/embedding_1/weights*
dtype0*
_output_shapes
: 
³
<embedding/embedding_1/weights/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *Ô>*0
_class&
$"loc:@embedding/embedding_1/weights*
dtype0

Fembedding/embedding_1/weights/Initializer/random_uniform/RandomUniformRandomUniform>embedding/embedding_1/weights/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*0
_class&
$"loc:@embedding/embedding_1/weights*
_output_shapes
:	

<embedding/embedding_1/weights/Initializer/random_uniform/subSub<embedding/embedding_1/weights/Initializer/random_uniform/max<embedding/embedding_1/weights/Initializer/random_uniform/min*0
_class&
$"loc:@embedding/embedding_1/weights*
_output_shapes
: *
T0
¥
<embedding/embedding_1/weights/Initializer/random_uniform/mulMulFembedding/embedding_1/weights/Initializer/random_uniform/RandomUniform<embedding/embedding_1/weights/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*0
_class&
$"loc:@embedding/embedding_1/weights

8embedding/embedding_1/weights/Initializer/random_uniformAdd<embedding/embedding_1/weights/Initializer/random_uniform/mul<embedding/embedding_1/weights/Initializer/random_uniform/min*0
_class&
$"loc:@embedding/embedding_1/weights*
_output_shapes
:	*
T0
Å
embedding/embedding_1/weights
VariableV2*
dtype0*
	container *
shape:	*0
_class&
$"loc:@embedding/embedding_1/weights*
shared_name *
_output_shapes
:	

$embedding/embedding_1/weights/AssignAssignembedding/embedding_1/weights8embedding/embedding_1/weights/Initializer/random_uniform*
_output_shapes
:	*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_1/weights*
use_locking(
©
"embedding/embedding_1/weights/readIdentityembedding/embedding_1/weights*0
_class&
$"loc:@embedding/embedding_1/weights*
_output_shapes
:	*
T0
®
.embedding/embedding_1/biases/Initializer/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    */
_class%
#!loc:@embedding/embedding_1/biases
»
embedding/embedding_1/biases
VariableV2*
_output_shapes	
:*
shared_name *
dtype0*
	container *
shape:*/
_class%
#!loc:@embedding/embedding_1/biases
û
#embedding/embedding_1/biases/AssignAssignembedding/embedding_1/biases.embedding/embedding_1/biases/Initializer/Const*
T0*
validate_shape(*/
_class%
#!loc:@embedding/embedding_1/biases*
use_locking(*
_output_shapes	
:
¢
!embedding/embedding_1/biases/readIdentityembedding/embedding_1/biases*
_output_shapes	
:*
T0*/
_class%
#!loc:@embedding/embedding_1/biases
«
embedding/embedding_1/MatMulMatMulconcat"embedding/embedding_1/weights/read*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( *
T0*
transpose_a( 
³
embedding/embedding_1/BiasAddBiasAddembedding/embedding_1/MatMul!embedding/embedding_1/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
t
embedding/embedding_1/ReluReluembedding/embedding_1/BiasAdd*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Á
>embedding/embedding_2/weights/Initializer/random_uniform/shapeConst*
valueB"      *0
_class&
$"loc:@embedding/embedding_2/weights*
dtype0*
_output_shapes
:
³
<embedding/embedding_2/weights/Initializer/random_uniform/minConst*0
_class&
$"loc:@embedding/embedding_2/weights*
dtype0*
_output_shapes
: *
valueB
 *×³Ý½
³
<embedding/embedding_2/weights/Initializer/random_uniform/maxConst*
valueB
 *×³Ý=*0
_class&
$"loc:@embedding/embedding_2/weights*
dtype0*
_output_shapes
: 

Fembedding/embedding_2/weights/Initializer/random_uniform/RandomUniformRandomUniform>embedding/embedding_2/weights/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*0
_class&
$"loc:@embedding/embedding_2/weights

<embedding/embedding_2/weights/Initializer/random_uniform/subSub<embedding/embedding_2/weights/Initializer/random_uniform/max<embedding/embedding_2/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*0
_class&
$"loc:@embedding/embedding_2/weights
¦
<embedding/embedding_2/weights/Initializer/random_uniform/mulMulFembedding/embedding_2/weights/Initializer/random_uniform/RandomUniform<embedding/embedding_2/weights/Initializer/random_uniform/sub*0
_class&
$"loc:@embedding/embedding_2/weights* 
_output_shapes
:
*
T0

8embedding/embedding_2/weights/Initializer/random_uniformAdd<embedding/embedding_2/weights/Initializer/random_uniform/mul<embedding/embedding_2/weights/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*0
_class&
$"loc:@embedding/embedding_2/weights
Ç
embedding/embedding_2/weights
VariableV2*
dtype0*
shape:
*
	container *0
_class&
$"loc:@embedding/embedding_2/weights*
shared_name * 
_output_shapes
:


$embedding/embedding_2/weights/AssignAssignembedding/embedding_2/weights8embedding/embedding_2/weights/Initializer/random_uniform*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_2/weights*
use_locking(* 
_output_shapes
:

ª
"embedding/embedding_2/weights/readIdentityembedding/embedding_2/weights*0
_class&
$"loc:@embedding/embedding_2/weights* 
_output_shapes
:
*
T0
®
.embedding/embedding_2/biases/Initializer/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    */
_class%
#!loc:@embedding/embedding_2/biases
»
embedding/embedding_2/biases
VariableV2*
dtype0*
	container *
shape:*/
_class%
#!loc:@embedding/embedding_2/biases*
shared_name *
_output_shapes	
:
û
#embedding/embedding_2/biases/AssignAssignembedding/embedding_2/biases.embedding/embedding_2/biases/Initializer/Const*/
_class%
#!loc:@embedding/embedding_2/biases*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(
¢
!embedding/embedding_2/biases/readIdentityembedding/embedding_2/biases*
_output_shapes	
:*
T0*/
_class%
#!loc:@embedding/embedding_2/biases
¿
embedding/embedding_2/MatMulMatMulembedding/embedding_1/Relu"embedding/embedding_2/weights/read*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( *
T0*
transpose_a( 
³
embedding/embedding_2/BiasAddBiasAddembedding/embedding_2/MatMul!embedding/embedding_2/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
t
embedding/embedding_2/ReluReluembedding/embedding_2/BiasAdd*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Á
>embedding/embedding_3/weights/Initializer/random_uniform/shapeConst*0
_class&
$"loc:@embedding/embedding_3/weights*
dtype0*
_output_shapes
:*
valueB"      
³
<embedding/embedding_3/weights/Initializer/random_uniform/minConst*0
_class&
$"loc:@embedding/embedding_3/weights*
dtype0*
_output_shapes
: *
valueB
 *×³Ý½
³
<embedding/embedding_3/weights/Initializer/random_uniform/maxConst*
valueB
 *×³Ý=*0
_class&
$"loc:@embedding/embedding_3/weights*
dtype0*
_output_shapes
: 

Fembedding/embedding_3/weights/Initializer/random_uniform/RandomUniformRandomUniform>embedding/embedding_3/weights/Initializer/random_uniform/shape*
dtype0*
seed2 *
T0*

seed *0
_class&
$"loc:@embedding/embedding_3/weights* 
_output_shapes
:


<embedding/embedding_3/weights/Initializer/random_uniform/subSub<embedding/embedding_3/weights/Initializer/random_uniform/max<embedding/embedding_3/weights/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@embedding/embedding_3/weights*
_output_shapes
: 
¦
<embedding/embedding_3/weights/Initializer/random_uniform/mulMulFembedding/embedding_3/weights/Initializer/random_uniform/RandomUniform<embedding/embedding_3/weights/Initializer/random_uniform/sub*
T0*0
_class&
$"loc:@embedding/embedding_3/weights* 
_output_shapes
:


8embedding/embedding_3/weights/Initializer/random_uniformAdd<embedding/embedding_3/weights/Initializer/random_uniform/mul<embedding/embedding_3/weights/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*0
_class&
$"loc:@embedding/embedding_3/weights
Ç
embedding/embedding_3/weights
VariableV2*
dtype0*
	container *
shape:
*0
_class&
$"loc:@embedding/embedding_3/weights* 
_output_shapes
:
*
shared_name 

$embedding/embedding_3/weights/AssignAssignembedding/embedding_3/weights8embedding/embedding_3/weights/Initializer/random_uniform*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_3/weights*
use_locking(* 
_output_shapes
:

ª
"embedding/embedding_3/weights/readIdentityembedding/embedding_3/weights*
T0*0
_class&
$"loc:@embedding/embedding_3/weights* 
_output_shapes
:

®
.embedding/embedding_3/biases/Initializer/ConstConst*
valueB*    */
_class%
#!loc:@embedding/embedding_3/biases*
dtype0*
_output_shapes	
:
»
embedding/embedding_3/biases
VariableV2*
shared_name *
_output_shapes	
:*
dtype0*
	container *
shape:*/
_class%
#!loc:@embedding/embedding_3/biases
û
#embedding/embedding_3/biases/AssignAssignembedding/embedding_3/biases.embedding/embedding_3/biases/Initializer/Const*
T0*
validate_shape(*/
_class%
#!loc:@embedding/embedding_3/biases*
use_locking(*
_output_shapes	
:
¢
!embedding/embedding_3/biases/readIdentityembedding/embedding_3/biases*/
_class%
#!loc:@embedding/embedding_3/biases*
_output_shapes	
:*
T0
¿
embedding/embedding_3/MatMulMatMulembedding/embedding_2/Relu"embedding/embedding_3/weights/read*
T0*
transpose_a( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( 
³
embedding/embedding_3/BiasAddBiasAddembedding/embedding_3/MatMul!embedding/embedding_3/biases/read*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
data_formatNHWC
t
embedding/embedding_3/ReluReluembedding/embedding_3/BiasAdd*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
©
2embedding/weights/Initializer/random_uniform/shapeConst*$
_class
loc:@embedding/weights*
dtype0*
_output_shapes
:*
valueB"      

0embedding/weights/Initializer/random_uniform/minConst*
valueB
 *ô]¾*$
_class
loc:@embedding/weights*
dtype0*
_output_shapes
: 

0embedding/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ô]>*$
_class
loc:@embedding/weights
õ
:embedding/weights/Initializer/random_uniform/RandomUniformRandomUniform2embedding/weights/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*$
_class
loc:@embedding/weights*
_output_shapes
:	
â
0embedding/weights/Initializer/random_uniform/subSub0embedding/weights/Initializer/random_uniform/max0embedding/weights/Initializer/random_uniform/min*
T0*$
_class
loc:@embedding/weights*
_output_shapes
: 
õ
0embedding/weights/Initializer/random_uniform/mulMul:embedding/weights/Initializer/random_uniform/RandomUniform0embedding/weights/Initializer/random_uniform/sub*$
_class
loc:@embedding/weights*
_output_shapes
:	*
T0
ç
,embedding/weights/Initializer/random_uniformAdd0embedding/weights/Initializer/random_uniform/mul0embedding/weights/Initializer/random_uniform/min*
T0*$
_class
loc:@embedding/weights*
_output_shapes
:	
­
embedding/weights
VariableV2*
shape:	*
	container *$
_class
loc:@embedding/weights*
_output_shapes
:	*
shared_name *
dtype0
Ü
embedding/weights/AssignAssignembedding/weights,embedding/weights/Initializer/random_uniform*
validate_shape(*$
_class
loc:@embedding/weights*
use_locking(*
_output_shapes
:	*
T0

embedding/weights/readIdentityembedding/weights*
_output_shapes
:	*
T0*$
_class
loc:@embedding/weights

"embedding/biases/Initializer/ConstConst*#
_class
loc:@embedding/biases*
dtype0*
_output_shapes
:*
valueB*    
¡
embedding/biases
VariableV2*
_output_shapes
:*
shared_name *
dtype0*
	container *
shape:*#
_class
loc:@embedding/biases
Ê
embedding/biases/AssignAssignembedding/biases"embedding/biases/Initializer/Const*
T0*
validate_shape(*#
_class
loc:@embedding/biases*
use_locking(*
_output_shapes
:
}
embedding/biases/readIdentityembedding/biases*
_output_shapes
:*
T0*#
_class
loc:@embedding/biases
¨
embedding_1/MatMulMatMulembedding/embedding_3/Reluembedding/weights/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( *
T0*
transpose_a( 

embedding_1/BiasAddBiasAddembedding_1/MatMulembedding/biases/read*
data_formatNHWC*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

initNoOp

init_all_tablesNoOp
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_23f3d091edfa499c80a2e6fb4c3dbda7/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ë
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*þ
valueôBñ	Bembedding/biasesBembedding/embedding_1/biasesBembedding/embedding_1/weightsBembedding/embedding_2/biasesBembedding/embedding_2/weightsBembedding/embedding_3/biasesBembedding/embedding_3/weightsBembedding/weightsBglobal_step
u
save/SaveV2/shape_and_slicesConst*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
å
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesembedding/biasesembedding/embedding_1/biasesembedding/embedding_1/weightsembedding/embedding_2/biasesembedding/embedding_2/weightsembedding/embedding_3/biasesembedding/embedding_3/weightsembedding/weightsglobal_step*
dtypes
2		

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
N*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
t
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*%
valueBBembedding/biases
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
ª
save/AssignAssignembedding/biasessave/RestoreV2*
_output_shapes
:*
T0*
validate_shape(*#
_class
loc:@embedding/biases*
use_locking(

save/RestoreV2_1/tensor_namesConst*1
value(B&Bembedding/embedding_1/biases*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ç
save/Assign_1Assignembedding/embedding_1/biasessave/RestoreV2_1*
validate_shape(*/
_class%
#!loc:@embedding/embedding_1/biases*
use_locking(*
_output_shapes	
:*
T0

save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*2
value)B'Bembedding/embedding_1/weights
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Í
save/Assign_2Assignembedding/embedding_1/weightssave/RestoreV2_2*0
_class&
$"loc:@embedding/embedding_1/weights*
use_locking(*
_output_shapes
:	*
T0*
validate_shape(

save/RestoreV2_3/tensor_namesConst*1
value(B&Bembedding/embedding_2/biases*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save/Assign_3Assignembedding/embedding_2/biasessave/RestoreV2_3*/
_class%
#!loc:@embedding/embedding_2/biases*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(

save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*2
value)B'Bembedding/embedding_2/weights
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Î
save/Assign_4Assignembedding/embedding_2/weightssave/RestoreV2_4*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_2/weights*
use_locking(* 
_output_shapes
:


save/RestoreV2_5/tensor_namesConst*1
value(B&Bembedding/embedding_3/biases*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
Ç
save/Assign_5Assignembedding/embedding_3/biasessave/RestoreV2_5*
T0*
validate_shape(*/
_class%
#!loc:@embedding/embedding_3/biases*
use_locking(*
_output_shapes	
:

save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*2
value)B'Bembedding/embedding_3/weights*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Î
save/Assign_6Assignembedding/embedding_3/weightssave/RestoreV2_6*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_3/weights*
use_locking(* 
_output_shapes
:

w
save/RestoreV2_7/tensor_namesConst*&
valueBBembedding/weights*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
µ
save/Assign_7Assignembedding/weightssave/RestoreV2_7*
validate_shape(*$
_class
loc:@embedding/weights*
use_locking(*
_output_shapes
:	*
T0
q
save/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
 
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
T0	*
validate_shape(*
_class
loc:@global_step*
use_locking(*
_output_shapes
: 
¨
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

init_1NoOp

init_all_tables_1NoOp
/

group_depsNoOp^init_1^init_all_tables_1
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_90f8e045a3924af7ba402afdd072f490/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Í
save_1/SaveV2/tensor_namesConst*
_output_shapes
:	*þ
valueôBñ	Bembedding/biasesBembedding/embedding_1/biasesBembedding/embedding_1/weightsBembedding/embedding_2/biasesBembedding/embedding_2/weightsBembedding/embedding_3/biasesBembedding/embedding_3/weightsBembedding/weightsBglobal_step*
dtype0
w
save_1/SaveV2/shape_and_slicesConst*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
í
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesembedding/biasesembedding/embedding_1/biasesembedding/embedding_1/weightsembedding/embedding_2/biasesembedding/embedding_2/weightsembedding/embedding_3/biasesembedding/embedding_3/weightsembedding/weightsglobal_step*
dtypes
2		

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*

axis *
N*
T0

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
v
save_1/RestoreV2/tensor_namesConst*%
valueBBembedding/biases*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
®
save_1/AssignAssignembedding/biasessave_1/RestoreV2*
_output_shapes
:*
T0*
validate_shape(*#
_class
loc:@embedding/biases*
use_locking(

save_1/RestoreV2_1/tensor_namesConst*1
value(B&Bembedding/embedding_1/biases*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ë
save_1/Assign_1Assignembedding/embedding_1/biasessave_1/RestoreV2_1*
validate_shape(*/
_class%
#!loc:@embedding/embedding_1/biases*
use_locking(*
_output_shapes	
:*
T0

save_1/RestoreV2_2/tensor_namesConst*2
value)B'Bembedding/embedding_1/weights*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ñ
save_1/Assign_2Assignembedding/embedding_1/weightssave_1/RestoreV2_2*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_1/weights*
use_locking(*
_output_shapes
:	

save_1/RestoreV2_3/tensor_namesConst*1
value(B&Bembedding/embedding_2/biases*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ë
save_1/Assign_3Assignembedding/embedding_2/biasessave_1/RestoreV2_3*
T0*
validate_shape(*/
_class%
#!loc:@embedding/embedding_2/biases*
use_locking(*
_output_shapes	
:

save_1/RestoreV2_4/tensor_namesConst*2
value)B'Bembedding/embedding_2/weights*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ò
save_1/Assign_4Assignembedding/embedding_2/weightssave_1/RestoreV2_4* 
_output_shapes
:
*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_2/weights*
use_locking(

save_1/RestoreV2_5/tensor_namesConst*1
value(B&Bembedding/embedding_3/biases*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Ë
save_1/Assign_5Assignembedding/embedding_3/biasessave_1/RestoreV2_5*
T0*
validate_shape(*/
_class%
#!loc:@embedding/embedding_3/biases*
use_locking(*
_output_shapes	
:

save_1/RestoreV2_6/tensor_namesConst*2
value)B'Bembedding/embedding_3/weights*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Ò
save_1/Assign_6Assignembedding/embedding_3/weightssave_1/RestoreV2_6* 
_output_shapes
:
*
T0*
validate_shape(*0
_class&
$"loc:@embedding/embedding_3/weights*
use_locking(
y
save_1/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBembedding/weights
l
#save_1/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
¹
save_1/Assign_7Assignembedding/weightssave_1/RestoreV2_7*
T0*
validate_shape(*$
_class
loc:@embedding/weights*
use_locking(*
_output_shapes
:	
s
save_1/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2	*
_output_shapes
:
¤
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2_8*
T0	*
validate_shape(*
_class
loc:@global_step*
use_locking(*
_output_shapes
: 
¼
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"¿
trainable_variables§¤
m
embedding/embedding_1/weights:0$embedding/embedding_1/weights/Assign$embedding/embedding_1/weights/read:0
j
embedding/embedding_1/biases:0#embedding/embedding_1/biases/Assign#embedding/embedding_1/biases/read:0
m
embedding/embedding_2/weights:0$embedding/embedding_2/weights/Assign$embedding/embedding_2/weights/read:0
j
embedding/embedding_2/biases:0#embedding/embedding_2/biases/Assign#embedding/embedding_2/biases/read:0
m
embedding/embedding_3/weights:0$embedding/embedding_3/weights/Assign$embedding/embedding_3/weights/read:0
j
embedding/embedding_3/biases:0#embedding/embedding_3/biases/Assign#embedding/embedding_3/biases/read:0
I
embedding/weights:0embedding/weights/Assignembedding/weights/read:0
F
embedding/biases:0embedding/biases/Assignembedding/biases/read:0"î
	variablesàÝ
7
global_step:0global_step/Assignglobal_step/read:0
m
embedding/embedding_1/weights:0$embedding/embedding_1/weights/Assign$embedding/embedding_1/weights/read:0
j
embedding/embedding_1/biases:0#embedding/embedding_1/biases/Assign#embedding/embedding_1/biases/read:0
m
embedding/embedding_2/weights:0$embedding/embedding_2/weights/Assign$embedding/embedding_2/weights/read:0
j
embedding/embedding_2/biases:0#embedding/embedding_2/biases/Assign#embedding/embedding_2/biases/read:0
m
embedding/embedding_3/weights:0$embedding/embedding_3/weights/Assign$embedding/embedding_3/weights/read:0
j
embedding/embedding_3/biases:0#embedding/embedding_3/biases/Assign#embedding/embedding_3/biases/read:0
I
embedding/weights:0embedding/weights/Assignembedding/weights/read:0
F
embedding/biases:0embedding/biases/Assignembedding/biases/read:0" 
global_step

global_step:0"
model_variablesï
ì
embedding/embedding_1/weights:0
embedding/embedding_1/biases:0
embedding/embedding_2/weights:0
embedding/embedding_2/biases:0
embedding/embedding_3/weights:0
embedding/embedding_3/biases:0
embedding/weights:0
embedding/biases:0" 
legacy_init_op


group_deps*
serving_default
0
inputs&
input_palette:0ÿÿÿÿÿÿÿÿÿ7
outputs,
embedding_1/BiasAdd:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict*À
4default_input_alternative:default_output_alternative
0
inputs&
input_palette:0ÿÿÿÿÿÿÿÿÿ7
outputs,
embedding_1/BiasAdd:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict