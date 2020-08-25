
Katzenpost Mixnet Docker
========================

This docker-compose configuration is meant to be used in combination
with the **server** and **authority** repositories. It is meant for
testing client and server mix network components as part of the core
Katzenpost developer work flow. It should be obvious that this
docker-compose situation is not meant for production use.


**NOTE** katzenpost expects its configuration files to be readable by the owner only. Fix the permissions by running the fix_perms.sh script in git root:
::

   ./fix_perms.sh


3. run docker-compose from this repository and cd into one of the folders depending on your usecase (control-c to exit)
::

   docker-compose up



**NOTE**: between restarting your local docker mixnet you **SHOULD**
remove the state changes on disk by running the following command:
::

   git clean -ffdx


**NOTE**: If you switch between voting and nonvoting authority mixnets then
you must run this command after shutting down the old docker composed mixnet:
::

   docker network prune
