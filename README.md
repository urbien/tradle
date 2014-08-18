Tradle
======

decentralized automatic trading of traditional and crypto assets, a form of a TradeNet

Introduction
============

* Algo-trading. Algorithmic trading traditionally has allowed traders to discover market inefficiencies and profit from them. In the past decade most traditional markets have become fully electronic, while the new bitcoin market was born electronic. This opened the doors to an algorithmic trading revolution. Top Wall Street firms trade 100% algorithmically, yet individuals and smaller firms are largely behind. Trading hours are 24/7 in currency and the emerged crypto-currency markets. Amount of assets traded is skyrocketing. Algo-trading helps human beings navigate this expanding sea. 

* Decentralized stack. Web was born decentralized, but most all financially successful sites have grown into monopolies. The dangers of centralized solution have come into focus after Snowden's revelations. In bitcoin world, whenever a centralized solution emerged on top of a decentralized blockchain, it immediately attracted hackers and regulators. Blockchain is a technology breakthrough that was born out of 20 years of research into decentralized systems. Recently it has inspired thousands of bright minds and hundreds of startups to switch to the decentralized world. A new technology stack is forming around the blockchain, an alternative to today's cloud-based multi-tier solutions.

* Smart contracts. The biggest excitement in bitcoin world is centered around the notion of programmability of money,  with the key concepts being smart contracts and smart properties. A highly hyped new blockchain Ethereum, even has a built-in ability to execute smart contracts, contracts that have funds associated with them, arbitrary code and state. Ethereum's limiation though is that its contracts can not access data from the outside world. Algo-trading is a form of a smart contract that uses outside data called market indicators to make financial decisions.

* Smart data. Algo-trading is the first application of a new technology stack. It is a stack  for decentralized financial applications that bridges the blockchain and the Web. For that to work, Web sites must be accessible by machines. We are tapping into our decade-long research into Semantic Web to build such a bridge, to make data smart. Algo-trading is the first step in the emerging TradeNet. As data become smart, a lot of new smart things will become possible, like a thermostat negotiating electricity rates with the energy network, a car negotiating the price with the nearby garages. We define trading rules, and the machines negotiate and exchnage our resources for things we need to live in this world.

Problem space
=============

I have been fascinated with the concept of TradeNet which I first heard from [Cameron Gray in his Bitcoin Magazine article](http://bitcoinmagazine.com/15021/sovereignty-2-0/). I would define TradeNet as on-chain world commerce, as chain + web, or as consensus-based web apps.

According to bitcoin core developer Gavin Andersen off-chain data and computations is the next bitcoin frontier:  ["but all of the really interesting complex contracts I can think of require data from outside the blockchain"](http://gavintech.blogspot.com/2014/06/bit-thereum.html)

Ethereum captured people's imagination on the potential of extended on-chain computations with ether sale that is closing in on a cool $30M funding.

There does not need to be a war between on-chain and off-chain, both will exist with the mutual benefits.

Ethereum, with its innovations like per-contract storage, Turing complete script, pay forward for the computations (gas), allows to implement a whole new class of apps. 

Yet, there is a much larger class of apps that will emerge between the web/cloud and the chain.

These apps are usually called Oracles. Vitalik in [Ethereum and Oracles](https://blog.ethereum.org/2014/07/22/ethereum-and-oracles/) blog writes: "The most common case that will appear in reality is the case of external data"

There has been a lot of discussions on Oracles but only recently several companies released implementations: Ripple's Codius.org, Orisi, RealityKeys, etc. 

Each focuses on a specific aspect of oracle functionality:

sandoxing to allow hosting in untrusted environment of a miner. Ripple's new Codius.org uses NaCl - google native client.
oracle consensus - Orisi uses N of M multi-sig to work around the compromised oracles.
proof of untempered execution. bitcoin core developer Gregory Maxwell proposed [Coinwitness](https://bitcointalk.org/index.php?topic=277389.0), he claims it can replace current bitcoin's script with an off-chain program. Bitcoin nodes will then change, so "Instead of everyone checking that a transaction was permitted to be spent, they'd instead check that you checked." he says.
communicating decisions to chain: Reality Keys issues 2 private keys - for true and false. 
rendezvous and communication. Oracles need to discover each other, users need to be able to discover oracles. A mix of techniques used by bitcoin nodes, like DNS seeds, broadcasting known nodes, etc., can be employed.
shameless Trade plug:
a) non-developer contracts. Tradle uses IFTTT-like UI so that no developer is needed as an intermediary to make and read contracts.
b) data unification - key to make contracts simple.
Adam Back & Austin Hill's new sidechains startup may allow oracles as full nodes in a sidechain.
