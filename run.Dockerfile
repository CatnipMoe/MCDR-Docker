FROM python:3.8-bullseye
WORKDIR /data
RUN apt-get update -y && apt-get install openjdk-17-jre -y && pip install mcdreforged -i https://pypi.tuna.tsinghua.edu.cn/simple
EXPOSE 25565
ENTRYPOINT [ "python","-m","mcdreforged" ]