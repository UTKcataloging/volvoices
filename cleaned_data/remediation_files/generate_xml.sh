#!/usr/bin/env bash

## Add Globals
MISSING_DATA_PROVIDERS="../missing_recordInfo"
SAXON="java -jar /Users/mark/bin/saxon-8.7.jar"
DESTINATION="output"

for filename in ${MISSING_DATA_PROVIDERS}/*.xml; do
    MYFILE=$(basename ${filename})
    echo ${MYFILE}
    ${SAXON} ${filename} ../remediation_files/add_record_info.xsl > ${DESTINATION}/${MYFILE}
done