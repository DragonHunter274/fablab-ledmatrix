FROM python:3.12
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./*.py /code/
COPY ./providers /code/providers
COPY ./fonts /code/fonts
CMD ["python", "main.py"]