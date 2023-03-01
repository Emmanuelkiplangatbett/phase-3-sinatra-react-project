## Portfolio Application

portfolio appliction is abasic Api built with ruby's Sinatra DSL

This project is a demo that shows the power of the DSL in building server-side applications quickly.

The application has been built with the MVC design pattern.


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
- **Bootstrap `v5.3.0`**
- **ERB `v4.0`**


## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone 
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
This application is a simple web API that allows users to:

-  Register/login to the aplication
- view all listed projects
- Add new project to their portfolio
- Update existing project data
- Delete project data
- can have maxumum of ten skills
- View listed skills,delete and update
- Inoder to use the application the user must be logged in