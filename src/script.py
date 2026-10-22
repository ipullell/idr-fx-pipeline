import requests

url = "https://api.frankfurter.dev/v2/rates"
try:
    response = requests.get(url, timeout=10)
    status = response.raise_for_status()
    data = response.json() 
    print(data[0].keys()) # date, base, quote, rate
    
    for a in data:
        if a['quote'] == 'IDR':
            print(a['rate'], a['date'])
            break
except requests.exceptions.RequestException as e:
    print(f"Error data gagal di ambil {e}")