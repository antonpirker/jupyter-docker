FROM python:3

WORKDIR /jup

RUN mkdir -p /root/.jupyter && pip install jupyter -U && pip install jupyterlab -U

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8000

CMD ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
