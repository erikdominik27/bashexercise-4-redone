#!bash/bin

read -p "Enter your birthdate (y-m-d):" birthdate
if [[ "$birthdate" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
     if date -d "$birthdate" &>/dev/null; then
     currentyear=2024
     birthyear=$(echo $birthdate | cut -d '-' -f1)
     birthmonth=$(echo $birthdate | cut -d '-' -f2)
     birthday=$(echo $birthdate | cut -d '-' -f3)
     age=$((currentyear - birthyear))
if ((age > 76)); then
     echo "Wrong input, age exceeds the average human life expectancy."
 else
     echo "Your age is: $age"
fi
  else
     echo "Invalid date. Please use the valid format of y.m.d."        
  fi
else
     echo "Invalid format. Please use the valid format of y.m.d!"      
fi

