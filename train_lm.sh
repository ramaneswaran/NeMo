# #!/bin/bash
# if [ -e /workspace/home/raman/indic_corpus/vocab_files/as-52000.txt ]
# then
#     echo "ok"
# else
#     echo "nok"
# fi


python examples/nlp/language_modeling/bert_pretraining.py \
    model.train_ds.data_file=/workspace/home/raman/indic_corpus/cleaned/as_train.txt \
    model.validation_ds.data_file=/workspace/home/raman/indic_corpus/cleaned/as_val.txt \
    model.train_ds.batch_size=2 \
    model.validation_ds.batch_size=2 \
    trainer.gpus=[2] \
    model.nemo_path='./bert.nemo' \
    model.language_model.pretrained_model_name=bert-base-uncased \
    model.language_model.config.vocab_size=52000 \
    model.tokenizer.vocab_file=/workspace/home/raman/indic_corpus/vocab_files/as-52000.txt \

#     model.language_model.pretrained_model_name=megatron-bert-345m-uncased \
#     model.tokenizer.vocab_file=/workspace/home/raman/vocab_files/hi-52000.txt \
#     model.language_model.lm_checkpoint=/workspace/home/raman/mod_model.pt
