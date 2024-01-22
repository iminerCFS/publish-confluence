FROM python:3.10

USER root

RUN pip install -U \
  Sphinx \
  sphinxcontrib-confluencebuilder \
  sphinxcontrib-katex \
  sphinx_numfig

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
