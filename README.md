Tradle
======

decentralized automatic trading of traditional and crypto assets, a form of a TradeNet

Introduction
============

I have been fascinated with the concept of TradeNet since I first heard it from [Cameron Gray in his Bitcoin Magazine article](http://bitcoinmagazine.com/15021/sovereignty-2-0/). It somehow reminded me of traders from [Vernor Vinge's Deepness In the Sky](http://en.wikipedia.org/wiki/A_Deepness_in_the_Sky). I would define TradeNet as an open ledger world commerce. Below I am trying to imagine the tenets of the TradeNet to be.

* Algo-trading. Algorithmic trading traditionally has allowed traders to discover market inefficiencies and profit from them. In the past decade most traditional markets have become fully electronic, while the new bitcoin market was born electronic. This opened the doors to an algorithmic trading revolution. Top Wall Street firms trade 100% algorithmically, yet individuals and smaller firms are largely behind. Trading hours are 24/7 in currency and the emerged crypto-currency markets. Amount of assets traded is skyrocketing. Algo-trading helps human beings navigate this expanding sea. 

* Decentralized stack. Web was born decentralized, but most all financially successful sites have grown into monopolies. The dangers of centralized solution have come into focus after Snowden's revelations. In bitcoin world, whenever a centralized solution emerged on top of a decentralized blockchain, it immediately attracted hackers and regulators. Blockchain is a technology breakthrough that was born out of 20 years of research into decentralized systems. Recently it has inspired thousands of bright minds and hundreds of startups to switch to the decentralized world. A new technology stack is forming around the blockchain, an alternative to today's cloud-based multi-tier solutions.

* Smart contracts. The biggest excitement in bitcoin world is centered around the notion of programmability of money,  with the key concepts being smart contracts and smart properties. A highly hyped new blockchain Ethereum, even has a built-in ability to execute smart contracts, contracts that have funds associated with them, arbitrary code and state. Ethereum's limitation though is that its contracts can not access data from the outside world. Algo-trading is a form of a smart contract that uses outside data called market indicators to make financial decisions.

* Smart data. Algo-trading is the first application of a new technology stack. It is a stack  for decentralized financial applications that bridges the blockchain and the Web. For that to work, Web sites must be accessible by machines. We are tapping into our decade-long research into Semantic Web to build such a bridge, to make data smart. Algo-trading is the first step in the emerging TradeNet. As data become smart, a lot of new smart things will become possible, like a thermostat negotiating electricity rates with the energy network, a car negotiating the price with the nearby garages, a legal will executed without a lawyer. We define the rules, and the machines negotiate and exchange our resources for things we need to live in this world.

* We define the rules. In the past we have delegated our personal power to lawyers. They have developed a special language to program our personal and business interactions and their outcomes. This language became so dense and specialized that we now can not read the contracts written in it. This often puts us at the mercy of lawyers. Smart contracts written in computer languages promise to free us from this dependency, but possibly at the cost of dependency on developers. If we can not define the rules ourselves, we will just replace one set of intermediaries - lawyers, with another - developers.


Problem space
=============

According to bitcoin core developer Gavin Andersen off-chain data and computations is the next bitcoin frontier:  ["all of the really interesting complex contracts I can think of require data from outside the blockchain"](http://gavintech.blogspot.com/2014/06/bit-thereum.html)

Ethereum captured people's imagination on the potential of extended on-chain computations with a crowdsale that is approaching cool $30M. Ethereum's innovations such as per-contract storage, arbitrary scripts, pay forward computations (gas), etc. allows to implement a whole new class of apps. Yet, there is a much larger class of apps that will emerge between the web/cloud and the chain.

In bitcoin world these apps are traditionally called Oracles. Vitalik in [Ethereum and Oracles](https://blog.ethereum.org/2014/07/22/ethereum-and-oracles/) blog writes: "The most common case that will appear in reality is the case of external data"

There has been a lot of discussions on oracles but only recently several companies released the implementations: Ripple's Codius.org, Orisi, RealityKeys, etc. (Codius whitepaper refers to several more oracles systems).

Each more or less focuses on one specific aspect of oracles functionality:
* sandoxing: to allow hosting in untrusted environment, e.g. a miner's machine. Ripple's new Codius.org uses NaCl - google native client. Another solution could be to use rocker.io. Both NaCl and Rocker.io sandboxes can run in a full Virtual Machine, like VirtualBox to fully isolate host machine from possibly misbehaving smart contracts.
* consensus: Orisi uses N of M multi-sig to work around the compromised oracles. This replaces "everyone agrees" notion of the blockchain with the "some agree". May be with the sidechains this compromise can be avoided.
* proof of untempered execution: recent breakthrough [in applying zk-SNARKS tech](http://www.scipr-lab.org/) made it possible to verify that computations on an untrusted host were performed correctly, host was not hacked and was not under influence of a virus or a botnet. Core bitcoin developer Gregory Maxwell proposed [Coinwitness](https://bitcointalk.org/index.php?topic=277389.0), positing it can replace current bitcoin's script with an off-chain program. Bitcoin nodes will then change, so "Instead of everyone checking that a transaction was permitted to be spent, they'd instead check that you checked." he says.
* communicating decisions to the chain: Today there are a multitude of solutions based on multisig, split secret, etc. The most promising is Adam Back & Austin Hill's new sidechains startup called Blockstream which will allow oracles to run as nodes in a sidechain, with direct integration into the bitcoin mainchain.
* secure external data: Trusty URIs (hash-URIs), Notary Chains, proofofexistence.com and Reality Keys tackle the issue: whether we can trust website's data.
* rendezvous and communication. Oracles need to discover each other, users need to be able to discover oracles. A mix of techniques used by bitcoin nodes, like DNS seeds, broadcasting known nodes, etc., can be employed.

Tradle will use mechinisms above and add two innovations to make smart contracts simple:

* a) non-developer (DIY) contracts. Simple rule based UI designe to be used on mobile, so that no developer is needed as an intermediary to make and read contracts. The complexity of programming is moved to data and a growing number of functions defined on data.
* b) data unification - key to making contracts simple.

