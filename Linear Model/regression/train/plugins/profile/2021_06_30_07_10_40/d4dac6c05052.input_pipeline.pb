	cE?a8@cE?a8@!cE?a8@	??;???@??;???@!??;???@"?
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
	??????@??????@!??????@      ??!       "	?!?uq???!?uq??!?!?uq??*      ??!       2	.?!??u??.?!??u??!.?!??u??:	y:W????y:W????!y:W????B      ??!       J	%????%????!%????R      ??!       Z	%????%????!%????b      ??!       JGPUY??;???@b q_M??W@y?i}?Θ@