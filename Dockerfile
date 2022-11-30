FROM nfcore/base:2.1
LABEL authors="Phil Palmer" \
    description="Docker image containing all software requirements for genomad https://github.com/apcamargo/genomad"

# Install the conda environment
RUN conda create --name genomad-1.2.0 --quiet -c conda-forge -c bioconda genomad=1.2.0 && conda clean -a

# Add conda installation dir to PATH (instead of doing 'conda activate')
ENV PATH /opt/conda/envs/genomad-1.2.0/bin:$PATH

# Dump the details of the installed packages to a file for posterity
RUN conda env export --name genomad-1.2.0 > genomad-1.2.0.yml