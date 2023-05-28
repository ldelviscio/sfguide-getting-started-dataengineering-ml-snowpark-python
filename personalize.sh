#! /bin/bash

#
# Individualize Snowflake role, database, and warehouse with a prefix
#

PREFIX=$1

if [ -z "${PREFIX}" ]
then
	echo "Missing command line argument to use as prefix"
	exit
fi

find . -type f \( -name "*.sql" -o -name "*.py" -o -name "*.ipynb" -o -name "*.json" \) -exec sed -i "s/\bDASH_ROLE\b/${PREFIX}_DASH_ROLE/g" {} +
find . -type f \( -name "*.sql" -o -name "*.py" -o -name "*.ipynb" -o -name "*.json" \) -exec sed -i "s/\bDASH_DB\b/${PREFIX}_DASH_DB/g" {} +
find . -type f \( -name "*.sql" -o -name "*.py" -o -name "*.ipynb" -o -name "*.json" \) -exec sed -i "s/\bDASH_L\b/${PREFIX}_DASH_L/g" {} +
