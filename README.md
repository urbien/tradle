Tradle
======

decentralized automatic trading of traditional and crypto assets, a form of a Tradenet

What Tradenet will do
======================
The main principle of a Tradenet is a programmable trade, where user is in control, user does the programming. Tradle will make it possible to express complex rules in a simple way.

Some areas where user will do the programming:

* smart contracts
* algo-trading, e,g.: price arbitrage, fundamentals, trend following, event-driven trading
* discovering e-commerce opportunities - auto-comparative shopping
* e-commerce syndication (after market -> e-commerce site)
* e-commerce securitization
* automatic auctions: between car and the garages
* energy usage and trade: smart thermostat, solar panels

Help me out, can you add other scenarious to this list?

Introduction
============

I have been fascinated with the concept of Tradenet since I first heard it from [Cameron Gray](http://about.me/cameron.john.gray) in his [Bitcoin Magazine article](http://bitcoinmagazine.com/15021/sovereignty-2-0/). Cameron defines Tradenet as "quantify anything of value so that it can be traded in a decentralized highly competitive frictionless market". His vision somehow reminded me of traders from [Vernor Vinge's Deepness In the Sky](http://en.wikipedia.org/wiki/A_Deepness_in_the_Sky), who used open information as a basis for a galactic trade. I would define Tradenet as an open ledger world commerce. Below I am trying to imagine the tenets of the Tradenet to be.

* Algo-trading. Algorithmic trading traditionally has allowed traders to discover market inefficiencies and profit from them. In the past decade most traditional markets have become fully electronic, while the new bitcoin market was born electronic. This opened the doors to an algorithmic trading revolution. Top Wall Street firms trade 100% algorithmically, yet individuals and smaller firms are largely behind. Trading hours are 24/7 in currency and the emerged crypto-currency markets. Amount of assets traded is skyrocketing. Algo-trading helps human beings navigate this expanding sea. 

* Decentralized stack. Web was born decentralized, but most all financially successful sites have grown into monopolies. The dangers of centralized solution have come into focus after Snowden's revelations. In bitcoin world, whenever a centralized solution emerged on top of a decentralized blockchain, it immediately attracted hackers and regulators. Blockchain is a technology breakthrough that was born out of 20 years of research into decentralized systems. Recently it has inspired thousands of bright minds and hundreds of startups to switch to the decentralized world. A new technology stack is forming around the blockchain, an alternative to today's cloud-based multi-tier solutions.

* Smart contracts. The biggest excitement in bitcoin world is centered around the notion of programmability of money,  with the key concepts being smart contracts and smart properties. A highly hyped new blockchain Ethereum, even has a built-in ability to execute smart contracts, contracts that have funds associated with them, arbitrary code and state. Ethereum's limitation though is that its contracts can not access data from the outside world. Algo-trading is a form of a smart contract that uses outside data called market indicators to make financial decisions.

* Smart data. For decentralized financial applications to bridge the blockchain and the Web, Web sites must become more accessible to the machines. We are tapping into our decade-long research into Semantic Web to build such a bridge, to make data smart. Algo-trading is our first app for the emerging Tradenet. As data become smart, a lot of new smart things become possible, like a thermostat negotiating electricity rates with the energy network, a car negotiating the price with the nearby garages, a Legal Will executed without a lawyer. We define the rules, and machines negotiate and exchange resources on our behalf to get things we need to live in this world.

* We define the rules. This language that defines our agreements became so dense and specialized that we now can not read without intermediaries. It has become the [biggest lie on the Web](https://tosdr.org/) to click 'I agree' on Terms of Service and License agreements. This lack of understanding often puts us at the mercy of lawyers and government officials. Smart contracts promise to free us from this dependency, but if people can not define the rules themselves, they will just replace one set of intermediaries - lawyers, with another - developers. A great web site [IFTTT](https://ifttt.com/) gave non-developers a way to program the Social Web. Tradle visual contract maker inspired by IFTTT allows anyone to create trading algorithms and we are extending it to cover other types of smart contracts. 


Problem space
=============

According to bitcoin core developer Gavin Andersen off-chain data and computations is the next bitcoin frontier:  ["all of the really interesting complex contracts I can think of require data from outside the blockchain"](http://gavintech.blogspot.com/2014/06/bit-thereum.html)

Ethereum captured people's imagination on the potential of extended on-chain computations with a crowdsale that is approaching cool $30M. Ethereum's innovations such as per-contract storage, arbitrary scripts, pay forward computations (gas), etc. allows to implement a whole new class of apps. Yet, there is a much larger class of apps that will emerge between the web/cloud and the chain.

In bitcoin world these apps are traditionally called Oracles. Vitalik in [Ethereum and Oracles](https://blog.ethereum.org/2014/07/22/ethereum-and-oracles/) blog writes: "The most common case that will appear in reality is the case of external data"

There has been a lot of discussions on oracles but only recently several companies released the implementations: Ripple's Codius.org, Orisi, RealityKeys, etc. (Codius whitepaper refers to several more oracles systems).

Each more or less focuses on one specific aspect of oracles functionality:

* sandoxing: to protect host machine, e.g. a miner, from untrusted and possibly mishbehaving contracts. Ripple's new [Codius.org](http://codius.org) uses NaCl - google native client. A Rackspace-sponsored [ZeroVM](http://www.zerovm.org/), an enhanced NaCl could be used instead. Both ZeroVM and NaCl provide deterministic environment to achieve varifiable computations. The goal is to make sure that the the computation, when repeated achieves the same result. This comes at a price, as some things are intentionally blocked in this environment, like access to the outside world. Another, much more more flexible, sandboxing solution [Docker](https://www.docker.com/) has recently become very popular, but it only provides deterministic deployment, not execution. In addition, both NaCl and Docker sandboxes can run inside a full Virtual Machine, like VirtualBox to fully isolate host machine from possibly misbehaving smart contracts.

* consensus: Orisi uses M of N multi-sig to work around the possibly compromised or unavailable oracles. This replaces "everyone agrees" notion of the blockchain with the "some agree". May be with the Adam Back's sidechains this compromise can be avoided.
 
* proof of untempered execution:  In decentralized environment, hosting of apps is done by the untrusted parties. This is in contrast to current cloud settings, where we implicitly trusted Amazon, Google and Microsoft, etc. And with Snowden we have learned that this trust was compromised. So, in building a new distributed cloud, especially the one integrated with a bitcoin financial network we must trust nothing, and rely on cryptographic proofs of data immutability, code immutability, and computation verifiability, applying zero knowledge systems pervasively. 

* secure external data: Trusty URIs (hash-URIs), Notary Chains, proofofexistence.com and Reality Keys tackle the question whether we can trust website's data. Hash-URIs of all the data inputs combined with hash-URI of the code can provide verifiability of computations. Any other network node may do the audit, by performing the same computations and verifying the resulting hash-URI. This assumes open source code and open data. The approach can be extended to include private data inputs using the technique called [zk-SNARKS](http://www.scipr-lab.org/). SNARKS magic allows something that is hard to imagine - verify computations without repeating them.

* communicating decisions to the chain: Today there are a multitude of solutions based on multisig, split secret, etc. The most promising is Adam Back & Austin Hill's new sidechains startup called Blockstream which will allow oracles to run as nodes in a sidechain, with direct integration into the bitcoin mainchain.

* rendezvous and communication. Oracles need to discover each other, users need to be able to discover oracles. A mix of techniques used by bitcoin nodes, like DNS seeds, broadcasting known nodes, etc., can be employed.

Tradle will use mechinisms above and add two innovations to make smart contracts simple:

* a) non-developer (DIY) contracts. Simple rule based UI designed to be used on mobiles, so that no developer is needed as an intermediary to make and read contracts. The complexity of programming is moved to data and a growing number of functions defined on data.
* b) data unification. We use a visual data modeling framework and a data mapping engine, developed over the last decade, to make web data accessible to smart contracts.
