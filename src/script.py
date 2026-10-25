import json
import logging
import requests
from pathlib import Path
from datetime import datetime

def extract():
    url = "https://api.frankfurter.dev/v2/rates"
    folder = Path("data") / "raw"
    folder.mkdir(parents=True, exist_ok=True)
    
    logging.info("Memulai proses pengambilan data lewat API...")
    response = requests.get(url, timeout=10)
    response.raise_for_status()
    logging.info("Berhasil, sekarang menyimpan nya ke dalam bentuk json...")
    data = response.json()
    file = folder / f"rates_{timestamp}.json"
    
    with open(file, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4)
        logging.info(f"Berhasil, Data berhasil di simpan ke dalam file {file}")
        return file


if __name__ == "__main__":
    Path("logs").mkdir(exist_ok=True)
    timestamp = datetime.now().strftime("%Y-%m-%d_%H%M%S")

    logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)s | %(message)s", # Waktu, Info, Pesan
    handlers=[
        logging.FileHandler(f"logs/pipeline-{timestamp}.log", encoding='utf-8'),
        logging.StreamHandler(),
        ],
    )


    try:
        raw = extract()
        logging.info(f'Proses Selesai data di simpan ke file"{raw}"')
    except requests.exceptions.RequestException as e:
        logging.error(f'Proses gagal! Detail {e}')