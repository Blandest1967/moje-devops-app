# 1. Základní obraz: Python na Linuxu (odlehčená verze slim)
FROM python:3.9-slim

# 2. Vytvoříme pracovní složku uvnitř kontejneru
WORKDIR /app

# 3. Zkopírujeme soubory z vašeho PC (tečka) do kontejneru (tečka)
COPY . .

# 4. Nainstalujeme Flask uvnitř kontejneru
RUN pip install -r requirements.txt

# 5. Otevřeme port 5000 ven z kontejneru
EXPOSE 5000

# 6. Příkaz, který se spustí, když kontejner zapneme
CMD ["python", "app.py"]