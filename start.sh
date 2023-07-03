#!/bin/bash

export PYTHONPATH=`pwd`:$PYTHONPATH

mkdir runtime/logs

CONSOLE_LOG="runtime/logs/console_`date +%Y%m%d`.log"

echo $CONSOLE_LOG

nohup streamlit run vectordb_bench/frontend/vdb_benchmark.py --logger.level info --theme.base light --theme.primaryColor '#3670F2' --theme.secondaryBackgroundColor '#F0F2F6' >> $CONSOLE_LOG 2>&1 &