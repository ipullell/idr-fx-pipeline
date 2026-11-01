# gua akan bikkin etl tanpa liat tes aja
import json
import logging
import requests 
from pathlib import Path
from datetime import datetime

BASE_DIR =  Path(__file__).resolve().parent.parent
DATA_RAW = BASE_DIR / "data" / "raw"
FILE_LOG = BASE_DIR / "logs" / "pipeline.log"

def extract():
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    DATA_RAW.mkdir(exist_ok=True, parents=True)
    filename = DATA_RAW / f"result_{timestamp}.json"
    logging.info("Memulai prosess extract...")

    url = "https://api.frankfurter.dev/v2/rates"
    respon = requests.get(url, timeout=10)
    respon.raise_for_status()
    logging.info(f"Mendapatkan respon api detail: [{respon.status_code}]")

    data = respon.json()
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=4)
        logging.info("Menyimpan data ke dalam file...")
        return filename

if __name__ == "__main__":
    FILE_LOG.parent.mkdir(exist_ok=True)
    logging.basicConfig(
        level="INFO",
        filemode='a',
        filename=FILE_LOG,
        format= "%(asctime)s | %(levelname)s | %(message)s",
    )
    try:
        raw = extract()
        logging.info(f"Proses Extracat sukses data masuk ke dalam file {raw}")
    except requests.exceptions.RequestException as e:
        logging.error(f"Terjadi Kesalahan Detail: [{e}]")