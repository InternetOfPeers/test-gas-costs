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
> Artifacts written to C:\Users\giuse\AppData\Local\Temp\test--8972-eqYNFIfndl3n
> Compiled successfully using:
   - solc: 0.8.10+commit.fc410830.Emscripten.clang

  Contract: TestGasCosts
test1 188 188 188 177
    √ check costs 1 (66ms)
test2 142 142 142 142
    √ check costs 2 (65ms)
test3 93 103 103 103
    √ check costs 3 (64ms)
test4 7 7 7 24
    √ check costs 4 (62ms)

  4 passing (421ms)
```
