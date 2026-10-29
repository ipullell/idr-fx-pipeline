# idr-fx-pipeline

> Automated daily ETL pipeline that ingests exchange rates from the [Frankfurter API](https://frankfurter.dev) into PostgreSQL.

**Status:** 🚧 In progress. Started 19 Oct 2026. Four weeks of building, followed by a 30-day unattended run.

**Ringkasan (Bahasa Indonesia):** Proyek ini adalah pipeline ETL yang mengambil data kurs mata uang dari API publik Frankfurter, membersihkannya, lalu menyimpannya ke PostgreSQL. Pipeline dibangun bertahap selama empat minggu, kemudian dijalankan otomatis selama sebulan penuh untuk melihat masalah nyata yang muncul (API gagal, data ganda, perubahan format) dan bagaimana saya mengatasinya.

---

## Why this project

Most beginner ETL projects run once on a static file. This one is designed to **run every day for a month**, so it has to deal with the problems real pipelines face:

- the API being unreachable or slow
- the same data arriving twice (idempotency)
- loading only new data (incremental load)
- bad or missing values (data quality)

The goal is a small, honest, working pipeline, with a written log of what broke and how it was fixed.

## Architecture

```
Frankfurter API
      |  extract: request the latest rates
      v
data/raw/rates_<timestamp>.json     raw layer, stored exactly as received
      |  transform: clean, validate, fix types
      v
cleaned records (pandas)
      |  load: idempotent upsert
      v
PostgreSQL
      |
      v
scheduled daily run (cron)
```

## Tech stack

| Area | Tool | Status |
|---|---|---|
| Language | Python 3 | in use |
| HTTP | `requests` | in use |
| Storage (raw) | JSON files via `pathlib` | in use |
| Transform | `pandas` | planned (week 2) |
| Database | PostgreSQL | planned (week 2) |
| Logging and retry | `logging`, retry logic | planned (week 3) |
| Scheduling | cron | planned (week 4) |
| Tests | `pytest` | planned (week 4) |

## Project structure

```
idr-fx-pipeline/
├── src/
│   ├── extract.py      # fetch rates and save raw JSON
│   ├── transform.py    # planned
│   ├── load.py         # planned
│   └── main.py         # planned: runs the full pipeline
├── data/               # results
│   └── raw/
├── requirements.txt
└── README.md
```

## Getting started

**Requirements:** Python 3.10 or newer.

```bash
git clone https://github.com/ipullell/idr-fx-pipeline.git
cd idr-fx-pipeline

python -m venv .venv
# Windows: .venv\Scripts\activate
# Linux/macOS: source .venv/bin/activate

pip install -r requirements.txt
```

Run the extract step from the project root:

```bash
python src/extract.py
```

Each run saves one file such as `data/raw/rates_2026-10-23_095700.json` and prints its path. The Frankfurter API needs no API key.

## Design decisions

- **Raw data is stored untouched.** If a transform step has a bug, the original data is still there and can be reprocessed without calling the API again.
- **One timestamped file per run.** Files are never overwritten, and the `YYYY-MM-DD_HHMMSS` format sorts chronologically.
- **`extract()` returns the saved file path.** Later steps can use the file directly instead of relying on printed output.
- **Stages are separate.** Extract, transform, and load each live in their own module, so a failure can be traced to one stage.

## Roadmap

- [x] **Week 1: Extract.** Fetch rates with `requests`, save raw JSON with a timestamped name
- [ ] Week 1: Error handling and logging (timeouts, bad status codes, API down)
- [ ] **Week 2: Transform and load.** Clean data with pandas, design the table schema, load into PostgreSQL
- [ ] **Week 3: Reliability.** Retry, idempotent loads, incremental loading
- [ ] **Week 4: Automation.** Daily scheduling, basic validation, tests, documentation
- [ ] **30-day run.** Let it run unattended, check every 2-3 days, record every real failure below

## Operations log

Problems found during the unattended run, and how they were fixed. *(To be filled in during the run.)*

| Date | What happened | Cause | Fix |
|---|---|---|---|
| | | | |

## How this project is built

This is a learning project. I write the code myself and use an AI assistant as a tutor and reviewer: it explains concepts and reviews my code, but I do not paste in finished solutions. Every function must be something I can explain line by line.

## Data source

Exchange rate data comes from the [Frankfurter API](https://frankfurter.dev). Please refer to their documentation for terms of use.

## Author

[@ipullell](https://github.com/ipullell)
