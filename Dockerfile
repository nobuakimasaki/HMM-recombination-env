FROM nextstrain/base

# Install additional Python packages not available in Nextstrain's
# base image.
#
# Allow Snakemake to create subdirs in the user cache dir
# <https://github.com/nextstrain/ncov-ingest/pull/401>
RUN pip3 install pango_aliasor scipy==1.13.1 \
 && rm -rf ~/.cache
