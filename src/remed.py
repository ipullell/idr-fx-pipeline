import logging
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
A = BASE_DIR / "data" / "raw"
B = BASE_DIR / "logs" / "pipeline.log"
B.parent.mkdir(exist_ok=True)

logging.basicConfig(
    filename= B,
    filemode='a',
    level='INFO',
    format= "%(asctime)s | %(levelname)s | %(message)s"
)
logging.info(f"kalo ini berhasil tampil di file {B} berarti gua berhasil lulus.")