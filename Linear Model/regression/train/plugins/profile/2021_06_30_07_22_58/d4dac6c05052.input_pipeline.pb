	Ƨ ?@(@Ƨ ?@(@!Ƨ ?@(@	??ԡ?????ԡ???!??ԡ???"?
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
	?ګ?G%@?ګ?G%@!?ګ?G%@      ??!       "	)?[Z???)?[Z???!)?[Z???*      ??!       2	??????????????!???????:	g??67f??g??67f??!g??67f??B      ??!       J	?????*???????*??!?????*??R      ??!       Z	?????*???????*??!?????*??b      ??!       JGPUY??ԡ???b qOr?}X@y?????B??