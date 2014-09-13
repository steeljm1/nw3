$ORIGIN .
$TTL 10800	; 3 hours
nw3.sqrawler.com	IN SOA	buzz.nw3.sqrawler.com. jay.nw3.sqrawler.com. (
				6          ; serial
				10800      ; refresh (3 hours)
				3600       ; retry (1 hour)
				259200     ; expire (3 days)
				3600       ; minimum (1 hour)
				)
			NS	buzz.nw3.sqrawler.com.
			NS	woody.nw3.sqrawler.com.
			MX	10 buzz.nw3.sqrawler.com.
$ORIGIN nw3.sqrawler.com.
buzz			A	172.16.8.5
jessie			A	192.168.2.100
r1-inner		A	172.16.8.1
r2-inner		A	192.168.2.2
r2-outer		A	172.16.8.254
sarg			A	172.16.8.30
$TTL 3600	; 1 hour
win-client		A	172.16.8.100
			TXT	"314a03ee9b9b7f33b9bc32b321cc10096a"
win-rlay-client		A	192.168.2.50
			TXT	"3121b8198977b402975e728b2ab4a6529d"
$TTL 10800	; 3 hours
woody			A	172.16.8.6
www			CNAME	woody
