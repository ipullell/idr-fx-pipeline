import requests

url = "https://api.frankfurter.dev/v2/rates"
response = requests.get(url, timeout=10)
status = response.status_code
if status == 200:
    data = response.json()
    print(type(data))
    print(len(data))
    print(data[0])
else:
    print(f"Error Status Code: {status}")