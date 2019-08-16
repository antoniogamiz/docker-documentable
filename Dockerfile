FROM jjmerelo/test-perl6

RUN apk add graphviz
RUN apk add  nodejs npm
RUN apk --no-cache add --virtual native-deps \
    g++ gcc libgcc libstdc++ linux-headers make python && \
    npm install --quiet node-gyp -g &&\
    npm install --quiet

COPY highlights /highlights

RUN cd /highlights \
    && git clone https://github.com/perl6/atom-language-perl6 \
    && npm install .;


WORKDIR /root

ENTRYPOINT ["perl6"]