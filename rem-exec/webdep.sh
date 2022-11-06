usr="paul"

for host in `cat remhost`
do 
  echo "connecting to $host"
  scp -i ~/.ssh/id_rsa web.sh $usr@$host:/tmp/
  ssh $usr@$host sudo sh /tmp/web.sh
done

