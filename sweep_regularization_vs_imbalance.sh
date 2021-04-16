#!/bin/bash 
python run.py --multirun +experiment=cifar10_binary +logger.extra_tags="[reg-vs-imbalance]" seed=0 datamodule.num_undersample_per_train_class="[16, 4096]" model.class_weights="[256, 1]" optimizer.weight_decay=1.0,0.5,0.1,0.05,0.01
python run.py --multirun +experiment=cifar10_binary +logger.extra_tags="[reg-vs-imbalance]" seed=0 datamodule.num_undersample_per_train_class="[64, 4096]" model.class_weights="[64, 1]" optimizer.weight_decay=1.0,0.5,0.1,0.05,0.01
python run.py --multirun +experiment=cifar10_binary +logger.extra_tags="[reg-vs-imbalance]" seed=0 datamodule.num_undersample_per_train_class="[256, 4096]" model.class_weights="[16, 1]" optimizer.weight_decay=1.0,0.5,0.1,0.05,0.01
python run.py --multirun +experiment=cifar10_binary +logger.extra_tags="[reg-vs-imbalance]" seed=0 datamodule.num_undersample_per_train_class="[1024, 4096]" model.class_weights="[4, 1]" optimizer.weight_decay=1.0,0.5,0.1,0.05,0.01
python run.py --multirun +experiment=cifar10_binary +logger.extra_tags="[reg-vs-imbalance]" seed=0 datamodule.num_undersample_per_train_class="[4096, 4096]" model.class_weights="[1, 1]" optimizer.weight_decay=1.0,0.5,0.1,0.05,0.01
