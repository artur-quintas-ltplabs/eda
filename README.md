# Exploratory Data Analysis

Requirements: Docker


The simples way to use this image on your windows machine is to run:

```bash
docker run -t -p 9999:9999 --name eda_jupyter -v %cd%:/app ltpdigital/eda jupyter notebook --port 9999 --ip=0.0.0.0 --allow-root
```

This will open a jupyter notebook server in the terminal's current directory, you can access it via: http://localhost:9999

## I know what I am doing

Start by getting the project via git clone:

```bash
git clone git@github.com:artur-quintas-ltplabs/eda.git
```

### TODO
* add some ways to interact with excel

To build the image from the project folder do:
```bash
docker build --tag eda:0.0.1 .
```

On Windows CMD start jupyter with:
```bash
docker run -t -p 9999:9999 --name eda_jupyter -v %cd%:/app eda:0.0.1 jupyter notebook --port 9999 --ip=0.0.0.0 --allow-root
```

On Bash start jupyter with:
```bash
docker run -t -p 9999:9999 --name eda_jupyter -v $(pwd):/app eda:0.0.1 jupyter notebook --port 9999 --ip=0.0.0.0 --allow-root
```

Remove container:
```bash
docker stop eda_jupyter && docker rm eda_jupyter
```