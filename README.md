# Exploratory Data Analysis

### TODO
* add some ways to interact with excel

First do:
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