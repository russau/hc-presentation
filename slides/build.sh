#!/bin/bash
docker run -it --rm -v $(PWD):/usr/src/app/ starefossen/github-pages jekyll build