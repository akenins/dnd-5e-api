ls -1 *.json | sed 's/.json$//' | while read col; do
    mongoimport --uri "mongodb+srv://admin:CohibaRedMongo*11@cluster0.ykkzj.mongodb.net/dndBeyondClone" --collection features < $col.json;
done