use ua4_pratica;

db.reviews.insertMany([

{
user_id:"u001",
product_id:"p1001",
review_text:"A bateria dura muito e a câmera é ótima!",
rating:5,
tags:["bateria","camera","positivo"],
sentiment_hint:"positivo"
},

{
user_id:"u002",
product_id:"p1001",
review_text:"Gostei do desempenho, mas o preço é alto.",
rating:4,
tags:["desempenho","preco","neutro"],
sentiment_hint:"neutro"
},

{
user_id:"u003",
product_id:"p2002",
review_text:"A bateria acaba rápido e o aquecimento incomoda.",
rating:2,
tags:["bateria","aquecimento","negativo"],
sentiment_hint:"negativo"
}

]);
