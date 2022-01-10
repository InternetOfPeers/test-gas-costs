# Test gas costs

Start a local geth node in dev mode with

```bash
geth --http --dev
```

Then run

```bash
truffle test
```

Output will be something like this

```bash
Compiling your contracts...
===========================
> Compiling .\contracts\Migrations.sol
> Compiling .\contracts\TestGasCosts.sol
> Compilation warnings encountered:

    Warning: Function state mutability can be restricted to pure
   --> project:/contracts/TestGasCosts.sol:108:5:
    |
108 |     function getValue5(uint16 four_nibbles, uint16 index) public view returns(uint16) {
    |     ^ (Relevant source part starts here and spans across multiple lines).

> Compiled successfully using:
   - solc: 0.8.10+commit.fc410830.Emscripten.clang

  Contract: TestGasCosts
test1 188 188 188 188
    √ check costs 1 (73ms)
test2 142 142 142 142
    √ check costs 2 (100ms)
test3 93 103 103 103
    √ check costs 3 (92ms)
test4 7 7 7 24
    √ check costs 4 (93ms)
test5 188 188 188 188
    √ check costs 5 (1108ms)

  5 passing (2s)
```
