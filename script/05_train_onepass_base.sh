python paragraph_joint/FEVER_joint_paragraph_dynamic.py \
    --repfile allenai/longformer-base-4096 \
    --bert_dim 768 \
    --max_sent_len 1024 \
    --model_type onepass \
    --epoch 2 \
    --checkpoint model/fever_onepass_base/fever_onepass_base \
    --log_file log/fever_onepass_base/fever_onepass_base_performances.jsonl \
    --device 1
