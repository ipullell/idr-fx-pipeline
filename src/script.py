import json
import requests
from pathlib import Path
from datetime import datetime

def extract():
    url = "https://api.frankfurter.dev/v2/rates"
    timestamp = datetime.now().strftime("%Y-%m-%d_%H%M%S")
    folder = Path("data") / "raw"
    folder.mkdir(parents=True, exist_ok=True)
    
    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()
        data = response.json()
        file = folder / f"rates_{timestamp}.json"
        
        with open(file, "w", encoding="utf-8") as f:
            json.dump(data, f, indent=4)
            return file
        
    except requests.exceptions.RequestException as e:
        print(f"Error data gagal di ambil Detail: [{e}]")
        
if __name__ == "__main__":
    raw = extract()
    print(f'Succes Data disimpan didalam file "{raw}"')
    