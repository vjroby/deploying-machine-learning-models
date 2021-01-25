#!/usr/bin/env bash

TRAINING_DATA_URL="vbookshelf/v2-plant-seedlings-dataset"
NOW=$(date)

kaggle datasets download -d $TRAINING_DATA_URL -p packages/neural_network_model/neural_network_model/datasets/ && \
unzip packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset.zip -d packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset && \
echo $TRAINING_DATA_URL 'retrieved on:' $NOW > packages/neural_network_model/neural_network_model/datasets/training_data_reference.txt && \
mkdir -p "./packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset/nonsegmentedv2/Shepherds Purse"  && \
mv -v "./packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset/nonsegmentedv2/Shepherd’s Purse/"* "./packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset/nonsegmentedv2/Shepherds Purse"
rm -rf "./packages/neural_network_model/neural_network_model/datasets/v2-plant-seedlings-dataset/nonsegmentedv2/Shepherd’s Purse"