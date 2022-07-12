docker run \
-it --rm \
--mount type=bind,source=/Users/$USER/projects/github.com,target=/projects \
opensuse-leap-dev:latest /bin/bash
