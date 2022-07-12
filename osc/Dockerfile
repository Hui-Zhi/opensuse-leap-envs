FROM opensuse/leap:latest

WORKDIR /root

# Add special requirement for users. For me, the default osc for https://api.suse.com,
# and osc-opensuse for https://api.opensuse.org.
# Please remove this if you don't need it.
RUN echo 'alias osc-opensuse="osc -A https://api.opensuse.org"' >> ~/.bashrc

# Date: 12/Apr/2022
# Should install the specific version for RPM as long as there's no python3-rpm for osc
#7 794.2 Problem: the to be installed osc-0.172.0-3.26.1.noarch requires 'python3-rpm', but this requirement cannot be provided
#7 794.2   not installable providers: python3-rpm-4.14.1-29.2.aarch64[repo-oss]
#7 794.2  Solution 1: downgrade of rpm-4.14.3-150300.46.1.aarch64 to rpm-4.14.1-29.46.aarch64
#7 794.2  Solution 2: do not install osc-0.172.0-3.26.1.noarch
#7 794.2  Solution 3: break osc-0.172.0-3.26.1.noarch by ignoring some of its dependencies
RUN zypper --non-interactive in rpm=4.14.3-150300.46.1 osc build which vim sudo obs-service-format_spec_file
