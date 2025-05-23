cd applications

python volnet/train_volnet.py \
    config-files/ejecta70-v6-dvr.json \
    --train:mode world \
    --train:samples 256**3 \
    --train:sampler_importance 0.01 \
    --train:batchsize 64*64*128 \
    --rebuild_dataset 51 \
    --val:copy_and_split \
    --outputmode density:direct \
    --lossmode density \
    --layers 32:32:32 \
    --activation SnakeAlt:2 \
    --fouriercount 14 \
    --fourierstd -1 \
    --volumetric_features_resolution 32 \
    --volumetric_features_channels 16 \
    -l1 1 \
    --lr_step 100 \
    -i 200 \
    --save_frequency 20