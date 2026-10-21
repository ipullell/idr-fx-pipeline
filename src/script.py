# Gate bikin folder lewat kode
from pathlib import Path

folder = Path('Data_sales') / "customer"
folder.mkdir(parents=True, exist_ok=True)
file = 'data_customer.txt'
directory = folder / file

with open(directory, 'w', encoding='utf-8') as f:
    directory.write_text("isi hati gua sekarang: TERIMA LAH GUA JADI DATA ENGINEER DI PERUSAHAAN INI WAHAI HRD")