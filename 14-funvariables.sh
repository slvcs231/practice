USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please execute script with root previlige"
   exit 1
fi


VALIDATE() {
    if [ $? -ne 0 ]; then
      echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Mysql installation $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "Nginx"


