uv run src/scripts/nemo/speech_to_text_eval.py \
    model_path="models/checkpoints/stt_en_conformer_val_wer-0.4321.nemo" \
    dataset_manifest="data/nexdata/filipino_822/test_manifest.json" \
    batch_size=16 \
    amp=True \
    use_cer=True
