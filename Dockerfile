FROM python:3.7
# gettext-base нужен для того, чтобы установить envsubst
RUN apt update && apt -y install gettext-base
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# разрешаем наш скрипт на исполнение операционной системой
RUN chmod +x run.sh
CMD ["./run.sh"]