#/bin/bash

IS_ERROR=0
for FILE in `find ./app | grep .php`; do
    if ! php -l $FILE; then
        IS_ERROR=1
        break
    fi
done
exit $IS_ERROR
