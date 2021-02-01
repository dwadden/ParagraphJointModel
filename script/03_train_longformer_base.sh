python paragraph_joint/FEVER_joint_paragraph_dynamic.py \
    --repfile allenai/longformer-base-4096 \
    --bert_dim 768 \
    --max_sent_len 1024 \
    --epoch 2 \
    --checkpoint model/fever_longformer_base/fever_longformer_base_joint_paragraph_dynamic \
    --log_file log/fever_longformer_base/fever_longformer_base_joint_paragraph_performances.jsonl \
    --device 0
