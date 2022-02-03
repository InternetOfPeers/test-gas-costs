# Test gas costs

This repo is a support for the answers to the following questions posted on StackExchange:

- [_What is the most gas efficient way to get the value of a bit in an unsigned integer?_](https://ethereum.stackexchange.com/questions/118140/what-is-the-most-gas-efficient-way-to-get-the-value-of-a-bit-in-an-unsigned-inte/118392?noredirect=1#comment141322_118392)
- [_What are the pros and cons of emitting events vs return statements?_](https://ethereum.stackexchange.com/questions/119720/what-are-the-pros-and-cons-of-emitting-events-vs-return-statements)
- [_Using assembly to store more values per word_](https://ethereum.stackexchange.com/questions/120627/using-assembly-to-store-more-values-per-word)

Please don't take it as an example of good programming, it is just a very raw and fast way to test gas costs ;)

Start a local geth node in dev mode with

```bash
geth --http --dev
```

Then run

```bash
truffle compile
truffle test
```

Output will be something like this

```bash
Using network 'development'.

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.

  Contract: TestEvents
testReturnData 4235
    ✓ check costs 1
testReturnAndUseData 4247
    ✓ check costs 2
testEmitData 5681
    ✓ check costs 3

  Contract: TestGasCosts
test1 188 188 188 188
    ✓ check costs 1
test2 142 142 142 142
    ✓ check costs 2
test3 93 103 103 103
    ✓ check costs 3
test4 7 7 7 24
    ✓ check costs 4
test5 188 188 188 188
    ✓ check costs 5

  Contract: TestPackingUint16
setPackedUint16 28901
    ✓ check costs 1 (1014ms)
testSetUint16 88443
    ✓ check costs 2
testPack 22134
    ✓ check costs 3

  11 passing (2s)
```
