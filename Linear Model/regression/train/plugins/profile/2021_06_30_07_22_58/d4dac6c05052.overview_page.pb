?	Ƨ ?@(@Ƨ ?@(@!Ƨ ?@(@	??ԡ?????ԡ???!??ԡ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLƧ ?@(@?ګ?G%@1)?[Z???A???????Ig??67f??Y?????*??rEagerKernelExecute 0*	?|?5^Ba@2U
Iterator::Model::ParallelMapV2???{????!}??٥?=@)???{????1}??٥?=@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate\w?T?ܤ?!;/q?=@)I+???٢?1?܇?:@:Preprocessing2F
Iterator::Model??Gq??!Ʃ???F@)?l;m???1h??*/@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?6?^???!?1????0@)Q/?4'/??1?????)@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip{?%9`W??!:VK?[K@)D??]L??1%ߋHdL@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/???ިu?!?uV~?@)/???ިu?1?uV~?@:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensora??>??d?!?'??l??)a??>??d?1?'??l??:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapc?????!??x??3?@)p?71$'c?1K}?d???:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice?k???V?!h?????)?k???V?1h?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?10.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??ԡ???IOr?}X@Q?????B??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ګ?G%@?ګ?G%@!?ګ?G%@      ??!       "	)?[Z???)?[Z???!)?[Z???*      ??!       2	??????????????!???????:	g??67f??g??67f??!g??67f??B      ??!       J	?????*???????*??!?????*??R      ??!       Z	?????*???????*??!?????*??b      ??!       JGPUY??ԡ???b qOr?}X@y?????B???"Q
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitch˄?T???!˄?T???"W
6gradient_tape/sequential_6/dense_6/BiasAdd/BiasAddGradBiasAddGradnۉ?????!ŸI?8???"G
)gradient_tape/sequential_6/dense_6/MatMulMatMul?8?'>??!???[&A??0"*
div_no_nan_1DivNoNanECU?????!W2?E???"=
$gradient_tape/mean_squared_error/MulMulECU?????!(?/r???"?
&gradient_tape/mean_squared_error/mul_1Mul?R?8???!ޗJ?v???"]
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNan?R?8???!Jֻ?=???"9
sequential_6/dense_6/BiasAddBiasAdd@????\??!R???ۣ??"K
$mean_squared_error/SquaredDifferenceSquaredDifference???{=\??!j?	?c???"D
&mean_squared_error/weighted_loss/valueDivNoNanѿM9lF??!d?31???Q      Y@Y"h8???@@a??c+??P@qI[???U@yr???7{@"?
both?Your program is POTENTIALLY input-bound because 87.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?10.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?87.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Turing)(: B 