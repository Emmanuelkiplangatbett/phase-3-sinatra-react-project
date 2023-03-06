## Portfolio Application

portfolio appliction is abasic Api built with ruby's Sinatra DSL

This project is a demo that shows the power of the DSL in building server-side applications quickly.

The application has been built with the MVC design pattern.


### Frontend-repository

  - [Portfolio_Application](https://github.com/Emmanuelkiplangatbett/Portfolio_Application.git)
  - here is is a short video demo https://drive.google.com/file/d/1La4cdCiOJZnS8auWFxFqIIt_LpZjatwY/view
 



## Pre-Requisites

Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)
RAM >= 4GB
Free Space >= 2GB

## Built With

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)


- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**



## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone   (git@github.com:Emmanuelkiplangatbett/phase-3-sinatra-react-project.git)
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rake start
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```

## Application
This Portfolio application is a simple web API that allows users to:

-  Register/login to the aplication
- view all listed projects
- Add new project to their portfolio
- Update existing project data
- Delete project data
- can have maxumum of ten skills
- View listed skills,delete and update
- Inoder to use the application the user must be logged in



### MODELS
Database schema definitions.

#### Projects

| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| title       | String                                          | The name of the project               |
| description | String                                          | A short description about the project. |
| language    | string                                          | The name of the language            |
| user_id     | string                                          |  A unique identifier


#### Skills
| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| name        | String                                          | The name of the skill               |
| used_id     | String                                          | A unique identifier.                |



#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| user_name     | String    | User's full name.                     |
| password_hash | String    | User's password hashed with `BCrypt`. |





### ROUTES Example

1. `/hello` - Presents a simple welcome message.
2. `/auth/register` - Create a new user account.
   
   ```{json}
   ## REQUEST BODY
   {
    "user_name": "John Doe",
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
3. `/auth/login` - Log in a user using email and password.

   ```{json}
   ## REQUEST BODY
   {
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
4. `/projects/create` - Add a new TODO item.

   ```{json}
   ## REQUEST BODY
   {
    "title": "Make Breakfast",
    "description": "Prepare milk and cereal",
    "language": "Ruby"
   }
   ```
5. `/projects` - List all projects.



   ```
6. `/projects/update/:id` - Update an existing project.
7. `/projects/delete/:id` - Delete a project



## LICENSE
This repository is distributed under the MIT License

```markdown
Copyright 2023 Emmanuel Bett

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

# Contributing

our aplication is build with little knowledge of one language,it is however,open to anyone who would wish to contribute to our project. you can also refer here https://stackoverflow.com/questions/8503559/what-is-linting to learn more and run tests. software methods and tools refer herehttp://www.methodsandtools.com/archive/archive.php?id=33.



## Author
This repository is maintained by:

- [Emmanuel Bett](https://github.com/Emmanuelkiplangatbett) 
