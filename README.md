## Base-command

```bash
pip install -r requirements.txt  # Install requirements(pypiserver).
```

```bash
python setup.py sdist  # Packet compression.
```

```bash
pypi-server -p 8999 dist/  # Run localhost.
```

```bash
python setup.py sdist upload -r http://localhost:8999  # Packet compression + update packages on host.
```
- - -
## Docker-version

```bash
sudo docker build -t pypiserver -f Dockerfile . # => Docker build
```

```bash
sudo docker run -p 8999:8998 pypiserver # => Docker Run
```
- - - 
### Example №1
```bash
pip install -i http://localhost:8999 my_test_lib==0.0.1
```

- - -
### Example №2
```bash
pip install -r requirements_test.txt
```