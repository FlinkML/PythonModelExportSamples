ÖŤ
ť
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	
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
-
Neg
x"T
y"T"
Ttype:
	2	
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
5
Pow
x"T
y"T
z"T"
Ttype:
	2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"TRAINING*1.0.12v1.0.0-65-g4763edf-dirtyŁ
D
xPlaceholder*
dtype0*
shape: *
_output_shapes
:
N
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
]
random_normal/shapeConst*
dtype0*
valueB:*
_output_shapes
:
W
random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
random_normal/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:
w
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*
_output_shapes
:
`
random_normalAddrandom_normal/mulrandom_normal/mean*
T0*
_output_shapes
:
r
weight
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:

weight/AssignAssignweightrandom_normal*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
:
_
weight/readIdentityweight*
_class
loc:@weight*
T0*
_output_shapes
:
_
random_normal_1/shapeConst*
dtype0*
valueB:*
_output_shapes
:
Y
random_normal_1/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
[
random_normal_1/stddevConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:
}
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0*
_output_shapes
:
f
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0*
_output_shapes
:
p
bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:

bias/AssignAssignbiasrandom_normal_1*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
:
Y
	bias/readIdentitybias*
_class
	loc:@bias*
T0*
_output_shapes
:
=
MulMulxweight/read*
T0*
_output_shapes
:
@
Y_predAddMul	bias/read*
T0*
_output_shapes
:
B
subSubY_predPlaceholder*
T0*
_output_shapes
:
J
Pow/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
2
RankRankPow*
T0*
_output_shapes
: 
M
range/startConst*
dtype0*
value	B : *
_output_shapes
: 
M
range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
SumSumPowrange*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
J
div/yConst*
dtype0*
valueB
 *  ĆB*
_output_shapes
: 
=
divRealDivSumdiv/y*
T0*
_output_shapes
:
[
gradients/ShapeShapediv*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
d
gradients/div_grad/ShapeShapeSum*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
´
(gradients/div_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_grad/Shapegradients/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
_
gradients/div_grad/RealDivRealDivgradients/Filldiv/y*
T0*
_output_shapes
:
Ł
gradients/div_grad/SumSumgradients/div_grad/RealDiv(gradients/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/div_grad/ReshapeReshapegradients/div_grad/Sumgradients/div_grad/Shape*
_output_shapes
:*
Tshape0*
T0
E
gradients/div_grad/NegNegSum*
T0*
_output_shapes
:
i
gradients/div_grad/RealDiv_1RealDivgradients/div_grad/Negdiv/y*
T0*
_output_shapes
:
o
gradients/div_grad/RealDiv_2RealDivgradients/div_grad/RealDiv_1div/y*
T0*
_output_shapes
:
n
gradients/div_grad/mulMulgradients/Fillgradients/div_grad/RealDiv_2*
T0*
_output_shapes
:
Ł
gradients/div_grad/Sum_1Sumgradients/div_grad/mul*gradients/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/div_grad/Reshape_1Reshapegradients/div_grad/Sum_1gradients/div_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
g
#gradients/div_grad/tuple/group_depsNoOp^gradients/div_grad/Reshape^gradients/div_grad/Reshape_1
Ë
+gradients/div_grad/tuple/control_dependencyIdentitygradients/div_grad/Reshape$^gradients/div_grad/tuple/group_deps*-
_class#
!loc:@gradients/div_grad/Reshape*
T0*
_output_shapes
:
Ď
-gradients/div_grad/tuple/control_dependency_1Identitygradients/div_grad/Reshape_1$^gradients/div_grad/tuple/group_deps*/
_class%
#!loc:@gradients/div_grad/Reshape_1*
T0*
_output_shapes
: 
d
gradients/Sum_grad/ShapeShapePow*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
out_type0*
T0*
_output_shapes
: 
k
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
out_type0*
T0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
`
gradients/Sum_grad/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ť
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
gradients/Sum_grad/Fill/valueConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
N
^
gradients/Sum_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/Sum_grad/ReshapeReshape+gradients/div_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:
d
gradients/Pow_grad/ShapeShapesub*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/Pow_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
´
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0*
_output_shapes
: 
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
Ą
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
_output_shapes
:*
Tshape0*
T0
a
gradients/Pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
E
gradients/Pow_grad/LogLogsub*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:

gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
T0*
_output_shapes
:
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0*
_output_shapes
:
Ľ
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
Ë
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*-
_class#
!loc:@gradients/Pow_grad/Reshape*
T0*
_output_shapes
:
Ď
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
T0*
_output_shapes
: 
g
gradients/sub_grad/ShapeShapeY_pred*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
gradients/sub_grad/Shape_1ShapePlaceholder*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
´
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_output_shapes
:*
Tshape0*
T0
¸
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ë
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
:
Ń
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes
:
g
gradients/Y_pred_grad/ShapeShapeMul*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
gradients/Y_pred_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
˝
+gradients/Y_pred_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Y_pred_grad/Shapegradients/Y_pred_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ş
gradients/Y_pred_grad/SumSum+gradients/sub_grad/tuple/control_dependency+gradients/Y_pred_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Y_pred_grad/ReshapeReshapegradients/Y_pred_grad/Sumgradients/Y_pred_grad/Shape*
_output_shapes
:*
Tshape0*
T0
ž
gradients/Y_pred_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency-gradients/Y_pred_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Y_pred_grad/Reshape_1Reshapegradients/Y_pred_grad/Sum_1gradients/Y_pred_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
p
&gradients/Y_pred_grad/tuple/group_depsNoOp^gradients/Y_pred_grad/Reshape ^gradients/Y_pred_grad/Reshape_1
×
.gradients/Y_pred_grad/tuple/control_dependencyIdentitygradients/Y_pred_grad/Reshape'^gradients/Y_pred_grad/tuple/group_deps*0
_class&
$"loc:@gradients/Y_pred_grad/Reshape*
T0*
_output_shapes
:
ß
0gradients/Y_pred_grad/tuple/control_dependency_1Identitygradients/Y_pred_grad/Reshape_1'^gradients/Y_pred_grad/tuple/group_deps*2
_class(
&$loc:@gradients/Y_pred_grad/Reshape_1*
T0*
_output_shapes
:
b
gradients/Mul_grad/ShapeShapex*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
gradients/Mul_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
´
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
}
gradients/Mul_grad/mulMul.gradients/Y_pred_grad/tuple/control_dependencyweight/read*
T0*
_output_shapes
:

gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
_output_shapes
:*
Tshape0*
T0
u
gradients/Mul_grad/mul_1Mulx.gradients/Y_pred_grad/tuple/control_dependency*
T0*
_output_shapes
:
Ľ
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
Ë
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
T0*
_output_shapes
:
Ó
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
T0*
_output_shapes
:
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 
ó
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
_class
loc:@weight*
use_locking( *
T0*
_output_shapes
:
đ
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate0gradients/Y_pred_grad/tuple/control_dependency_1*
_class
	loc:@bias*
use_locking( *
T0*
_output_shapes
:

GradientDescentNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
*
initNoOp^weight/Assign^bias/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_aca28a6da8af4fa29d186cc8a06669f6/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
m
save/SaveV2/tensor_namesConst*
dtype0*!
valueBBbiasBweight*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B *
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasweight*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
h
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBbias*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignbiassave/RestoreV2*
validate_shape(*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
:
l
save/RestoreV2_1/tensor_namesConst*
dtype0*
valueBBweight*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_1Assignweightsave/RestoreV2_1*
validate_shape(*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
:
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

GradientDescent"]
	variablesPN
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0"g
trainable_variablesPN
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0*H
linear>

linear_inputs
x
linear_outputs

Y_predlinear