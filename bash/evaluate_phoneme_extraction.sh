uv run src/scripts/nemo/speech_to_text_eval.py \
    model_path="models/checkpoints/Speech_To_Text_Finetuning_2026-01-30_18-24-21.nemo" \
    dataset_manifest="data/nexdata/filipino_822/test_manifest.json" \
    batch_size=16 \
    amp=True \
    use_cer=True
