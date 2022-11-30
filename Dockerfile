FROM antoniopcamargo/genomad:latest@sha256:a2a3f1ed4052ae8293ce14fd84cb9dbcfb7496f800ba479abbfeeca38fa89c83
LABEL authors="Phil Palmer" \
    description="Docker image containing dependencies for geNomad https://github.com/apcamargo/genomad"

# Add conda installation dir to PATH (instead of doing 'conda activate')
ENV PATH /opt/conda/bin/:$PATH