#!/bin/bash
set -euo pipefail

# MultiQC container
CONTAINER=oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

# Copy the placeholder variables
fastq="/fs/ess/PAS3493/people/abdulafees007/GA3/results/fastqc/"
outdir="/fs/ess/PAS3493/people/abdulafees007/GA3/results/multiqc/"

# Initial logging
echo "Starting script multiqc.sh"
date
echo "Input FASTQ file:   $fastq"
echo "Output dir:         $outdir"
echo

# Create the output dir if needed
mkdir -p "$outdir"

# Run FastQC with its container
apptainer exec "$CONTAINER" multiqc -o "$outdir" "$fastq"   

# Final logging
echo
echo "Used MultiQC version:"
apptainer exec "$CONTAINER" multiqc --version
echo
echo "Successfully finished script multiqc.sh"
date