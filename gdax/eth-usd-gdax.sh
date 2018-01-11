#!/bin/bash

# Shows last ETH price (in USD) on GDAX USD Order Book.
#
# <bitbar.title>GDAX ETHUSD last price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>brian</bitbar.author>
# <bitbar.author.github>brian000</bitbar.author.github>
# <bitbar.desc>Shows last ETH price (in USD) on GDAX USD Order Book.</bitbar.desc>
#
# by brian000
# Based on Bitfinex BTC bitbar plugin by Roberto Santacroce Martins
# Based on Coinbase bitbar plugin by Mat Ryer
#

echo -n "Ξ$"; curl -s https://api.gdax.com/products/ETH-USD/ticker/|egrep -o 'price":"[0-9]+\.[0-9]+'|sed 's/price":"//'|sed 's/.\{6\}$//'
