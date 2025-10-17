<p align="center">👋 Hey! I'm Samuel Vitor, a brazilian programmer.</p>
<p align="center"><a href="https://spring-boot-3-todo-application.onrender.com/"><img src="https://img.shields.io/badge/website-742273?style=for-the-badge&logoColor=F2F2F2&logo=twitter"/></a>
<p align="center"><a href="https://twitter.com/samuell_vitoorr"><img src="https://img.shields.io/badge/X-742273?style=for-the-badge&logoColor=F2F2F2&logo=twitter"/></a>
<a href="https://www.linkedin.com/in/samuel-vitor-362713214?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><img src="https://img.shields.io/badge/linkedin-742273?style=for-the-badge&logoColor=F2F2F2&logo=linkedin"/></a>
<a href="https://www.instagram.com/samuell_vitoorr?igsh=MXc0ZXViZGxuNWR3eA=="><img src="https://img.shields.io/badge/instagram-742273?style=for-the-badge&logoColor=F2F2F2&logo=instagram"/></a>

<!-- RAINBOW LINE TOP -->
<img src="https://github.com/AnderMendoza/AnderMendoza/raw/main/assets/line-neon.gif" width="100%">

<!-- ABOUT -->

# **Spring Boot 3 Todo Planner Application**

- :link: Modern fullstack To-Do List application using **Java Spring Boot** and **Thymeleaf**.
- :man: Users can `create`, `update`, `delete` tasks.

<img src="./src/main/resources/static/image/application-image.png" width="100%">

## Technologies Used

<details>
  <summary>📚 Backend</summary>
  <div>
    <samp>
      <p align="center">
        <img src="https://img.shields.io/badge/Java-1e1e2e?&style=for-the-badge&logo=openjdk&logoColor=cba6f7"/>
        <img src="https://img.shields.io/badge/Spring%20Boot-1e1e2e?&style=for-the-badge&logo=Spring%20Boot&logoColor=cba6f7"/>
        <img src="https://img.shields.io/badge/PostgreSQL-1e1e2e?&style=for-the-badge&logo=PostgreSQL&logoColor=cba6f7"/>
      </p>
    </samp>
  </div>
</details>

<details>
  <summary>📚 Frontend</summary>
  <div>
    <samp>
        <p align="center">
            <img src="https://img.shields.io/badge/Thymeleaf-1e1e2e?&style=for-the-badge&logo=Thymeleaf&logoColor=cba6f7"/>
            <img src="https://img.shields.io/badge/Bootstrap-1e1e2e?&style=for-the-badge&logo=Bootstrap&logoColor=cba6f7"/>
            <img src="https://img.shields.io/badge/jquery-1e1e2e?&style=for-the-badge&logo=jquery&logoColor=cba6f7"/>
        </p>
    </samp>
  </div>
</details>

<details>
  <summary>📚 Development Tools</summary>
  <div>
    <samp>
        <p align="center">
            <img src="https://img.shields.io/badge/Docker-1e1e2e?&style=for-the-badge&logo=Docker&logoColor=cba6f7"/>
            <img src="https://img.shields.io/badge/Lombok-1e1e2e?&style=for-the-badge&logo=Lombok&logoColor=cba6f7"/>
            <img src="https://img.shields.io/badge/Spring Boot DevTools-1e1e2e?&style=for-the-badge&logo=Spring Boot DevTools&logoColor=cba6f7"/>
        </p>
    </samp>
  </div>
</details>

## methodology

This project was developed following the `Agile methodology`, focusing on iterative development, continuous feedback, and adaptability. It adopts the `Model-View-Controller`(MVC) architecture, ensuring a clear separation between the `presentation layer`, `business logic`, and `data access`. The backend is built with `Spring Boot 3` and follows best programming practices to maintain `clean`, `modular`, and `maintainable code`. This approach facilitates `scalability` and `testing` throughout the development lifecycle.

## Project Structure

```bash
src/
├─ main/
│  ├─ java/com/example/springboot3todoapplication/
│  │  ├─ config/              # Configurações e dados iniciais
│  │  │  └─ SeedData.java
│  │  ├─ controllers/         # Controladores responsáveis pelas rotas e lógica das requisições
│  │  │  ├─ PageController.java
│  │  │  ├─ TodoController.java
│  │  │  └─ TodoFormController.java
│  │  ├─ models/              # Classes de modelo representando entidades do banco
│  │  │  ├─ StatusType.java
│  │  │  └─ Todo.java
│  │  ├─ repositories/        # Interfaces para acesso e manipulação dos dados
│  │  │  └─ TodoRepository.java
│  │  ├─ services/            # Serviços que encapsulam a lógica de negócio
│  │  │  ├─ TodoService.java
│  │  │  └─ SpringBoot3TodoApplication.java
│  ├─ resources/
│  │  ├─ static/              # Arquivos estáticos (JS, CSS, imagens, ícones)
│  │  │  ├─ icon/
│  │  │  ├─ image/
│  │  │  ├─ logo/
│  │  │  ├─ app.js
│  │  │  └─ styles.css
│  │  ├─ templates/           # Templates Thymeleaf para as views
│  │  │  ├─ index.html
│  │  │  └─ sobre.html
│  │  └─ application.properties # Configurações da aplicação
├─ test/
│  ├─ java/com/example/springboot3todoapplication/
│  │  ├─ controllers/         # Testes para os controladores
│  │  │  └─ TodoControllerTests.java
│  │  ├─ services/            # Testes para os serviços
│  │  │  ├─ TodoServiceTests.java
│  │  │  └─ SpringBoot3TodoApplicationTests.java
```

## Testing

Tests are implemented using `JUnit 5` (Jupiter), `Spring Boot Test`, and `Mock` to ensure the reliability and robustness of the application through both `unit` and `integration` testing. Tests are organized by `layers`, with unit tests targeting individual `services` and isolated `business logic`, while integration tests validate the interaction between `controllers`, `services`, and `repositories`. The tests cover essential functionalities such as context loading, `CRUD operations` for `Todo entities`, and endpoint behaviors.

## How to Use

1. Clone the repository.
2. Set up environment variables in `.env` file

```bash
  DATABASE_URL="postgresql://USER:PASSWORD@HOST:PORT/DATABASE_NAME"
```

3. Run the Spring Boot application using

```bash
mvn spring-boot:run
```

or use

`#!/bin/bash set -o allexport source .env set +o allexport mvn spring-boot:run` / `bash -c "set -o allexport; source .env; set +o allexport; mvn spring-boot:run`

4. Access the application at `http://localhost:8080`

<!-- RAINBOW LINE TOP -->
<img src="https://github.com/AnderMendoza/AnderMendoza/raw/main/assets/line-neon.gif" width="100%">

## Testing

- Run all tests: `mvn test`

<!-- RAINBOW LINE TOP -->
<img src="https://github.com/AnderMendoza/AnderMendoza/raw/main/assets/line-neon.gif" width="100%">
<img src="https://github.com/AnderMendoza/AnderMendoza/raw/main/assets/banner-header.gif">
