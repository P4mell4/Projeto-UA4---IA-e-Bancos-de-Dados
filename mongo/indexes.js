use ua4_pratica;

db.reviews.createIndex(
{
product_id:1,
created_at:-1
}
);

db.reviews.createIndex(
{
review_text:"text"
}
);
