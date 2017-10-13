# 7daystodocker
Simple script to start a 7 Days to Die server in Docker. Really, really hastily implemented, but I'll fix that eventually.

# Usage
* Install Docker if you don't already have it. Package names are as follows:

**Ubuntu/Debian** docker.io

**Red Hat and Friends** docker

**Arch** docker

* Modify serverconfig.xml

Make all your changes before running the script, as the script will currently always overwrite any existing servers you might have.

* Run the script
``sh 7daystodocker.sh``

# Coming Soon (tm)
* Non-destructive rebuilds
* A proper init script
* Maybe an image, if that ends up being easier than all this
