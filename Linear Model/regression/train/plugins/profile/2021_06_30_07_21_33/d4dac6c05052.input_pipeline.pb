	??X??0@??X??0@!??X??0@	?&g?????&g????!?&g????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??X??0@J??%?*@1t\??J???A?U?bٰ?I5??6Ǝ	@Y:@0G?߫?rEagerKernelExecute 0*	??η<?@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate,G?@?@!<۬kg?W@)?N?z1?@1Iex???W@:Preprocessing2U
Iterator::Model::ParallelMapV2?ʠ??D??!?8?M??)?ʠ??D??1?8?M??:Preprocessing2F
Iterator::Model@7n1???!???CA @)?_??9??1?B??l???:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??lu9%@!????NX@)?ʆ5?E??1??x????:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatX?L??~??!?Ck?9???)h׿???1)v??????:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?QcB?%u?!S#???O??)?QcB?%u?1S#???O??:Preprocessing2?
NIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[1]::FromTensorTUh ??l?!?k?M???)TUh ??l?1?k?M???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMape9	?/?@!.*?}9X@)?X5s?g?1??;?GH??:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice????V?!p?q{#K??)????V?1p?q{#K??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 78.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?&g????I?C?6??X@Q?Pչ?;??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	J??%?*@J??%?*@!J??%?*@      ??!       "	t\??J???t\??J???!t\??J???*      ??!       2	?U?bٰ??U?bٰ?!?U?bٰ?:	5??6Ǝ	@5??6Ǝ	@!5??6Ǝ	@B      ??!       J	:@0G?߫?:@0G?߫?!:@0G?߫?R      ??!       Z	:@0G?߫?:@0G?߫?!:@0G?߫?b      ??!       JGPUY?&g????b q?C?6??X@y?Pչ?;??