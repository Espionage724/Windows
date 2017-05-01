New-Item -ItemType Directory -Force -Path "~\OpenVPN\config"
Invoke-WebRequest "https://vpn.ac/ovpn/AES-256-UDP/us-east_ashburn-aes256-udp.ovpn" -OutFile "~\OpenVPN\config\US East, Ashburn.ovpn"
Invoke-WebRequest "https://vpn.ac/ovpn/AES-256-UDP/canada_toronto-aes256-udp.ovpn" -OutFile "~\OpenVPN\config\Canada, Toronto (P2P).ovpn"