# fish completion for doh-cli(1)

complete -c doh-cli -f
complete -c doh-cli -l dns -a "libredns libredns-ads google cloudflare quad9 cleanbrowsing cleanbrowsing-secure cleanbrowsing-adult cira cira-protect cira-family securedns securedns-ads"
complete -c doh-cli -a "A AAAA CNAME HTTPS MX NS SOA SPF SRV SVCB TXT CAA DNSKEY DS"
