	?????@?????@!?????@	#?'0???#?'0???!#?'0???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?????@֨?ht?@1I?H?]??A.??e?O??I???????YU?]=??rEagerKernelExecute 0*	A5^?I\]@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate??pY?Ͱ?!3?Tg??K@))??=$|??1?#??:.J@:Preprocessing2F
Iterator::Model?аu???!ݦ?~?8@)?R?!?u??1Y? ?	-@:Preprocessing2U
Iterator::Model::ParallelMapV2a?4??o??!?9M??Q$@)a?4??o??1?9M??Q$@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?9?ؗl??!Q\?询'@)??-?R??1?/?y@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??P???!?H?X??R@)?b.?z?18{?`S+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorIC??3t?!???N?@)IC??3t?1???N?@:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensor??xy:Wd?!??)?? @)??xy:Wd?1??)?? @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??ť*m??!?*?J*?L@)e????c?1d?8?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice????Y.[?!??;???)????Y.[?1??;???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 75.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9"?'0???I?[?L?X@Q?J?/?	@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	֨?ht?@֨?ht?@!֨?ht?@      ??!       "	I?H?]??I?H?]??!I?H?]??*      ??!       2	.??e?O??.??e?O??!.??e?O??:	??????????????!???????B      ??!       J	U?]=??U?]=??!U?]=??R      ??!       Z	U?]=??U?]=??!U?]=??b      ??!       JGPUY"?'0???b q?[?L?X@y?J?/?	@