# Mirrors
## Debian Mirrors
```
#deb cdrom:[Debian GNU/Linux 12.9.0 _Bookworm_ - Official amd64 DVD Binary-1 with firmware 20250111-10:55]/ bookworm contrib main non-free-firmware


# Global CDN (Fast and reliable worldwide)
deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb http://deb.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware

# Regional mirrors (optional: uncomment if you prefer specific countries)

# India (IIT Delhi)
# deb http://mirrors.iitd.ac.in/debian bookworm main contrib non-free non-free-firmware

# Turkey
# deb http://ftp.tr.debian.org/debian bookworm main contrib non-free non-free-firmware

# Germany
# deb http://ftp.de.debian.org/debian bookworm main contrib non-free non-free-firmware

```
## Kali Mirrors
```
# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware

# Additional line for source packages
deb-src http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware
```
---

## Update them
```
sudo apt update
```
---
# Set Dns
```
sudo nano /etc/resolv.conf 
```
file is like:
```
nameserver 192.168.1.1
```