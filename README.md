# Library Databse

The following project is an API of books that allows to create, read, update and delete elements. 

There is an authenticacion process where you can sign up as user and login.


### Get list of all the books in the library
request GET /api/books

response 

[
{
  "idBook": 1,
  "title": "We Have Always Lived in the Castle",
  "author": "Shirley Jackson",
  "genre": "Horror",
  "release_year": 1962,
  "country": "United States",
  "description": "We Have Always Lived in the Castle is a deliciously unsettling novel about a perverse, isolated, and possibly murderous family and the struggle that ensues when a cousin arrives at their estate."
},
{
  "idBook": 2,
  "title": "El país de las mujeres",
  "author": "Gioconda Belli",
  "genre": "Fiction",
  "release_year": 2010,
  "country": "Nicaragua",
  "description": "En Faguas –país imaginario que aparece en las novelas de   Gioconda Belli– ha triunfado el PIE (Partido de la Izquierda Erótica). Sus   integrantes tienen un propósito inclaudicable: cambiar el rumbo de su país,  limpiarlo a una casa descuidada."
}...
]

### Get only one book in the library
request GET /books/id

response 

[
{
  "idBook": 8,
  "title": "Harry Potter and the Chamber of Secrets",
  "author": "J.K. Rowling",
  "genre": "Fantasy",
  "release_year": 1998,
  "country": "England",
  "description": "Ever since Harry Potter had come home for the summer, the    Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry."
}
]

### Add a new book to the library
request POST /books

response 

- if the book already exists in the library: {success: false,message: "Tu libro no se ha añadido. Prueba con otro",}
- if its added successfully: { success: true, id: id }
- if the request is unsuccessful: {success: false, message: "Ha habido un problema: error"}

### Update a book in the library
request PUT /book/id

response 
- if it has been updated: {success: true,message: "Enhorabuena! Tu libro se ha actualizado correctamente"}

### Delete a book in the library
request DELETE /book/id

response 
- if it has been deleted: {success: true, message: "Tu libro se ha eliminado correctamente"}

### Sign Up
request POST /api/signup

response 
- if the user has been added: {success: true, token: token, id: id}
- if the request is unsuccessful: {"success": false, message: 'Error' }

### Log in
request POST /api/login

response 
- if the credentials are correct: {success: true, token, username: username}
- if the credentials are incorrect: { success: false, message: "Las credenciales que has introducido no son válidas" }



## :hammer_and_wrench: This project has been built with:

1. **Visual Studio Code** 
2. **Git** & **Github** 
3. **MySQL y MySQL Workbench** 
4. **FreeDB**
5. **Express.js**
6. **Node.js**

## :wrench: Installation
Use  $ git clone https://github.com/AlbaGG25/library.git

## ✒️ Author

[![Autor](https://img.shields.io/badge/-%20Alba%20Ginés%20García%20-%20pink?logo=github&labelColor=grey&color=rgb(92%2C%20201%2C%20245))](https://github.com/AlbaGG25)

