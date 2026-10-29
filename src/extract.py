import json
import logging
import requests
from pathlib import Path
from datetime import datetime

BASE_DIR = Path(__file__).resolve().parent.parent
DATA_RAW = BASE_DIR / "data" / "raw"
LOG_FILE = BASE_DIR / "logs" / "pipeline.log"
timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

def extract():
    folder = Path(DATA_RAW)
    folder.mkdir(parents=True, exist_ok=True)
    file = folder / f"rates_{timestamp}.json"

    url = "https://api.frankfurter.dev/v2/rates"
    respon = requests.get(url, timeout=10)

    respon.raise_for_status()
    logging.info("Berhasil memanggil api...")

    data = respon.json()
    with open(file, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4)
        logging.info(f"Berhasil memasukan data apa adanya ke dalam {file}")
        return file



if __name__ == "__main__":
    Path(LOG_FILE).parent.mkdir(exist_ok=True)
    logging.basicConfig(
        level='INFO',
        format="(%(asctime)s | %(levelname)s | %(message)s)",
        filename= LOG_FILE,
        filemode = 'a'
    )

    try:
        raw = extract()
        logging.info(f"Proses extract sukses data berhasil di masukan ke dalam file : {raw}")
    except requests.exceptions.RequestException as e:
        logging.error(f"Error detail : {e}")