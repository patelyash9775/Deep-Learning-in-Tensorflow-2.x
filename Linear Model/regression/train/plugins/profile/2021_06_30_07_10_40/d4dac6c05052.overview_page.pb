?	cE?a8@cE?a8@!cE?a8@	??;???@??;???@!??;???@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLcE?a8@??????@1?!?uq??A.?!??u??Iy:W????Y%????rEagerKernelExecute 0*	?Zd;?Z@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate1?0&???!|?z:P?K@)]?Fx??1?a?K?I@:Preprocessing2F
Iterator::Model?f׽???!??{?7@)S??????1Fޛ?s?(@:Preprocessing2U
Iterator::Model::ParallelMapV2????N$??!ʷ?V?7&@)????N$??1ʷ?V?7&@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?8?Վ???!EE?S>?*@)??Qٰ???1MG?!+*!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip6X8I?Ǵ?!>!?S@)??OU??x?1P0???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^????wt?!???d&?@)^????wt?1???d&?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?jJ?G??! C????L@)????d?1E?G???@:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensor!V?a?b?!i????A@)!V?a?b?1i????A@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice?ꫫ?X?!?^o-????)?ꫫ?X?1?^o-????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 57.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?34.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??;???@I_M??W@Q?i}?Θ@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????@??????@!??????@      ??!       "	?!?uq???!?uq??!?!?uq??*      ??!       2	.?!??u??.?!??u??!.?!??u??:	y:W????y:W????!y:W????B      ??!       J	%????%????!%????R      ??!       Z	%????%????!%????b      ??!       JGPUY??;???@b q_M??W@y?i}?Θ@?"Q
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitchϙy)???!ϙy)???"S
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad?sEeT??!??v?6???"?
!sequential/dense/Tensordot/MatMulMatMulG?[4???!?FbY??0"*
div_no_nan_1DivNoNanϙy)???!Wvg???"]
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNanϙy)???!?6?lێ??"T
6gradient_tape/sequential/dense/Tensordot/MatMul/MatMulMatMulϙy)???!?i?q?L??0"A
#sequential/dense/Tensordot/GatherV2GatherV2વ8???!'Ktc ??"O
5gradient_tape/mean_squared_error/weighted_loss/Tile_1Tile????߆??!????H??"9
sequential/dense/Tensordot/ProdProd"良?^??!?lh2???"E
(gradient_tape/mean_squared_error/truedivRealDiv3 ??'??!??֬????Q      Y@Yjiiiii=@a??????Q@qy*Om?K@y ?Ρ ?@"?
both?Your program is POTENTIALLY input-bound because 57.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?34.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Turing)(: B 