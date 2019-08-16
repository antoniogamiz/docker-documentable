# docker-documentable

This container is used by [Perl6::Documentable](https://github.com/antoniogamiz/Perl6-Documentable). It contains the following tools:

- perl6 and zef (the base image is [jjmerelo/test-perl6](https://hub.docker.com/r/jjmerelo/test-perl6/).
- NodeJS
- npm
- python, node-gyp, etc. (need to build the highlighter).
- https://github.com/perl6/atom-language-perl6 (under /highlights)

