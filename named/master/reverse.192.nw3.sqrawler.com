$ORIGIN .
$TTL 10800	; 3 hours
2.168.192.in-addr.arpa	IN SOA	buzz.nw3.sqrawler.com. jay.nw3.sqrawler.com. (
				2          ; serial
				10800      ; refresh (3 hours)
				3600       ; retry (1 hour)
				259200     ; expire (3 days)
				3600       ; minimum (1 hour)
				)
			NS	buzz.nw3.sqrawler.com.
			NS	woody.nw3.sqrawler.com.
$ORIGIN 2.168.192.in-addr.arpa.
100			PTR	jessie.nw3.sqrawler.com.
2			PTR	r2-inner.nw3.sqrawler.com.
$TTL 3600	; 1 hour
50			PTR	win-rlay-client.nw3.sqrawler.com.
