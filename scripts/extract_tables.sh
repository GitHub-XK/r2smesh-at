#!/bin/bash

# Update tables from the custom outp file
o=${1:-"outp"}
echo Extracting tables from $o

rm xx??
csplit $o '/print table CMI/' '/print table CMI/' '/print table FIS/' '/print table FIS/'
mv xx01 cmi_table
echo "\"print table CMI\" written to cmi_table"
mv xx03 mat_table
echo "\"print table FIS\" written to mat_table"
rm xx??

