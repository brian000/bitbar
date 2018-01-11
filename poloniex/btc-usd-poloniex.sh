#!/bin/bash

# Shows last ETH price (in USD) on Poloniex USDT Order Book.
#
# <bitbar.title>Poloniex ETHUSD last price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>brian</bitbar.author>
# <bitbar.author.github>brian000</bitbar.author.github>
# <bitbar.desc>Shows last ETH price (in USD) on Poloniex USDT Order Book.</bitbar.desc>
#
# by brian000
# Based on Bitfinex BTC bitbar plugin by Roberto Santacroce Martins
# Based on Coinbase bitbar plugin and XMR_BTC Poloniex plugin by Mat Ryer
#

echo -n "Ƀ$"; curl -s https://poloniex.com/public?command=returnTicker | tr '}' '\n' | grep USDT_BTC | tr -d '{}"' | tr ':,' '\n' | grep -A1 "last" | tail -1|sed 's/.\{6\}$//'
