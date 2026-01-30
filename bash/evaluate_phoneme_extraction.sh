uv run src/scripts/nemo/speech_to_text_eval.py \
    model_path="nemo_experiments/Speech_To_Text_Finetuning/2026-01-30_00-04-12/checkpoints/Speech_To_Text_Finetuning.nemo" \
    dataset_manifest="data/nexdata/filipino_822/test_manifest.json" \
    batch_size=16 \
    amp=True \
    use_cer=True
