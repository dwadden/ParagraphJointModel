# Evaluate trained FEVER model to confirm performance.

python paragraph_joint/FEVER_joint_paragraph_dynamic.py \
    --train_file "" \
    --test_file fever/fever_dev_retrieved_5.jsonl \
    --pre_trained_model model/fever_roberta/fever_roberta_joint_paragraph_dynamic_2.model \
    --checkpoint model/fever_roberta/fever_roberta_eval
