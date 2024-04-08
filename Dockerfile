FROM debian:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y git build-essential clang wget unzip libpcre2-dev pkg-config libegl1-mesa-dev
# libgtk-4-dev libatk1.0-dev must be their testing versions because we need glib-2.0 >= 2.78.0
RUN echo "deb http://deb.debian.org/debian/ sid main" > /etc/apt/sources.list
RUN apt update -y
RUN apt install -y -t sid libglib2.0-dev
RUN apt install -y libgtk-4-dev libatk1.0-dev

RUN wget https://xmake.io/shget.text -O - | bash
ENV PATH=/root/.local/bin:$PATH
ENV XMAKE_ROOT=y

WORKDIR /app
COPY . .

RUN xrepo add-repo dev-frit https://github.com/Frityet/xmake-repo dev
RUN xmake config -y --mode=debug --toolchain=clang --kind=shared
RUN xmake

CMD ["./build/linux/x86_64/debug/ObjGTK4-test"]
