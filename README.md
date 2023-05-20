# docker-jupyter

- generate docker image

   ``` 
    docker build . -t sunylab/d2l:1.0 
   ```

- start docker jupyter
   ```
   docker run --rm -ti --name jupyter -p 8188:8188 -v `pwd`/study:/root/study -ti  docker-jupyter:latest 
   ```

- open in browser

   ```
    http://localhost:8188
   ```

- exit using control-c or (execcuting stop command in another command line window )
   ```
   docker stop jupyter
   ```
