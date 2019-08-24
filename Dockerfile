FROM jjmerelo/test-perl6

LABEL version="3.0.0" maintainer="Antonio Gamiz <antoniogamiz10@gmail.com>"

RUN apk add graphviz nodejs npm

RUN apk --no-cache add --virtual native-deps \
    g++ gcc libgcc libstdc++ linux-headers make python openssl-dev && \
    npm install --quiet node-gyp -g &&\
    npm install --quiet

COPY highlights /highlights

RUN cd /highlights \
    && git clone https://github.com/perl6/atom-language-perl6 \
    && npm install .;

RUN zef install "Perl6::Documentable:ver<3.0.0>" \
    && mkdir /documentable

WORKDIR /documentable

ENTRYPOINT ["sh"]