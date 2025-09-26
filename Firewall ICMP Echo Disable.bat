"netsh.exe" advfirewall firewall set rule name="Core Networking Diagnostics - ICMP Echo Request (ICMPv4-In)" profile="private,public" new enable="no"

"netsh.exe" advfirewall firewall set rule name="Core Networking Diagnostics - ICMP Echo Request (ICMPv4-Out)" profile="private,public" new enable="no"

"netsh.exe" advfirewall firewall set rule name="Core Networking Diagnostics - ICMP Echo Request (ICMPv6-In)" profile="private,public" new enable="no"

"netsh.exe" advfirewall firewall set rule name="Core Networking Diagnostics - ICMP Echo Request (ICMPv6-Out)" profile="private,public" new enable="no"

:: End