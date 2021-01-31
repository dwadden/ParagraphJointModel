"""
Truncate the FEVER dataset so that there are only 5 negative retrievals per
entry.
"""

import json
from tqdm import tqdm


def is_list_of_lists(xxs):
    if not isinstance(xxs, list):
        return False

    for xs in xxs:
        if not isinstance(xs, list):
            return False

    return True


def load_jsonl(fname):
    return [json.loads(x) for x in open(fname)]


def save_jsonl(xs, fname):
    with open(fname, "w") as f:
        for x in xs:
            print(json.dumps(x), file=f)


for fold in ["train", "dev"]:
    print(fold)
    data = load_jsonl(f"fever/fever_{fold}_retrieved_15.jsonl")
    for entry in tqdm(data):
        negs = entry["negative_sentences"]
        # Make sure it's the right data type.
        assert is_list_of_lists(negs)
        entry["negative_sentences"] = negs[:5]

    save_jsonl(data, f"fever/fever_{fold}_retrieved_5.jsonl")
