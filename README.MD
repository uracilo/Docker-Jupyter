## Run Jupyther with Docker Containers

### Jupyther

##### 1. pull docker image

```
sudo docker pull uracilo/bigdataben
```

##### 2. clone github repository

```
git clone https://github.com/uracilo/bigdata.git
```

##### 3. Change your package/libraries 

```
 vi requirements.txt 
```

##### 4. start container -d

```
docker run --name={name of container} -it -p 8888:8888  bigdataben 
```
##### 5. Check the id Container

```
docker logs
```
**output:**

```

CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                    NAMES
b506ebc49a5b        bigdataben          "/bin/sh -c 'jupyter…"   About a minute ago   Up 57 seconds       0.0.0.0:8888->8888/tcp   example
(base) 

```


##### 6. Copy the CONTAINER ID

```
docker logs {HERE CONTAINER ID}
```

**output:**

```

[I 19:29:16.146 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[I 19:29:16.434 NotebookApp] Serving notebooks from local directory: /notebooks
[I 19:29:16.434 NotebookApp] The Jupyter Notebook is running at:
[I 19:29:16.434 NotebookApp] http://b506ebc49a5b:8888/?token=afffb04b2179329188e48b581a259121acb9ff46f78d3f75
[I 19:29:16.434 NotebookApp]  or http://127.0.0.1:8888/?token=afffb04b2179329188e48b581a259121acb9ff46f78d3f75
[I 19:29:16.434 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 19:29:16.438 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-6-open.html
    Or copy and paste one of these URLs:
        http://b506ebc49a5b:8888/?token=afffb04b2179329188e48b581a259121acb9ff46f78d3f75
     or http://127.0.0.1:8888/?token=afffb04b2179329188e48b581a259121acb9ff46f78d3f75

```

##### 5. Open your explorer and copy the url

```
http://127.0.0.1:8888/?token=afffb04b2179329188e48b581a259121acb9ff46f78d3f75
```
if not work for you go to your localhost on port 8888 and paste the token of the url
