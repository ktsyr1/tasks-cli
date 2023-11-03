#!/bin/bash

# تعريف قائمة للمشاريع
projects=(
    "alam"
    "alsbil"
    "ansfni"   
    "Ticket"  
)
clear
# حلقة تحديث ورفع المشاريع
green='\033[0;32m'
note='\033[0;44m'
rest='\033[0m'
for project in "${projects[@]}"
do

    echo "----------------------------------------"
    echo -e "${note}Working on project:${rest}     ${green}$project${rest}"
    echo "----------------------------------------" 

    cd "/home/ktsyr1/المستندات/projects/$project"
    git add .
    git commit -m "تحديث تلقائي" 
    git push origin main
done


echo "|---------------------------------------------|" 
echo -e "        ${green} alam  alsbil   ansfni   Ticket ${rest}" 
    
echo -e "|->          ${green} تم تحديث كل المشاريع ${rest}         <-|"
echo "|---------------------------------------------|"
