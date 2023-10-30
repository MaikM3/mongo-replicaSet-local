# mongo-replicaSet-local
A docker compose for having a mongo replica set locally, specially if you use prisma


## First Time
Run 
```bash
./setupdb.sh
```

## Start
then you can run normally
```bash
docker-compose up -d 
```

## Connection string
Runs on 27018 to avoid crash if you use normally a local mongo on 27017
```
DATABASE_URL=mongodb://127.0.0.1:27018/marketplace?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+2.0.2
```
