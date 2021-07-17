# Color palette search server



## Setup

- Install Python 3.9.x

- Create virtual environment ([`venv` — Creation of virtual environments](https://docs.python.org/3/library/venv.html))

- Activate `venv`

- Restore package

  ```shell
  pip install -r requirements.txt
  ```



## Run

```shell
flask run
```



## API

```tex
Endpoint                Methods
----------------------  ---------
/palette/<palette>              GET, POST

<palette> = {hex-color}-{hex-color}-{hex-color}-{hex-color}-{hex-color}
{hex-color} = hex color value without hash tag. (ex. ffaabb)
```

