?	u;?ʃ4@u;?ʃ4@!u;?ʃ4@	8?ao???8?ao???!8?ao???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLu;?ʃ4@zVҊo?@1N?g\W??A?<HO?C??I)????B??Y??A?p???rEagerKernelExecute 0*	ObX9t]@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate?A$C????!????AJ@)Ɔn?ʭ?1????H@:Preprocessing2F
Iterator::Model??*????!??;K(?;@)?#???E??1?"c??J.@:Preprocessing2U
Iterator::Model::ParallelMapV2?#??????!k?׽?)@)?#??????1k?׽?)@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???dp???!???⁰'@)K?P???1?Y?i??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip6??Ϸ??!?	1?u R@)?t?? ?{?15?[2??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???)u?!`A?[C{@)???)u?1`A?[C{@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?lt?Oq??!?ea;BK@)BwI?Qc?1x?? @:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensorB???Da?!??bU????)B???Da?1??bU????:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice???1?Y?!<
@?x??)???1?Y?1<
@?x??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 62.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?30.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no98?ao???Iy?%?y?W@Qe*?!@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	zVҊo?@zVҊo?@!zVҊo?@      ??!       "	N?g\W??N?g\W??!N?g\W??*      ??!       2	?<HO?C???<HO?C??!?<HO?C??:	)????B??)????B??!)????B??B      ??!       J	??A?p?????A?p???!??A?p???R      ??!       Z	??A?p?????A?p???!??A?p???b      ??!       JGPUY8?ao???b qy?%?y?W@ye*?!@?"Q
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitchT?
I????!T?
I????"S
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad񉛪????!??y-J??"?
!sequential/dense/Tensordot/MatMulMatMul?lsמ?!, ??0"]
+SGD/SGD/update/ResourceApplyGradientDescentResourceApplyGradientDescentT?
I????!?`8f????"O
5gradient_tape/mean_squared_error/weighted_loss/Tile_1TileT?
I????! ?Y?????"_
-SGD/SGD/update_1/ResourceApplyGradientDescentResourceApplyGradientDescent????????!??n?[|??"T
6gradient_tape/sequential/dense/Tensordot/MatMul/MatMulMatMul????????!??M??0"(

div_no_nanDivNoNanK?Gظ\??!??F?S???"
Sum_2Sum?x??3??!??D??o??"A
#sequential/dense/Tensordot/GatherV2GatherV2?#??[>??!?VvC??Q      Y@Y&???[<@av??Q@qI?Z*?CR@y|??? @"?
both?Your program is POTENTIALLY input-bound because 62.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?30.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?73.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Turing)(: B 