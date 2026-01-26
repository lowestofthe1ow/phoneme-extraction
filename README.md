# Phoneme extraction research project

Main Git repository for phoneme extraction undergraduate research project.

## Project structure

The repository is structured as follows. Directories in parentheses are ignored.

```
phoneme-extraction
├── bash                      Bash scripts for certain tasks
├── config                    YAML configuration files
├── (data)                    Dataset files
├── (models)                  Model checkpoint files (.nemo, .ckpt, etc.)
└── src
    ├── datasets              Python code for managing datasets
    ├── scripts               Python scripts for certain tasks
    │   └── nemo              Python scripts from NVIDIA NeMo repository
    └── utils                 Miscellaneous utility scripts
```

## How to run

> [!NOTE]
> **Last updated**: 27 Jan 2026. Current approach is to fine-tune NVIDIA's
> `stt_en_conformer_ctc_small` model with a phoneme-based
> [SentencePiece](https://github.com/google/sentencepiece) tokenizer.

1. Clone the repository and setup a virtual environment with `uv`. **Currently
   uses Python 3.13**.
2. Install dependencies with `uv sync`
3. Set up datasets... (WIP)
4. Train the SentencePiece tokenizer with `source bash/train_tokenizer.sh`.
5. Fine-tune the `stt_en_conformer_ctc_small` model with
   `source bash/finetune_stt_en_conformer.sh`.

> [!NOTE]
> **Regarding `parakeet-tdt-0.6b-v3`**: Currently investigating how to handle
> this model. Current experiments use `stt_en_conformer_ctc_small`, which
> shows rather promising results despite being orders of magnitude smaller.

> [!WARNING]
> Dataset is currently missing a lot of data. Turns out the HuggingFace dataset
> doesn't have all 822 hours... leaving the train split with about 1 hour of
> data only. The `stt_en_conformer_ctc_small` finetune seems to perform rather
> well (?) all things considered.
