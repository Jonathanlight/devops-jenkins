

# Enabled debug
set -x

# Checked if folder isset or create folder
#------------------------------------------------------
if [ ! -d $(pwd)/data ]
then
	mkdir $(pwd)/data
fi	

# Checked if folder isset or create folder
#-------------------------------------------------------
if [ ! -d $(pwd)/data/jenkins ]
then
	mkdir $(pwd)/data/jenkins
fi

# Set right file
#--------------------------------------------------------
chown 1000 -R $(pwd)/data/jenkins

# Stop all container + clean logs
#---------------------------------------------------------
docker-compose stop
#truncate -s 0 /var/lib/docker/containers/*/*-json.log

# Restart all containers
#----------------------------------------------------------
docker-compose up --build -d

# Disable debug
set +x
