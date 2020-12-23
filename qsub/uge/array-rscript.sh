#!/bin/bash
#$ -S /bin/sh
#$ -l short
#$ -l s_vmem=2G,mem_req=2G
#$ -pe def_slot 2
#$ -t 1-2
#$ -cwd

echo "pwd: $(pwd)"
echo HOME: $HOME
echo USER: $USER
echo JOB_ID: $JOB_ID
echo JOB_NAME: $JOB_NAME
echo HOSTNAME: $HOSTNAME
echo SGE_TASK_ID: $SGE_TASK_ID
echo SGE_TASK_FIRST: $SGE_TASK_FIRST
echo SGE_TASK_LAST: $SGE_TASK_LAST
echo SGE_TASK_STEPSIZE: $SGE_TASK_STEPSIZE

INFILE=mydata-${SGE_TASK_ID}.tsv
SCRIPT=envvars.R

module load r/3.5.2
Rscript $SCRIPT $INFILE
