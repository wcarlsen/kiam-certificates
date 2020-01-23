install:
	yay -S cfssl

generate_cert:
	cfssl gencert -initca ca.json | cfssljson -bare ca
	cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=config.json server.json | cfssljson -bare server
	cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=config.json agent.json | cfssljson -bare agent

base64:
	./encode_script.sh
