import json
import logging
import requests
from pathlib import Path
from datetime import datetime

BASE_DIR = Path(__file__).resolve().parent.parent
DATA_RAW = BASE_DIR / "data" / "raw"
LOG_FILE = BASE_DIR / "logs" / "pipeline.log"

def extract():
    logging.info("Memulai proses...")
    timestamp = datetime.now().strftime("%Y_%m_%d-%H_%M_%S")
    folder = Path(DATA_RAW).mkdir(parents=True, exist_ok=True)
    file = DATA_RAW / f"pipeline{timestamp}.json"
    
    url = "https://api.frankfurter.dev/v2/rates"
    respon = requests.get(url, timeout=10)
    respon.raise_for_status()
    logging.info(f"requests berhasil status code: {respon.status_code}")
    
    data = respon.json()
    logging.info("Menyimpan data ke dalam file...")
    with open(file, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=4)
        return file
    
if __name__ == "__main__":
    Path(LOG_FILE).parent.mkdir(exist_ok=True)
    logging.basicConfig(
        level = "INFO",
        filename = LOG_FILE,
        filemode= 'a',
        format = "%(asctime)s | %(levelname)s | %(message)s",
    )
    
    try:
        raw = extract()
        logging.info(f"Prosess extract sukses data telah di simpan ke dalam folder berikut: {raw}")
    except requests.exceptions.RequestException as e:
        logging.error(f"Terjadi kesalahan, detail: {e}")