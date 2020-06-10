Twitter Analysis using Spark Streaming 
================================
### Introduction
Using spark streaming, reads twitter feed, run the stream for some x amount of time.
Save the feed in a RDBMS of your choice### Configuration parameters

### Authentication
API_KEY = 'PfkSyve5w0fAR7g50PSX4HiBc'
API_SECRET = 'UlGZF549G3WA9VKUkk1fkh0CHg3O9tAUbnKFVCesPi78Zv8WwI'
ACCESS_TOKEN = '1252139667710980096-GnpsQlFLrJ4LvWqwipPIC2ffC4wyog'
ACCESS_TOKEN_SECRET = 'VgNG5hYqzSoaAwNS1LVrlDENXBJoOzr2EPYjtTelPn1iF'

### script.py
This file is used for authentication, getting the tweets from the api and sending it to spark.
### spark_twitter_assignment.ipynb
This file contains all the functionalities and analysis required.
### dumps folder
This folder contains all the .sql files which are exported from workbench


### DIRECTORY STRUCTURE
```
+-- spark_twitter
|  +--data
|  +--dumps
|  +--script.py
|  +--spark_twitter_assignment.ipynb
```
###FLOW
1. Run unset HADOOP_CONF_DIR in terminal.
2. Run the script.py file.
3. Run spark_twitter_assignment.ipynb file in jupyter notebook.
4. Export the .sql file from workbench into a dump folder.