Version 0.9.33 - July 30th, 2024
- Set default DP API servers to public.tokenscan.io
- Set default explorer API servers to dogeparty.tokenscan.io
- Fixed numeric value parsing / validation for order forms
- Fixed `checkWalletUpgrade()` to handle semantic versioning properly
- Updated NFT display method to load data from API JSON projects array
- Removed "View Transaction" context menu from history
- Added "Create Subasset" context menu
- Added "Verify" option to signing transaction dialog
- Added support for displaying change address and amount when verifying transaction
- Added support for closing dispensers from origin address
- Added support for saving preferred sort order on markets and dispensers
- Add ‘Reset to Defaults’ option in server settings
- Start using SSL by default for DP API
- Fixed issue with ADS and tx fee calculations
- Added "UTXO Usage" preference in settings 
- Improved transaction fee interface
- Improved MPMA send transaction fee support
- Adjusted default tx size to 256 bytes
- Better transaction fee estimation support

Version 0.9.27 - Jan 23rd, 2024
- Fixed issue with dispensers not working
- Added support for P2SH signing
- Added XDP fee on numeric assets
- Added support for signing P2SH transactions

Version 0.9.26 - Dec 25th, 2023
- Added checks to verify wallet is unlocked before allowing add/import addresses
- Update to pass `null` for description in asset issuance transfers
- Update to start using `lock` flag in issuances instead of `LOCK` text
- Fixed issue with missing first address
- Fixed issue with wallet auto-locking
- Added support for pooling ADS donations
- Added support for reviewing license agreement
- Started passing forward `advanced` params in CP API requests
- Fixed issue with fee not being properly passed on issuances
- Added Betting tab back with build bounty
- Added support for adding up to 100 new addresses at once
- Added support for importing many private keys at once
- Added support for auto-lock feature
- Added support for decoding XDP transactions in sign transactions
- Added support for editing DUST preferences
- Added support for DIP05 (Viewing NFTs and Stamps)
- Increase max asset description length to 10k characters
- Fixed security issue with autocomplete
- Added issuance data encoding cost notification
- Added Automatic Donation System (ADS)
- Added lazy loading of asset list images
- Added balance list view options menu
- Fixed issues with DOGE/XDP asset divisibility not being set
- Fixed satoshi rounding issues by using `getSatoshis()`
- Changed default token type to non-divisible
- Updated MPMA data encoding fee calculations
- updated `checkWalletUpgrade()` to use `ajax()`
- Got basic Trezor integration working again
- Updates to support DIP03 Token Resets
- Updates to support DIP04 Oracled Dispensers
- Added 'Close Dispenser' main menu item
- Update to only pull list of open dispensers for watchlists
- Increased asset description length to 200 characters
- Added additional MPMA Send list validations
- Added better API error handling
- Start passing pubkey on all `create_send` requests
- Fixed issue with asterisks in asset descriptions
- Fixed issue with wallet addresses persisting after wallet reset
- Fixed MAX button to subtract miners fee from max amount
- Fixed issue with mpma amounts being rounded at times
- Support for collapsible subassets
- Adjust minimum tx fee code to allow lower minimums
- Limit dispenser watchlists to 10
- Limit exchange market list to 10
- Allow default market and exchange tabs to be removed
- Dispenser updates to add more protection
- Fixed issue with removing assets from dispenser watchlist
- Ignore tabs when changing amount values
- Hide passphrase by default on entry
- DOGE Name Service and asset support in sends
- Added 'Copy' button to view address page

Version v0.1.3 - July 23rd, 2021
- Updated settings screen to replace CP with DP
- Updated create_issuance API calls to start using lock: true/false flag

Version v0.1.2 - July 23rd, 2021
- added support for using DOGE on the DEX via Dogepay

Version v0.1.1 - July 29th, 2021
- Basic functionality working including generating and signing transactions on mainnet/testnet

Version v0.1.0 - July 23rd, 2021
- initial alpha release