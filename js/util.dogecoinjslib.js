// Add Dogecoin configs to bitcoinjs-lib networks
// Dogecoin Mainnet
bitcoinjs.networks['dogemainnet'] = {
    "messagePrefix": '\x19Dogecoin Signed Message:\n',
    "bip32": {
       "public": 0x02facafd,
       "private": 0x02fac398
    },
    "pubKeyHash": 0x1e,
    "scriptHash": 0x16,
    "wif": 0x9e,
    "dustThreshold": 546
};
// Dogecoin Testnet
bitcoinjs.networks['dogetestnet'] = {
    "messagePrefix": '\x19Dogecoin Signed Message:\n',
    "bip32": {
       "public": 0x0432a9a8,
       "private": 0x0432a243
    },
    "pubKeyHash": 0x71,
    "scriptHash": 0xc4,
    "wif": 0xf1,
    "dustThreshold": 546
};

DWPrivateKey.prototype.checkTransactionDest2 = function(txHex, dest) {
  checkArgsType(arguments, ["string", "object", "object"]);

  var tx = bitcoinjs.Transaction.fromHex(txHex)

  console.log('TX', tx)

  var decomp = tx.outs.map(x => bitcoinjs.script.decompile(x.script))

  console.log('DECOMP', decomp)

 // Unreachable code for now
  throw new Error('Bitcore sucks')
}
