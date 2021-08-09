# Setup
```bash
npm install -g truffle
npm install
```

Create a `.env` file in the root directory and set the following variables:
```bash
MNEMONIC="<your mnemonic>"
INFURA_PROJECT_ID="<your infura project id>"
```

Then you can deploy to a given (test) net.
```bash
truffle migrate --network rinkeby
```
