use ua4_pratica;

db.createUser({
user:"analista_readwrite",
pwd:"SenhaForte#Trocar",
roles:[
{
role:"readWrite",
db:"ua4_pratica"
}
]
});

db.createUser({
user:"viewer",
pwd:"SenhaAindaMaisForte#Trocar",
roles:[
{
role:"read",
db:"ua4_pratica"
}
]
});
