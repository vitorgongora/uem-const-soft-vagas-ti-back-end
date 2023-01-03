# Guia de contribuição

Pushes para a branch main estão desativados, consequentemente alterações só poderão ser feitas através de pull
requests.

Só serão aceitas PRs que:

* Possuam testes unitários para todas novas funcionalidades implementadas
* Atendam ao estilo de formatação *Google Java Style* (https://google.github.io/styleguide/javaguide.html)
* Passem nos testes automatizados realizados através do Github Actions

---

# Como configurar o ambiente de desenvolvimento

### Softwares necessários

* Docker
* IntelliJ IDEA
* Distro baseada em Ubuntu **(não testado em outros SOs)**

### Configurando o Docker

* Instale o Docker seguindo o guia oficial  
  https://docs.docker.com/get-docker/
* Configure-o para rodar em modo rootless  
  https://docs.docker.com/engine/security/rootless/
* Ative o BuildKit  
  https://docs.docker.com/build/buildkit/

### Configurando a IDE

* Baixe e importe o arquivo de configuração  
  https://drive.google.com/file/d/1It-rn3lsFcoa9FhXJzFSUhSvRsbl5gMv/view?usp=share_link  
  **File > Manage IDE Settings > Import Settings...**
* Com a IDE aberta vá em **Help > Edit Custom VM Options...** e insira o código abaixo para conseguir fazer uso do
  plugin google-java-format

```
--add-exports=jdk.compiler/com.sun.tools.javac.file=ALL-UNNAMED
--add-exports=jdk.compiler/com.sun.tools.javac.parser=ALL-UNNAMED
--add-exports=jdk.compiler/com.sun.tools.javac.tree=ALL-UNNAMED
--add-exports=jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED
```

### Executando a aplicação

* Usando a GUI:
    * Com o projeto aberto na IDE selecione docker-compose-dev ao lado esquerdo do botão Play e pressione Play para
      executar os containers
    * Para executar os testes selecione BackendApplicationTests e pressione Play para executar. Note que é preciso que
      os
      containers já estejam em execução.
    * Para iniciar o debugger inicialize os containers, selecione Docker e pressione o botão Debug (SHIFT+F9)

* Na linha de comando para rodar a aplicação:

```
docker-compose up
```
