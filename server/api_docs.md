# API Documentation for Quizless 2 on the web...

Content-Type has to be specified and will always be: "application/json".

**Log In** <br><br>
All login requests are using "GET" method.

Username and Password must be given in the json body.
```json
{
  "username": "LWHXE",
  "password": "*****"
}
```

**Sign Up** <br><br>
All signup requests are using "POST" method.

Username and Password must be given in the json body.
Username must not be a duplicate of another, else corresponding error will be returned.
```json
{
  "username": "LWHXE",
  "password": "*****"
}
```

**Create** <br><br>
All saving of quizzes is done using "POST" method.

**My Quiz** <br><br>
All retrieving of owned quizzes is done using "GET" method.

**Browse** <br><br>
All retrieving of general quizzes is done using "GET" method.
