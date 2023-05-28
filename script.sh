#!/bin/bash

mkdir -p WebWatch
cd WebWatch

touch README.md
touch requirements.txt

declare -a arr=("cross_site_scripting" "sql_injection" "csrf" "rce" "ssrf" "xxe" "clickjacking" "file_inclusion" "ddos" "brute_force")

mkdir -p attacks
cd attacks

for i in "${arr[@]}"
do
   mkdir "$i"
   cd "$i"
   touch "${i}_attack.py"
   touch "${i}_tests.py"
   touch "${i}_helper_functions.py"
   touch README.md
   cd ..
done

cd ..

mkdir -p database
cd database
touch db_connection.py
touch db_operations.py
touch README.md
cd ..

mkdir -p scripts
cd scripts
touch docker_setup.sh
touch run_tests.sh
touch README.md
cd ..

touch Dockerfile
