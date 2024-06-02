# Fusion - Circuits

![Made-With-ChainLink](https://img.shields.io/badge/MADE%20WITH-ChainLink-fef8f4.svg?colorA=222222&style=for-the-badge&logoWidth=14)
![Made-With-Noir](https://img.shields.io/badge/MADE%20WITH-NOIR-f2c2b6.svg?colorA=222222&style=for-the-badge&logoWidth=14)

> Fusion is a multi-chain smart contract wallet that leverages ChainLink Functions and zero-knowledge proofs for cross-chain deployments and authentication. It also uses Avalanche Sub-Chain to provide unified Gas Credits and indexing transactions.

These are the circuits used in the _[getFusion.tech](https://getFusion.tech/)_ hackathon project at [Chainlink BlockMagic Hackathon 2024](https://chain.link/hackathon). The repository was scaffolded with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

> **Deployments and Subscriptions:**
>
> - Verified contracts - [Fusion-Contracts](https://github.com/FusionWallet/fusion_contracts)
> - Active ChainLink Functions Subscription - [Fusion-Backend](https://github.com/FusionWallet/fusion_backend)

#

> **Pre-requisites:**
>
> - Setup Nargo (recommended via [nargo](https://noir-lang.org/docs/getting_started/installation/))
> - Install [Noir](https://noir-lang.org/docs/getting_started/installation/)
> - Clone this repository

## Development

```bash
# Executing deploy_prove circuit
cd deploy_prove
nargo execute

# Checking constraints
nargo info

# Testing circuits
nargo check

# Generate zk-proof
nargo prove

# generate Solidity Verifier
nargo codegen-verifier
```
