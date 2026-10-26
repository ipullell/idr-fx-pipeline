import json
import logging
import requests
from pathlib import Path
from datetime import datetime

def extract():
    url = "https://api.frankfurter.dev/v2/rates"
    respon = requests.get(url, timeout=10)
    respon.raise_for_status()
    logging.info("Berhasil memanggil api...")
    data = respon.json()

    with open(file, "w", encoding="utf-8"):
        json.load(data, indent=4)
        # gua lupa cara nulis data hasil extract ke dalam file, gua lupa syntax nya kalo ga salah pake json.load() atau json.loads()



if __name__ == "__main__":
    Path("logs").mkdir(exist_ok=True)
    folder = Path("data") / "raw"
    folder.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now().strftime("%Y-%M-%D_%H-%M-%S")
    file = f"rates_{timestamp}.json" / folder


    logging.basicConfig(
        level='INFO',
        format="(%(  )s | %(level)s | %(message)s)", #gua lupa
        filename= f"logs/pipeline.log",
    )


    try:
        extract()
        logging.info("Berhasil menjalankan proses extract")
    except Exception.requests.Excaption.Requests as e: # gua lupa syntax untuk menangkap error requests
        logging.error(f"Error detail : {e}")