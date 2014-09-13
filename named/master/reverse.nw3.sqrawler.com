$ORIGIN .
$TTL 10800	; 3 hours
8.16.172.in-addr.arpa	IN SOA	buzz.nw3.sqrawler.com. jay.nw3.sqrawler.com. (
				4          ; serial
				10800      ; refresh (3 hours)
				3600       ; retry (1 hour)
				259200     ; expire (3 days)
				3600       ; minimum (1 hour)
				)
			NS	buzz.nw3.sqrawler.com.
			NS	woody.nw3.sqrawler.com.
$ORIGIN 8.16.172.in-addr.arpa.
1			PTR	r1-inner.nw3.sqrawler.com.
$TTL 3600	; 1 hour
100			PTR	win-client.nw3.sqrawler.com.
$TTL 10800	; 3 hours
254			PTR	r2-outer.nw3.sqrawler.com.
30			PTR	sarg.nw3.sqrawler.com.
5			PTR	buzz.nw3.sqrawler.com.
6			PTR	woody.nw3.sqrawler.com.
