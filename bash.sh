#!/bin/bash
input="./users.txt"
rm "input.tfvars"
echo  -e 'environment    = "development"' >> "input.tfvars"
echo  -e 'delivery_tower = "sidc"'        >> "input.tfvars"
echo  -e 'transit        = "48511"'       >> "input.tfvars"
echo  -e 'application_id = "9202"'        >> "input.tfvars"

echo  -e '\niam_member = ['                 >> "input.tfvars"
while IFS= read -r line
do
  if [ "$line" != "" ];
  then
        ROLE=${line#*:}
        ADDRESS=${line%:*}
        ROLE="$(echo -e "${ROLE}" | tr -d '[:space:]')"
        ADDRESS="$(echo -e "${ADDRESS}" | tr -d '[:space:]')"
        echo -e '\t{\n\t\tbucket = "nbc-9202-npr-dev_sto_exploration_ciblage_data_mtl_test",' >> "input.tfvars"
        echo -e '\t\trole   = "'$ROLE'",'>> "input.tfvars"
        echo -e '\t\tmember = "'$ADDRESS'"\n\t},'>> "input.tfvars"
  fi
done < "$input"
echo -e ']' >> "input.tfvars"
