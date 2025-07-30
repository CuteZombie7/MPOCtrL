#!/bin/bash

input_dir_path="inputs"
network_dir_path="networks"
output_dir_path="outputs"
gene_expression_file_name="Tabula_Sapiens_Biohub_pseudo_bulk_counts_output_cpm_log1p.csv.gz"
compounds_reactions_file_name="KEGG_Full_connected_cmMat.csv"
reactions_genes_file_name="KEGG_Full_connected_modules_genes.json"

uv run src/main.py \
    --experiment_name GGSL_V5_base_mi \
    --input_dir_path inputs \
    --network_dir_path networks \
    --output_dir_path outputs \
    --gene_expression_file_name Tabula_Sapiens_Biohub_pseudo_bulk_counts_output_cpm_log1p.csv.gz \
    --compounds_reactions_file_name GGSL_V5_base_cmMat.csv \
    --reactions_genes_file_name GGSL_V5_base_module_genes.json \
    --reactions_auxiliary_genes_file_name close_gene_pairs_mi_GGSLV5Base.json \
    --n_epoch 200
	(--add_dup_auxiliary_genes)
