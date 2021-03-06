?	?t??? @?t??? @!?t??? @	HF(?? @HF(?? @!HF(?? @"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?t??? @{?f?l?@1?MF?a???A????m??I???XlS??Y?ꐛ???rEagerKernelExecute 0*	R???yg@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenateߦ???"??!??g@?B@)K??z2???1??e?A@:Preprocessing2F
Iterator::Model??ʦ\??!??
4B@)????Ţ?1??9ޅ3@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???%????!?^&???O@)MLb?G??1?ǵu?0@:Preprocessing2U
Iterator::Model::ParallelMapV2????!CG?܉?0@)????1CG?܉?0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatq=
ףp??!>:?T??@)d??ǚ??1"a2?N@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????w?!\0tDʝ@)????w?1\0tDʝ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????????!?8?ڦC@)1]??ah?1vz?pZ??:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensor?P?yb?!ZY???5??)?P?yb?1ZY???5??:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice??+??a?!?啇i???)??+??a?1?啇i???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 8.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?18.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t69.7 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9HF(?? @Ifz??<V@Q%?p ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	{?f?l?@{?f?l?@!{?f?l?@      ??!       "	?MF?a????MF?a???!?MF?a???*      ??!       2	????m??????m??!????m??:	???XlS?????XlS??!???XlS??B      ??!       J	?ꐛ????ꐛ???!?ꐛ???R      ??!       Z	?ꐛ????ꐛ???!?ꐛ???b      ??!       JGPUYHF(?? @b qfz??<V@y%?p ?@?"S
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGradE??????!E??????"Q
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitch??z???!7/??d???"_
-SGD/SGD/update_1/ResourceApplyGradientDescentResourceApplyGradientDescentY?8ω>??!?(M?j??"
Sum_2SumY?8ω>??!?94????"T
6gradient_tape/sequential/dense/Tensordot/MatMul/MatMulMatMulY?8ω>??!K????0"=
$gradient_tape/mean_squared_error/subSubR(?|??!_5?8I??"O
5gradient_tape/mean_squared_error/weighted_loss/Tile_1Tile??c??U??!?X?'????"9
sequential/dense/Tensordot/ProdProd%o?~/??!?_??????"]
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNan?ր????!W??g?h??">
AssignAddVariableOp_2AssignAddVariableOpP?2,ؓ??!?????!??Q      Y@Yjiiiii=@a??????Q@q?
>Q?I@yο?c^?@"?
both?Your program is MODERATELY input-bound because 8.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?18.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t69.7 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?50.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Turing)(: B 