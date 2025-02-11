### Launch

```
git clone https://github.com/badtuxx/giropops-senhas.git
cd giropops-senhas/
apt-get update
apt-get install pip
pip install --no-cache-dir -r requirements.txt
apt-get install redis
systemctl start redis
systemctl status redis
export REDIS_HOST=localhost
flask run --host=0.0.0.0
```

If you had [`Address already in use`](https://flask.palletsprojects.com/en/stable/server/#address-already-in-use)

### Challenge

Criar um conta no Docker Hub, caso ainda não possua uma.
Criar uma conta no Github, caso ainda não possua uma.
Criar um Dockerfile para criar uma imagem de container para a nossa App
O nome da imagem deve ser SEU_USUARIO_NO_DOCKER_HUB/linuxtips-giropops-senhas:1.0
Fazer o push da imagem para o Docker Hub, essa imagem deve ser pública
Criar um repo no Github chamado LINUXtips-Giropops-Senhas, esse repo deve ser público
Fazer o push do cógido da App e o Dockerfile
Criar um container utilizando a imagem criada
O nome do container deve ser giropops-senhas
Você precisa deixar o container rodando
O Redis precisa ser um container
Dica: Preste atenção no uso de variável de ambiente, precisamos ter a variável REDIS_HOST no container. Use sua criatividade!

### Build Dockerfile

```
docker build -t sibelly/linuxtips-giropops-senhas:1.0 .
```