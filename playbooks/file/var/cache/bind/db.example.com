$ORIGIN {{domain}}.
$TTL    86400
@       IN      SOA     node1.{{domain}}. root@node1.{{domain}} (
                              1         ; serial
                          21600         ; Refresh (6 hours)
                           3600         ; Retry (1 hour)
                         604800         ; Expire (1 week)
                          21600 )       ; Negative Cache TTL (6 hours)

                MX  10  node1.{{domain}}.
                NS      node1.{{domain}}.
node1     IN A 10.10.5.2
node2     IN A 10.10.5.3

wordpress IN   CNAME   node2
