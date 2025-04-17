FROM opensuse/leap:15.4

WORKDIR /root

# Add special requirement for users. For me, the default osc for https://api.suse.com,
# and osc-opensuse for https://api.opensuse.org.
# Please remove this if you don't need it.
RUN echo 'alias osc-opensuse="osc -A https://api.opensuse.org"' >> ~/.bashrc

RUN zypper --non-interactive in osc build python3-py2pack which vim sudo obs-service-format_spec_file tree
RUN zypper --non-interactive in less
RUN zypper --non-interactive in rpmlint
