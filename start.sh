
# if [ -z $1 ]
# then
#     echo "no password found as first param"
#     exit;
# fi

# if [ -z $2 ]
# then
#     echo "no host directory found as second param"
#     exit;
# fi

# if [ -z $3 ]
# then
#     echo "no container directory found as third param"
#     exit;
# fi

docker_name=sshfs

clear && 
docker kill $docker_name; 
docker rm $docker_name; 
docker build -t $docker_name --build-arg passwd=$1 . && 
docker run --name $docker_name -v $2:$3 $docker_name
# ssh -p 2222 root@localhost
