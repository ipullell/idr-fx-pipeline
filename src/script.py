import requests

url = "https://api.frankfurter.dev/v2/rates"
try:
    response = requests.get(url, timeout=10)
    status = response.status_code
    data = response.json() 
    print(data[0]) # date, base, quote, rate
    
    baris = 1
    for a in data:
        if baris <= 5:
            print(a['quote'])
            print(a['rate'])
            baris += 1
except requests.exceptions.RequestException as e:
    print(f"Error data gagal di ambil {e}]")