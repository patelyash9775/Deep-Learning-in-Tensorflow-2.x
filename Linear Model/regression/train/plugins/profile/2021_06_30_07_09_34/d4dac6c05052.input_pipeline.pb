	?t??? @?t??? @!?t??? @	HF(?? @HF(?? @!HF(?? @"?
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
	{?f?l?@{?f?l?@!{?f?l?@      ??!       "	?MF?a????MF?a???!?MF?a???*      ??!       2	????m??????m??!????m??:	???XlS?????XlS??!???XlS??B      ??!       J	?ꐛ????ꐛ???!?ꐛ???R      ??!       Z	?ꐛ????ꐛ???!?ꐛ???b      ??!       JGPUYHF(?? @b qfz??<V@y%?p ?@