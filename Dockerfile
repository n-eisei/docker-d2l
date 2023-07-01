FROM ubuntu:22.04

# base install
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y --no-install-recommends \
    # vscode requirements
    gnome-keyring wget curl ca-certificates \
    # development tools
    vim git build-essential libssl-dev libffi-dev \
    # python tool
    python3.9 python3-pip python3-dev \
    # clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# install jupyter
RUN pip3 install Jupyter jupyterlab

#install torch
RUN pip3 install torch==1.12.0 torchvision==0.13.0 d2l==1.0.0b0 

#install nbTranslate
RUN jupyter nbextension install https://rawgit.com/jfbercher/jupyter_nbTranslate/master/nbTranslate.zip --user && jupyter nbextension enable nbTranslate/main

# entrypoint
CMD [ "jupyter-lab", "--ip='0.0.0.0'", "--port=8188", "--allow-root", "--LabApp.default_url='lab?file-browser-path=/root'" ,"--NotebookApp.token=''", "--no-browser" ]

# expose port
EXPOSE 8188
