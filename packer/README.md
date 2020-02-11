# packer

app.json	packer template for reddit serever

packer build  -var-file=variables.json ./app.json

db.json		packer template for MongoDB server
packer build  -var-file=variables.json ./db.json
