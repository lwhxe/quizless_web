### Quizless API Docs

**Sign Up**
POST, JSON

URL: lwhxe.crooked.se/s

{
  "username": "LWHXE";
  "password": "123456789";
}

{
  "id": "",
  "username": "",
  "password"; "",
}

**Log In**
GET, JSON

URL: lwhxe.crooked.se/l

{
  "username": "LWHXE";
  "password": "123456789";
}

{
  "id": "",
  "username": "",
  "password"; "",
}

**Create**
POST, JSON

URL: lwhxe.crooked.se/c

{
  "public": "",
  "author": "",
  "quizname": "",

  "nquestions": "",
  {
    "1": {"What is my name?", "qtype", "nanswer", {"asölkdf", "asdfas", "asdf", "asdf", ""}},
    "2": {"What is my name?", "qtype", "nanswer", {"asölkdf", "asdfas", "asdf", "asdf", ""}},
  }
}

{
  "quizid": "",
}

**Browse**
GET, JSON

URL: lwhxe.crooked.se/b

{
  "quizid": "",
  "search": "",
  "nsearch": "20",
}

{
  "nresults": "",
  {
  "author": "",
  "quizname": "",
  "quizid": "",
  },
  {
  "author": "",
  "quizname": "",
  "quizid": "",
  },
}

**My Quiz**
GET, JSON

URL: lwhxe.crooked.se/q

{
  "username": "",
  "password": "",
  "search": "",
}

{
  "nresults": "",
  {
  "author": "",
  "quizname": "",
  "quizid": "",
  },
  {
  "author": "",
  "quizname": "",
  "quizid": "",
  },
}
