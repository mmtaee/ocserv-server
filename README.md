# Ocserv server installation in ubuntu 20.04 (Focal Fossa)

```
Docker:
first complete env section in docker-compose.yml or leave it blank to use default in scripts

for exp:
- CN=company_name
- ORG=organization_name
- EXPIRE=365
- OC_NET=172.16.24.0/24
- SAME_CLIENT=2

>>> docker compose up --build 

```

```
pure installation on server:

>>> chmod +x install.sh
>>> ./install.sh
```