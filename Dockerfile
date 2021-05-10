FROM golang:1.16

WORKDIR /go/src/

# install hugo
RUN git clone https://github.com/gohugoio/hugo.git --progress --verbose && \
    cd hugo && \
    go install

# init blog
WORKDIR /usr/local/blog

RUN git clone https://github.com/panniyuyu/blog-hugo.git

WORKDIR /usr/local/blog/blog-hugo

#EXPOSE 1313

#CMD ["/usr/local/bin/hugo server"] 
