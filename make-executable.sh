FILE=$1
raco exe $FILE && sudo mv "${FILE%%.*}" /usr/local/bin/
