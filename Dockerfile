FROM golang:1.16

WORKDIR /go/src/

# install hugo
RUN git clone https://github.com/gohugoio/hugo.git --progress --verbose && \
    cd hugo && \
    go install

# init blog
WORKDIR /usr/local/blog

RUN git clone --recursive https://github.com/panniyuyu/blog-hugo.git --progress --verbose

WORKDIR /usr/local/blog/blog-hugo

CMD ["run.sh"] 
