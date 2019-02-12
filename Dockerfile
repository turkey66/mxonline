FROM python:3.6

WORKDIR /mxonline

ENV MYSQL_DB ""
ENV MYSQL_USER ""
ENV MYSQL_PWD ""
ENV MYSQL_HOST ""

COPY requirements.txt /mxonline/

EXPOSE 8000

RUN pip install -i https://pypi.douban.com/simple -r requirements.txt

CMD ["uwsgi", "-i", "conf/uwsgi.ini"]

# docker build -t imxonline .

# docker run -v $PWD:/mxonline -e MYSQL_DB=mxonline -e MYSQL_USER=root -e MYSQL_PWD=123456 -e MYSQL_HOST=120.78.193.99 -d cmxonline

# 启动uwsgi后，查看该容器的ip为多少
# 修改uc_nginx.conf的uwsgi server的ip
# docker run --name mxng -v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf -v $PWD:/mxonline -d ng1.12.1