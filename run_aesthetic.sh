. ../bashrc

# set -xe
cd $(dirname $(realpath $0))

export HF_HUB_OFFLINE=1
export HF_DATASETS_OFFLINE=1
export TRANSFORMERS_OFFLINE=1

#accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=42
#accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=41
#accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=40
#accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=39
#accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=38

accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=42 --config.train.learning_rate=6e-5
accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=41 --config.train.learning_rate=6e-5
accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=40 --config.train.learning_rate=6e-5
accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=39 --config.train.learning_rate=6e-5
accelerate launch scripts/rm/train_d3po.py --config config/aesthetic.py --config.seed=38 --config.train.learning_rate=6e-5
