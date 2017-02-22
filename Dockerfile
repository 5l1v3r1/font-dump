FROM ubuntu

RUN apt-get update && \
  apt-get install -y curl unzip imagemagick && \
  mkdir /out

ADD . /font_dump

CMD mkdir /tmp/fonts && \
  cd /font_dump && \
  ./dafont_urls | ./dafont_dl /tmp/fonts && \
  ./ttf_render_dir /tmp/fonts /out && \
  ./redundant_cases /out
