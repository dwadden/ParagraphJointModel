python FEVER_joint_paragraph_dynamic.py \
    --train_file fever/fever_train_retrieved_5.jsonl \
    --test_file fever/fever_dev_retrieved_5.jsonl \
    --epoch 5 \
    --checkpoint model/fever_roberta_joint_paragraph_dynamic \
    --log_file log/fever_joint_paragraph_performances.jsonl
