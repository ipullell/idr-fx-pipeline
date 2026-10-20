import json
from pathlib import Path

folder = Path('data') /'raw'
folder.mkdir(parents=True, exist_ok=True)
file_json = folder / 'kurs_tiruan.json'

daftar_kurs = [
    {'Mata uang' : 'IDR', 'nilai' : 40},
    {'Mata uang' : 'EUR', 'nilai' : 10},
    {'Mata uang' : 'USD', 'nilai' : 65},
    {'Mata uang' : 'YEN'}
]

with open(file_json, 'w') as data:
    json.dump(daftar_kurs, data, indent=2)
    
with open(file_json, 'r') as file:
    data = json.load(file)
    for a in data:
        if a.get('nilai', 0) > 10:
            print(a['Mata uang'])