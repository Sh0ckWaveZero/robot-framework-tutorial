Install Python

```bash
pyenv install 3.11.1  
```

To set the Python version to be used, you can follow these steps:

```bash
pyenv global 3.11.1
```

Create Virtual environment

```bash
python -m venv myenv

#activate venv
source ./myenv/bin/activate
```

Installing Robot Framework with pip is simple:

```bash
pip install robotframework

#To check that the installation was succesful, run
robot --version

```

Install webdrivermanager

```bash
pip install webdrivermanager

#install webdrivermanager chrome
webdrivermanager chrome
```
