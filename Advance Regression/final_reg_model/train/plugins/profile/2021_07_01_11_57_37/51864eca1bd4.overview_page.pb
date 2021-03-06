?	#1A??"@#1A??"@!#1A??"@	-??j?%@-??j?%@!-??j?%@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL#1A??"@??tp?@1??V	???Aq!??Fʮ?I?Y?w???Y{?\?&??rEagerKernelExecute 0*	????MZq@2f
/Iterator::Model::MaxIntraOpParallelism::BatchV2P??n???!?j]%/;W@)??o?h???1?oWׯR@:Preprocessing2o
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle ?2??֩?!???7_-2@)?2??֩?1???7_-2@:Preprocessing2F
Iterator::ModelX??V????!      Y@)46<?R??1jUc9h@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism??mU??!?T?4?X@)?/J?_???1'7???1	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 73.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9-??j?%@Ino:? oW@Q#k"?b?	@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??tp?@??tp?@!??tp?@      ??!       "	??V	?????V	???!??V	???*      ??!       2	q!??Fʮ?q!??Fʮ?!q!??Fʮ?:	?Y?w????Y?w???!?Y?w???B      ??!       J	{?\?&??{?\?&??!{?\?&??R      ??!       Z	{?\?&??{?\?&??!{?\?&??b      ??!       JGPUY-??j?%@b qno:? oW@y#k"?b?	@?">
 sequential/dense_features/concatConcatV2??!^?7??!??!^?7??"C
%gradient_tape/sequential/dense/MatMulMatMul?싨?٧?!ѰDn.??0"Q
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitch8?8???!??$???"s
Xsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhere???Ū??!??????"S
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad]?Y? e??!?/?o\???"[
@sequential/dense_features/City_indicator/to_sparse_input/indicesWherer???p??!q??j??"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam?a?a??!?? ???"5
sequential/dense/MatMulMatMul?s??;֕?!K???b??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????i??!k?ځ???"L
0sequential/dense_features/City_indicator/one_hotOneHot??p?PZ??!?M?&???Q      Y@YKKKKK?F@a?????4K@qOhw?D)?@y?lqN?.??"?
both?Your program is POTENTIALLY input-bound because 73.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?19.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?31.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Turing)(: B 