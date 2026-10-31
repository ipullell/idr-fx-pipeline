import json
import logging
import requests
from pathlib import Path
from datetime import datetime

BASE_DIR = Path(__file__).resolve().parent.parent
DATA_RAW = BASE_DIR / "data" / "raw"
LOG_FILE = BASE_DIR / "logs" / "pipline.log"

def extract():
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    folder = Path(DATA_RAW).mkdir(parents=True, exist_ok=True)
    filename = DATA_RAW / f"data{timestamp}.json" # gua bingung memakai variabel data raw atau folder

    logging.info("Menjalankan proses extract...")
    url = "https://api.frankfurter.dev/v2/rates"
    respon = requests.get(url, timeout=10)
    respon.raise_for_status()
    logging.info(f"Berhasil melakukan requests Respon api: {respon.status_code}")

    data = respon.json()
    logging.info("Menyimpan data ke dalam file...")

    with open(filename, 'w', encoding="utf-8") as f:
        json.dump(data, f, indent=4)
        logging.info("berhasil menyimpan data ke dalam file")
        return filename
    

if __name__ == "__main__":
    LOG_FILE.mkdir(exist_ok=True).parent
    logging.basicConfig(
        filemode= 'a',
        level= "INFO",
        filename= LOG_FILE,
        format= "%(asctime)s | %(levelname)s | %(message)s"
    )


    try:
        raw = extract()
        logging.info(f"Proses Selesai hasil di simpan ke dalam file {raw}")
    except requests.exceptions.RequestException as e:
        logging.info(f"Error Detail: {e}")