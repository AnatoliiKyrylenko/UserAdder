#!/bin/bash
# En version

echo "Enter beginning of name"
read bg_name

CMD='useradd -m -s /bin/bash $bg_name${i}' # bg_name beginning of name + namber of pool
for i in {1..7}	# Pool of users Пул, from 1 to 7

do
	echo -n "${i}: " # show result
	eval $CMD && echo "Created" || echo "ERROR! Something wrong (maybe missed - sudo)"
done
