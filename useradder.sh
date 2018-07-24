#!/bin/bash

CMD='useradd -m -s /bin/bash user${i}' # user приставка имени новых пользователей
for i in {1..7}	# Порядковый номер пользователей
# В конечном итоге имена пользователей будут иметь вид user1, user2 и т.д.
do
	echo -n "${i}: "
	eval $CMD && echo Successful || echo ERROR!
done
