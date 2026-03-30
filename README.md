### Run docker server

```bash
docker run --rm -p 4200:4200 prefecthq/prefect:sha-1da1544-python3.12-conda prefect server start --host 0.0.0.0
```
then open [http://localhost:4200/dashboard](http://localhost:4200/dashboard)


## diff between bash and sh
1970s → sh   (Bourne Shell) — the original Unix shell, very basic
1989 → bash  (Bourne Again Shell) — improved version of sh

bash was literally created as a free, open-source replacement for sh with more feature
