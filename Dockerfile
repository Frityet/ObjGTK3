FROM debian:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y git build-essential clang wget unzip

RUN wget https://xmake.io/shget.text -O - | bash
ENV PATH=/root/.local/bin:$PATH
ENV XMAKE_ROOT=y

WORKDIR /app
COPY . .

RUN xrepo add-repo dev-frit https://github.com/Frityet/xmake-repo dev
RUN xmake config -y -v --mode=debug --toolchain=clang --kind=shared
RUN xmake

CMD ["./build/linux/x86_64/debug/ObjGTK4-test"]
