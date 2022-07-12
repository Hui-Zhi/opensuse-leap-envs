docker run \
-it --rm \
--mount type=bind,source=/Users/$USER/.config/osc,target=/root/.config/osc \
--mount type=bind,source=/Users/$USER/projects/build.opensuse.org,target=/root/build.opensuse.org \
--mount type=bind,source=/Users/$USER/projects/build.suse.com,target=/root/build.suse.com \
opensuse-leap-osc:latest /bin/bash
