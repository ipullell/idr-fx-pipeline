daftar_kurs = [
    {'Mata uang' : 'USD', 'nilai' : 2},
    {'Mata uang' : 'EUR', 'nilai' : 20000},
    {'Mata uang' : 'USD', 'nilai' : 15000},
    {'Mata uang' : 'YEN', 'nilai' : 10000}
]

for a in daftar_kurs:
    if a['nilai'] > 2000:
        print(daftar_kurs.get('Mata uang'))