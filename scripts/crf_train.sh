python -u ./ner.py \
--architecture crf \
--bert_config_file ./bert-base-chinese \
--data_dir ./data \
--domain news*msra*weibo \
--train \
--dev \
--test \
--output_dir ./output \
--max_len 200 \
--tags_file ./data/tags.txt \
--train_batch_size 25 \
--learning_rate 5e-5 \
--crf_lr 0.0001 \
--epoch 30 \
--test_batch_size 1 \
--tensorboard ./output/logs \
--dropout 0.5 \
--seed 1
