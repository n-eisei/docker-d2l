# docker-jupyter

- generate docker image

   ```
   docker buildx build --push --platform linux/arm64,linux/amd64 -t sunylab/d2l:1.2 .
   ``` 


- start docker jupyter
   ```
   docker run --rm -ti --name jupyter -p 8188:8188 -v `pwd`:/root/study  sunylab/d2l:1.2: 
   ```

- open in browser

   ```
    http://localhost:8188
   ```

- exit using control-c or (execcuting stop command in another command line window )
   ```
   docker stop jupyter
   ```
