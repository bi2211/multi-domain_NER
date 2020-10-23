# multi-domain_NER

多领域NER。

## 文件目录

| 文件 | 描述 |
| :----: | :----: |
| _bert-base-chinese_ | BERT预训练模型文件（pytorch） |
| _data_ | 数据（train, dev, test, tags） |
| _ner.py_ | 多领域命名实体识别（pytorch） |

## 环境参数

python        3.6

torch         1.4.0 

torchvision   0.5.0

tensorboard   2.3.0 

tensorboardX  2.1

transformers  3.1.0

tqdm          4.49.0 

## 可选参数

| 参数 | 描述 | 解释 |
| :---- | :---- | :---- |
|-h, --help | show this help message and exit | |
|--train_file | TRAIN_FILE The training file path. | 训练数据 |
|--dev_file DEV_FILE |  The development file path. | 验证数据 |
|--test_file TEST_FILE | The testing file path. | 测试数据 |
|--class_file CLASS_FILE | The testing file path. | 标签数据 |
|--output_dir OUTPUT_DIR | The output folder path. | 输出文件夹 |
|--train_batch_size TRAIN_BATCH_SIZE | The number of sentences contained in a batch during training. | 训练的一批句子数 |
|--test_batch_size TEST_BATCH_SIZE |The number of sentences contained in a batch during testing. |验证或测试的一批句子数 |
|--epochs EPOCHS  | Total number of training epochs to perform. | 训练最大轮数 |
|--learning_rate LEARNING_RATE | The initial learning rate for Adam. | 学习率 |
|--max_len MAX_LEN | The Maximum length of a sentence. | 句子最大长度（如果实际句子过长则按照split集切分） |
|--keep_last_n_checkpoints KEEP_LAST_N_CHECKPOINTS | Keep the last n checkpoints. | 保留最后的几轮模型 | 
|--warmup_proportion WARMUP_PROPORTION |Proportion of training to perform linear learning rate warmup for. | warmup |
|--split SPLIT | Characters that segments a sentence. | 句子可以切分的字符（如标点） |
|--tensorboard_dir TENSORBOARD_DIR | The data address of the tensorboard. | Tensorboard路径 |
|--bert_config_file BERT_CONFIG_FILE | The config json file corresponding to the pre-trained BERT model. This specifies the model architecture. | BERT预训练模型 |
|--cpu  | Whether to use CPU, if not and CUDA is avaliable can use CPU. | 如果使用CPU |
|--seed SEED | random seed for initialization. | 随机种子 |

## 可选参数特殊说明

--train_file --dev_file --test_file 分别同时代表运行方式
>+ 只使用 __--train_file__ 则只训练到固定轮数，保存为最后的模型 *checkpoint-last.kpl*
>+ 若使用 __--train_file__ 和 __--dev_file__ 则会额外域保存在开发集上的最高分数的模型 *checkpoint-best.kpl*
>+ __--test-file__ 则为测试方式如存在 *checkpoint-best.kpl* 则使用该模型，否则使用 *checkpoint-last.kpl*

## 脚本样例

[./scripts/train.sh](https://github.com/newbieyd/multi-domain_NER/blob/yangdi/scripts/train.sh)
