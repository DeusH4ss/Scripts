                                                                       Linux Privesc Checklist: https://book.hacktricks.wiki/en/linux-hardening/linux-privilege-escalation-checklist.html
 LEGEND:                                                                                                                                                  
  RED/YELLOW: 95% a PE vector
  RED: You should take a look into it
  LightCyan: Users with console
  Blue: Users without console & mounted devs
  Green: Common things (users, groups, SUID/SGID, mounts, .sh scripts, cronjobs) 
  LightMagenta: Your username

 Starting LinPEAS. Caching Writable Folders...
                               ╔═══════════════════╗
═══════════════════════════════╣ Basic information ╠═══════════════════════════════                                                                       
                               ╚═══════════════════╝                                                                                                      
OS: Linux version 6.14.0-37-generic (buildd@lcy02-amd64-031) (x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0, GNU ld (GNU Binutils for Ubuntu) 2.42) #37~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 20 10:25:38 UTC 2
User & Groups: uid=1004(pierre) gid=1004(pierre) groupes=1004(pierre)
Hostname: mail.iron4software.local

Remember that you can use the '-t' option to call the Internet connectivity checks and automatic network recon!
[+] /usr/bin/ping is available for network discovery (LinPEAS can discover hosts, learn more with -h)                                                     
[+] /usr/bin/bash is available for network discovery, port scanning and port forwarding (LinPEAS can discover hosts, scan ports, and forward ports. Learn more with -h)                                                                                                                                             
[+] /usr/bin/nc is available for network discovery & port scanning (LinPEAS can discover hosts and scan ports, learn more with -h)                        
                                                                                                                                                          

Caching directories . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . DONE
                                                                                                                                                          
                              ╔════════════════════╗
══════════════════════════════╣ System Information ╠══════════════════════════════                                                                        
                              ╚════════════════════╝                                                                                                      
╔══════════╣ Operative system
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#kernel-exploits                                                         
Linux version 6.14.0-37-generic (buildd@lcy02-amd64-031) (x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0, GNU ld (GNU Binutils for Ubuntu) 2.42) #37~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 20 10:25:38 UTC 2
Distributor ID: Ubuntu
Description:    Ubuntu 24.04.3 LTS
Release:        24.04
Codename:       noble

╔══════════╣ Sudo version
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sudo-version                                                            
                                                                                                                                                          

╔══════════╣ PATH
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#writable-path-abuses                                                    
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin                                                        

╔══════════╣ Date & uptime
jeu. 05 févr. 2026 22:56:58 CET                                                                                                                           
 22:56:58 up 11:16,  2 users,  load average: 1,33, 0,45, 0,17

╔══════════╣ CPU info
Architecture :                            x86_64                                                                                                          
  Mode(s) opératoire(s) des processeurs : 32-bit, 64-bit
  Address sizes:                          46 bits physical, 48 bits virtual
  Boutisme :                              Little Endian
Processeur(s) :                           4
  Liste de processeur(s) en ligne :       0-3
Identifiant constructeur :                GenuineIntel
  Nom de modèle :                         Intel(R) Xeon(R) CPU E5-2640 v3 @ 2.60GHz
    Famille de processeur :               6
    Modèle :                              63
    Thread(s) par cœur :                  1
    Cœur(s) par socket :                  4
    Socket(s) :                           1
    Révision :                            2
    BogoMIPS :                            5199,99
    Drapaux :                             fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall 
                                          nx pdpe1gb rdtscp lm constant_tsc arch_perfmon rep_good nopl xtopology cpuid tsc_known_freq pni pclmulqdq vmx ss
                                          se3 fma cx16 pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor
                                           lahf_lm abm cpuid_fault pti ssbd ibrs ibpb stibp tpr_shadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bm
                                          i1 avx2 smep bmi2 erms invpcid xsaveopt arat vnmi umip md_clear flush_l1d arch_capabilities
Virtualization features:                  
  Virtualisation :                        VT-x
  Constructeur d'hyperviseur :            KVM
  Type de virtualisation :                complet
Caches (sum of all):                      
  L1d:                                    128 KiB (4 instances)
  L1i:                                    128 KiB (4 instances)
  L2:                                     16 MiB (4 instances)
  L3:                                     16 MiB (1 instance)
NUMA:                                     
  Nœud(s) NUMA :                          1
  Nœud NUMA 0 de processeur(s) :          0-3
Vulnerabilities:                          
  Gather data sampling:                   Not affected
  Ghostwrite:                             Not affected
  Indirect target selection:              Mitigation; Aligned branch/return thunks
  Itlb multihit:                          Not affected
  L1tf:                                   Mitigation; PTE Inversion; VMX flush not necessary, SMT disabled
  Mds:                                    Mitigation; Clear CPU buffers; SMT Host state unknown
  Meltdown:                               Mitigation; PTI
  Mmio stale data:                        Mitigation; Clear CPU buffers; SMT Host state unknown
  Reg file data sampling:                 Not affected
  Retbleed:                               Not affected
  Spec rstack overflow:                   Not affected
  Spec store bypass:                      Mitigation; Speculative Store Bypass disabled via prctl
  Spectre v1:                             Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:                             Mitigation; Retpolines; IBPB conditional; IBRS_FW; STIBP disabled; RSB filling; PBRSB-eIBRS Not affected; BHI Re
                                          tpoline
  Srbds:                                  Not affected
  Tsa:                                    Not affected
  Tsx async abort:                        Not affected
  Vmscape:                                Not affected

╔══════════╣ Unmounted file-system?
╚ Check if you can mount umounted devices                                                                                                                 
/dev/disk/by-uuid/8d2d27ef-961e-49c5-b9fe-a66214069d9b / ext4 defaults 0 1                                                                                
/swap.img       none    swap    sw      0       0

╔══════════╣ Any sd*/disk* disk in /dev? (limit 20)
disk                                                                                                                                                      
sda
sda1
sda2

╔══════════╣ System stats
Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur                                                                                                      
tmpfs              593M    2,0M  591M   1% /run
/dev/sda2           59G     24G   33G  43% /
tmpfs              2,9G       0  2,9G   0% /dev/shm
tmpfs              5,0M    8,0K  5,0M   1% /run/lock
tmpfs              593M    120K  593M   1% /run/user/1000
tmpfs              593M     80K  593M   1% /run/user/1004
               total       utilisé      libre     partagé tamp/cache   disponible
Mem:         6067952     1553724     2998032       51664     1869420     4514228
Échange:     4008956           0     4008956

╔══════════╣ Inode usage
Sys. de fichiers  Inœuds IUtil.  ILibre IUti% Monté sur                                                                                                   
tmpfs             758494   1216  757278    1% /run
/dev/sda2        3932160 417340 3514820   11% /
tmpfs             758494      1  758493    1% /dev/shm
tmpfs             758494      5  758489    1% /run/lock
tmpfs             151698    178  151520    1% /run/user/1000
tmpfs             151698     90  151608    1% /run/user/1004

╔══════════╣ Environment
╚ Any private information inside environment variables?                                                                                                   
USER=pierre                                                                                                                                               
SSH_CLIENT=192.168.100.10 47134 22
HOME=/home/pierre
SSH_TTY=/dev/pts/0
DEBUGINFOD_URLS=https://debuginfod.ubuntu.com 
LOGNAME=pierre
TERM=xterm-256color
XDG_RUNTIME_DIR=/run/user/1004
LANG=fr_FR.UTF-8
SHELL=/bin/sh
PWD=/home/pierre
SSH_CONNECTION=192.168.100.10 47134 192.168.1.250 22
XDG_DATA_DIRS=/usr/share/gnome:/usr/local/share:/usr/share:/var/lib/snapd/desktop

╔══════════╣ Searching Signature verification failed in dmesg
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#dmesg-signature-verification-failed                                     
dmesg Not Found                                                                                                                                           
                                                                                                                                                          
╔══════════╣ Executing Linux Exploit Suggester
╚ https://github.com/mzet-/linux-exploit-suggester                                                                                                        
[+] [CVE-2022-2586] nft_object UAF                                                                                                                        

   Details: https://www.openwall.com/lists/oss-security/2022/08/29/5
   Exposure: less probable
   Tags: ubuntu=(20.04){kernel:5.12.13}
   Download URL: https://www.openwall.com/lists/oss-security/2022/08/29/5/1
   Comments: kernel.unprivileged_userns_clone=1 required (to obtain CAP_NET_ADMIN)

[+] [CVE-2021-4034] PwnKit

   Details: https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt
   Exposure: less probable
   Tags: ubuntu=10|11|12|13|14|15|16|17|18|19|20|21,debian=7|8|9|10|11,fedora,manjaro
   Download URL: https://codeload.github.com/berdav/CVE-2021-4034/zip/main

[+] [CVE-2021-3156] sudo Baron Samedit

   Details: https://www.qualys.com/2021/01/26/cve-2021-3156/baron-samedit-heap-based-overflow-sudo.txt
   Exposure: less probable
   Tags: mint=19,ubuntu=18|20, debian=10
   Download URL: https://codeload.github.com/blasty/CVE-2021-3156/zip/main

[+] [CVE-2021-3156] sudo Baron Samedit 2

   Details: https://www.qualys.com/2021/01/26/cve-2021-3156/baron-samedit-heap-based-overflow-sudo.txt
   Exposure: less probable
   Tags: centos=6|7|8,ubuntu=14|16|17|18|19|20, debian=9|10
   Download URL: https://codeload.github.com/worawit/CVE-2021-3156/zip/main

[+] [CVE-2021-22555] Netfilter heap out-of-bounds write

   Details: https://google.github.io/security-research/pocs/linux/cve-2021-22555/writeup.html
   Exposure: less probable
   Tags: ubuntu=20.04{kernel:5.8.0-*}
   Download URL: https://raw.githubusercontent.com/google/security-research/master/pocs/linux/cve-2021-22555/exploit.c
   ext-url: https://raw.githubusercontent.com/bcoles/kernel-exploits/master/CVE-2021-22555/exploit.c
   Comments: ip_tables kernel module must be loaded


╔══════════╣ Protections
═╣ AppArmor enabled? .............. You do not have enough privilege to read the profile set.                                                             
apparmor module is loaded.
═╣ AppArmor profile? .............. unconfined
═╣ is linuxONE? ................... s390x Not Found
═╣ grsecurity present? ............ grsecurity Not Found                                                                                                  
═╣ PaX bins present? .............. PaX Not Found                                                                                                         
═╣ Execshield enabled? ............ Execshield Not Found                                                                                                  
═╣ SELinux enabled? ............... sestatus Not Found                                                                                                    
═╣ Seccomp enabled? ............... disabled                                                                                                              
═╣ User namespace? ................ enabled
═╣ unpriv_userns_clone? ........... 1
═╣ unpriv_bpf_disabled? ........... 2
═╣ Cgroup2 enabled? ............... enabled
═╣ kptr_restrict? ................. 1
═╣ dmesg_restrict? ................ 1
═╣ ptrace_scope? .................. 1
═╣ protected_symlinks? ............ 1
═╣ protected_hardlinks? ........... 1
═╣ perf_event_paranoid? ........... 4
═╣ mmap_min_addr? ................. 65536
═╣ lockdown mode? ................. [none] integrity confidentiality
═╣ Kernel hardening flags? ........ CONFIG_RANDOMIZE_BASE=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_SLAB_FREELIST_RANDOM=y
CONFIG_SLAB_FREELIST_HARDENED=y
# CONFIG_KASAN is not set
═╣ Is ASLR enabled? ............... Yes
═╣ Printer? ....................... No
═╣ Is this a virtual machine? ..... Yes (kvm)                                                                                                             

╔══════════╣ Kernel Modules Information
══╣ Loaded kernel modules                                                                                                                                 
Module                  Size  Used by                                                                                                                     
tls                   163840  0
nf_conntrack_netlink    57344  0
xt_nat                 12288  1
xt_tcpudp              16384  0
veth                   45056  0
xt_conntrack           12288  1
xt_MASQUERADE          16384  1
bridge                421888  0
stp                    12288  1 bridge
llc                    16384  2 bridge,stp
xt_set                 20480  0
ip_set                 61440  1 xt_set
nft_chain_nat          12288  5
nf_nat                 61440  3 xt_nat,nft_chain_nat,xt_MASQUERADE
nf_conntrack          200704  5 xt_conntrack,nf_nat,xt_nat,nf_conntrack_netlink,xt_MASQUERADE
nf_defrag_ipv6         24576  1 nf_conntrack
nf_defrag_ipv4         12288  1 nf_conntrack
xt_addrtype            12288  4
nft_compat             20480  7
nf_tables             385024  96 nft_compat,nft_chain_nat
xfrm_user              65536  1
xfrm_algo              16384  1 xfrm_user
snd_seq_dummy          12288  0
snd_hrtimer            12288  1
vxlan                 159744  0
ip6_udp_tunnel         16384  1 vxlan
udp_tunnel             32768  1 vxlan
overlay               217088  1
qrtr                   53248  2
intel_rapl_msr         20480  0
snd_hda_intel          61440  0
intel_rapl_common      53248  1 intel_rapl_msr
snd_intel_dspcfg       45056  1 snd_hda_intel
snd_intel_sdw_acpi     16384  1 snd_intel_dspcfg
snd_hda_codec         204800  1 snd_hda_intel
snd_hda_core          147456  2 snd_hda_intel,snd_hda_codec
snd_hwdep              20480  1 snd_hda_codec
kvm_intel             487424  0
snd_pcm               192512  3 snd_hda_intel,snd_hda_codec,snd_hda_core
kvm                  1425408  1 kvm_intel
irqbypass              12288  1 kvm
polyval_clmulni        12288  0
polyval_generic        12288  1 polyval_clmulni
ghash_clmulni_intel    16384  0
sha256_ssse3           32768  0
sha1_ssse3             32768  0
aesni_intel           122880  0
snd_seq_midi           24576  0
crypto_simd            16384  1 aesni_intel
snd_seq_midi_event     16384  1 snd_seq_midi
snd_rawmidi            57344  1 snd_seq_midi
cryptd                 24576  2 crypto_simd,ghash_clmulni_intel
snd_seq               122880  9 snd_seq_midi,snd_seq_midi_event,snd_seq_dummy
snd_seq_device         16384  3 snd_seq,snd_seq_midi,snd_rawmidi
snd_timer              53248  3 snd_seq,snd_hrtimer,snd_pcm
rapl                   20480  0
snd                   143360  10 snd_seq,snd_seq_device,snd_hwdep,snd_hda_intel,snd_hda_codec,snd_timer,snd_pcm,snd_rawmidi
i2c_i801               36864  0
lpc_ich                32768  0
i2c_smbus              20480  1 i2c_i801
i2c_mux                16384  1 i2c_i801
soundcore              16384  1 snd
vmgenid                12288  0
joydev                 32768  0
input_leds             12288  0
serio_raw              20480  0
mac_hid                12288  0
binfmt_misc            24576  1
sch_fq_codel           24576  2
msr                    12288  0
parport_pc             53248  0
ppdev                  24576  0
efi_pstore             12288  0
lp                     28672  0
parport                73728  3 parport_pc,lp,ppdev
nfnetlink              20480  6 nft_compat,nf_conntrack_netlink,nf_tables,ip_set
dmi_sysfs              24576  0
qemu_fw_cfg            24576  0
ip_tables              32768  0
x_tables               65536  8 xt_conntrack,nft_compat,xt_tcpudp,xt_addrtype,xt_nat,xt_set,ip_tables,xt_MASQUERADE
autofs4                57344  2
hid_generic            12288  0
usbhid                 77824  0
hid                   262144  2 usbhid,hid_generic
psmouse               217088  0
ahci                   49152  0
libahci                53248  1 ahci
virtio_gpu            106496  1
virtio_dma_buf         12288  1 virtio_gpu
══╣ Kernel modules with weak perms?
                                                                                                                                                          
══╣ Kernel modules loadable? 
Modules can be loaded                                                                                                                                     
══╣ Module signature enforcement? 
Not enforced                                                                                                                                              

╔══════════╣ CVE-2025-38236 - AF_UNIX MSG_OOB UAF
Kernel 6.14.0-37-generic (parsed 6.14.0) may be vulnerable to CVE-2025-38236 - AF_UNIX MSG_OOB UAF.                                                       
╚ Config hint: CONFIG_AF_UNIX_OOB=y
╚ Exploit chain: crafted MSG_OOB send/recv frees the OOB SKB while u->oob_skb still points to it, enabling kernel UAF → arbitrary read/write primitives (Project Zero 2025/08).                                                                                                                                     
╚ Mitigations: update to a kernel containing commit 32ca245464e1479bfea8592b9db227fdc1641705, disable CONFIG_AF_UNIX_OOB, or filter MSG_OOB in sandbox policies.                                                                                                                                                    
╚ Heuristic detection: based solely on uname -r and kernel config; vendor kernels with backported fixes should be verified manually.                      
                                                                                                                                                          
╔══════════╣ CVE-2025-38352 - POSIX CPU timers race
═╣ Kernel release ............... 6.14.0-37-generic                                                                                                       
═╣ Comparable version ........... 6.14.0.37                                                                                                               
═╣ Task_work config ............. Enabled (y) (from /boot/config-6.14.0-37-generic)                                                                       
═╣ Patch status ................. Kernel train 6.14.0.37 (verify commit f90fff1e152dedf52b932240ebbd670d83330eca manually)
═╣ CVE-2025-38352 risk .......... Low - CONFIG_POSIX_CPU_TIMERS_TASK_WORK is enabled



                                   ╔═══════════╗
═══════════════════════════════════╣ Container ╠═══════════════════════════════════                                                                       
                                   ╚═══════════╝                                                                                                          
╔══════════╣ Container related tools present (if any):
/usr/bin/docker                                                                                                                                           
/usr/sbin/runc
/usr/bin/ctr
/usr/bin/containerd
/usr/bin/docker-proxy
/usr/sbin/apparmor_parser
/usr/bin/nsenter
/usr/bin/unshare
/usr/sbin/chroot
/usr/sbin/capsh
/usr/sbin/setcap
/usr/sbin/getcap

╔══════════╣ Container details
═╣ Is this a container? ........... No                                                                                                                    
═╣ Docker version ............... Client:                                                                                                                 
 Version:           28.2.2
 API version:       1.50
 Go version:        go1.23.1
 Git commit:        28.2.2-0ubuntu1~24.04.1
 Built:             Wed Sep 10 14:16:39 2025
 OS/Arch:           linux/amd64
 Context:           default
docker Not Found
═╣ Docker info ................. Client:                                                                                                                  
 Version:    28.2.2
 Context:    default
 Debug Mode: false

Server:
docker Not Found
═╣ Any running containers? ........ No                                                                                                                    
                                                                                                                                                          


                                     ╔═══════╗
═════════════════════════════════════╣ Cloud ╠═════════════════════════════════════                                                                       
                                     ╚═══════╝                                                                                                            
Learn and practice cloud hacking techniques in https://training.hacktricks.xyz
                                                                                                                                                          
═╣ GCP Virtual Machine? ................. No
═╣ GCP Cloud Funtion? ................... No
═╣ AWS ECS? ............................. No
═╣ AWS EC2? ............................. No
═╣ AWS EC2 Beanstalk? ................... No
═╣ AWS Lambda? .......................... No
═╣ AWS Codebuild? ....................... No
═╣ DO Droplet? .......................... No
═╣ IBM Cloud VM? ........................ No
═╣ Azure VM or Az metadata? ............. No
═╣ Azure APP or IDENTITY_ENDPOINT? ...... No
═╣ Azure Automation Account? ............ No
═╣ Aliyun ECS? .......................... No
═╣ Tencent CVM? ......................... No



                ╔════════════════════════════════════════════════╗
════════════════╣ Processes, Crons, Timers, Services and Sockets ╠════════════════                                                                        
                ╚════════════════════════════════════════════════╝                                                                                        
╔══════════╣ Running processes (cleaned)
╚ Check weird & unexpected processes run by root: https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#processes               
root           1  0.0  0.2  23568 14708 ?        Ss   11:40   0:15 /sbin/init splash                                                                      
root         353  0.0  0.4  75604 26012 ?        S<s  11:40   0:03 /usr/lib/systemd/systemd-journald
root         392  0.0  0.1  30600  8764 ?        Ss   11:41   0:01 /usr/lib/systemd/systemd-udevd
systemd+     531  0.0  0.1  17736  7652 ?        Ss   11:41   0:29 /usr/lib/systemd/systemd-oomd
  └─(Caps) 0x0000000000000022=cap_dac_override,cap_kill
systemd+     532  0.0  0.2  21696 13412 ?        Ss   11:41   0:01 /usr/lib/systemd/systemd-resolved
  └─(Caps) 0x0000000000002000=cap_net_raw
systemd+     533  0.0  0.1  91052  7876 ?        Ssl  11:41   0:00 /usr/lib/systemd/systemd-timesyncd
  └─(Caps) 0x0000000002000000=cap_sys_time
root         619  0.0  0.1 313784  8396 ?        Ssl  11:41   0:02 /usr/libexec/accounts-daemon[0m
avahi        660  0.0  0.0   8480  1520 ?        S    11:41   0:00  _ avahi-daemon: chroot helper
root         634  0.0  0.0   9364  2836 ?        Ss   11:41   0:00 /usr/sbin/cron -f -P
message+     635  0.0  0.1  12216  7452 ?        Ss   11:41   0:08 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
  └─(Caps) 0x0000000020000000=cap_audit_write
gnome-r+     639  0.0  0.2 512812 16552 ?        Ssl  11:41   0:00 /usr/libexec/gnome-remote-desktop-daemon --system
root         643  0.0  0.3  34820 21452 ?        Ss   11:41   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      644  0.0  0.2 391432 12992 ?        Ssl  11:41   0:03 /usr/lib/polkit-1/polkitd --no-debug
root         645  0.0  0.1 313684  7844 ?        Ssl  11:41   0:00 /usr/libexec/power-profiles-daemon[0m
root         648  0.0  0.7 2071368 42504 ?       Ssl  11:41   0:11 /snap/snapd/current/usr/lib/snapd/snapd
root         649  0.0  0.1 309808  6896 ?        Ssl  11:41   0:00 /usr/libexec/switcheroo-control
root         651  0.0  0.1  18136  8984 ?        Ss   11:41   0:01 /usr/lib/systemd/systemd-logind
root         653  0.0  0.2 469544 14128 ?        Ssl  11:41   0:01 /usr/libexec/udisks2/udisksd
root         680  0.0  0.3 337068 19848 ?        Ssl  11:41   0:02 /usr/sbin/NetworkManager --no-daemon[0m
root         682  0.0  0.1  17384  6496 ?        Ss   11:41   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
root         776  0.0  0.2 392092 12740 ?        Ssl  11:41   0:00 /usr/sbin/ModemManager
syslog       786  0.0  0.1 222564  6468 ?        Ssl  11:41   0:00 /usr/sbin/rsyslogd -n -iNONE
root         885  0.0  0.1  37900 11848 ?        Ss   11:41   0:00 /usr/sbin/cupsd -l
root         888  0.0  0.5 232304 33560 ?        Ss   11:41   0:05 php-fpm: master process (/etc/php/7.4/fpm/php-fpm.conf)
www-data    1027  0.0  0.2 232728 12880 ?        S    11:41   0:00  _ php-fpm: pool www
www-data    1028  0.0  0.2 232728 12880 ?        S    11:41   0:00  _ php-fpm: pool www
root         892  0.0  0.3 112208 23236 ?        Ssl  11:41   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         904  0.0  0.8 1950484 50352 ?       Ssl  11:41   0:38 /usr/bin/containerd
pierre     10631  0.0  0.1  15312  7300 ?        S    15:01   0:11      _ sshd: pierre@pts/0
pierre     10641  0.0  0.0   2800  1992 pts/0    Ss   15:01   0:00          _ -sh
pierre     13598  0.2  0.0   3880  3088 pts/0    S+   22:54   0:00              _ /bin/sh ./linpeas.sh -a
pierre     16743  0.0  0.0   3880  2124 pts/0    S+   22:57   0:00                  _ /bin/sh ./linpeas.sh -a
pierre     16745  400  0.0  13684  4688 pts/0    R+   22:57   0:00                  |   _ ps fauxwww
pierre     16747  0.0  0.0   3880  2124 pts/0    S+   22:57   0:00                  _ /bin/sh ./linpeas.sh -a
cups-br+     931  0.0  0.3 268480 20192 ?        Ssl  11:41   0:00 /usr/sbin/cups-browsed
  └─(Caps) 0x0000000000000400=cap_net_bind_service
root         932  0.0  0.0   8544  4568 ?        Ss   11:41   0:00 /usr/sbin/dovecot -F
dovecot      966  0.0  0.0   5024  2956 ?        S    11:41   0:00  _ dovecot/anvil
root         967  0.0  0.0   5164  3208 ?        S    11:41   0:00  _ dovecot/log
root         977  0.0  0.0   7168  4820 ?        S    11:41   0:00  _ dovecot/config
dovecot     5374  0.0  0.0   6136  3616 ?        S    11:44   0:00  _ dovecot/stats
kernoops     940  0.0  0.0  12744  2332 ?        Ss   11:41   0:00 /usr/sbin/kerneloops --test
kernoops     972  0.0  0.0  12744  2440 ?        Ss   11:41   0:00 /usr/sbin/kerneloops
root         975  0.0  0.1 315080  9728 ?        Ssl  11:41   0:00 /usr/sbin/gdm3
user        2979  0.0  0.1 235964  6436 tty2     Ssl+ 11:41   0:00      _ /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESSION_MODE=ubuntu /usr/bin/gnome-session --session=ubuntu
user        2996  0.0  0.2 298520 17064 tty2     Sl+  11:41   0:00          _ /usr/libexec/gnome-session-binary --session=ubuntu
root         981  0.0  0.5 228640 32500 ?        Ss   11:41   0:04 /usr/sbin/apache2 -k start
www-data    1058  0.0  0.5 235920 31708 ?        S    11:41   0:00  _ /usr/sbin/apache2 -k start
www-data    1065  0.0  0.5 235688 31204 ?        S    11:41   0:00  _ /usr/sbin/apache2 -k start
www-data    1067  0.0  0.6 236204 37216 ?        S    11:41   0:00  _ /usr/sbin/apache2 -k start
www-data    1068  0.0  0.5 236052 33664 ?        S    11:41   0:00  _ /usr/sbin/apache2 -k start
www-data    1069  0.0  0.4 235808 29344 ?        S    11:41   0:00  _ /usr/sbin/apache2 -k start
www-data    5053  0.0  0.5 236172 34288 ?        S    11:43   0:00  _ /usr/sbin/apache2 -k start
www-data    5093  0.0  0.5 236112 32244 ?        S    11:43   0:00  _ /usr/sbin/apache2 -k start
www-data    5094  0.0  0.5 236272 33008 ?        S    11:43   0:00  _ /usr/sbin/apache2 -k start
www-data    5095  0.0  0.4 235580 28096 ?        S    11:43   0:00  _ /usr/sbin/apache2 -k start
www-data    6089  0.0  0.4 235440 29024 ?        S    11:45   0:00  _ /usr/sbin/apache2 -k start
splunkf+    1004  0.4  2.1 359068 129096 ?       Ssl  11:41   3:20 splunkd --under-systemd --systemd-delegate=no -p 8089 _internal_launch_under_systemd
  └─(Caps) 0x0000000000000004=cap_dac_read_search
mysql       1070  0.0  2.3 1425200 142904 ?      Ssl  11:41   0:12 /usr/sbin/mariadbd
  └─(Caps) 0x0000000000004000=cap_ipc_lock
root        1082  0.0  1.2 2120104 75520 ?       Ssl  11:41   0:12 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
root        2155  0.0  0.0 1818832 4228 ?        Sl   11:41   0:00  _ /usr/bin/docker-proxy -proto tcp -host-ip 0.0.0.0 -host-port 8080 -container-ip 172.17.0.2 -container-port 80 -use-listen-fd
root        2162  0.0  0.0 1671368 4256 ?        Sl   11:41   0:00  _ /usr/bin/docker-proxy -proto tcp -host-ip :: -host-port 8080 -container-ip 172.17.0.2 -container-port 80 -use-listen-fd
rtkit       1303  0.0  0.0  22940  3556 ?        SNsl 11:41   0:01 /usr/libexec/rtkit-daemon
  └─(Caps) 0x0000000000800004=cap_dac_read_search,cap_sys_nice
root        1758  0.0  0.0  42856  4836 ?        Ss   11:41   0:00 /usr/lib/postfix/sbin/master -w
postfix     1768  0.0  0.1  43544  7976 ?        S    11:41   0:00  _ qmgr -l -t unix -u
postfix     7666  0.0  0.2  49688 13456 ?        S    11:48   0:00  _ tlsmgr -l -t unix -u -c
postfix    13181  0.0  0.1  43364  7952 ?        S    21:41   0:00  _ pickup -l -t unix -u -c
root        2056  0.0  0.2 1238384 14860 ?       Sl   11:41   0:07 /usr/bin/containerd-shim-runc-v2 -namespace moby -id ef931e78e960ac44029063bbbcc6f6cd7cfe6b7cb5f5c778ea7cbb01fc667bef -address /run/containerd/containerd.sock
root        2118  0.0  0.2  85552 17252 ?        Ss   11:41   0:17  _ /usr/bin/python2 /usr/bin/supervisord --nodaemon[0m --configuration=/etc/supervisord.conf --loglevel=info
nobody      2468  0.0  0.2 213108 18112 ?        S    11:41   0:04      _ php-fpm: master process (/etc/php-fpm.conf)
nobody      2482  0.0  0.1 213128  6656 ?        S    11:41   0:00      |   _ php-fpm: pool www
nobody      2483  0.0  0.1 213128  6656 ?        S    11:41   0:00      |   _ php-fpm: pool www
root        2469  0.0  0.0  12784  3672 ?        S    11:41   0:00      _ nginx: master process nginx -c /etc/nginx.conf
nobody      2475  0.0  0.0  13232  2004 ?        S    11:41   0:00          _ nginx: worker process
nobody      2476  0.0  0.0  13232  2072 ?        S    11:41   0:00          _ nginx: worker process
nobody      2477  0.0  0.0  13232  2004 ?        S    11:41   0:00          _ nginx: worker process
nobody      2478  0.0  0.0  13232  2004 ?        S    11:41   0:00          _ nginx: worker process
colord      2116  0.0  0.2 320484 15068 ?        Ssl  11:41   0:00 /usr/libexec/colord
root        2221  0.0  0.1 316932  9416 ?        Ssl  11:41   0:00 /usr/libexec/upowerd
root        2565  0.0  0.0 160128  4560 ?        Ssl  11:41   0:00 /usr/sbin/spice-vdagentd
user        2904  0.0  0.2  21244 12708 ?        Ss   11:41   0:02 /usr/lib/systemd/systemd --user
  └─(Caps) 0x0000000800000000=cap_wake_alarm
user        2910  0.0  0.0  21340  3628 ?        S    11:41   0:00  _ (sd-pam)
user        2921  0.0  0.2 114860 13756 ?        S<sl 11:41   0:00  _ /usr/bin/pipewire
user        2925  0.0  0.1  97676  6100 ?        Ssl  11:41   0:00  _ /usr/bin/pipewire -c filter-chain.conf
user        2928  0.0  0.2 405540 16572 ?        S<sl 11:41   0:00  _ /usr/bin/wireplumber
user        2929  0.0  0.2 121240 14128 ?        S<sl 11:41   0:00  _ /usr/bin/pipewire-pulse
user        2931  0.0  0.1  10928  6748 ?        Ss   11:41   0:12  _ /usr/bin/dbus-daemon[0m --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
user        2942  0.0  0.1 316668 10516 ?        SLsl 11:41   0:00  _ /usr/bin/gnome-keyring-daemon[0m --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
user        3058  0.0  0.1 610560  7916 ?        Ssl  11:41   0:00  _ /usr/libexec/xdg-document-portal
root        3078  0.0  0.0   2704  2056 ?        Ss   11:41   0:00  |   _ fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
user        3062  0.0  0.1 309576  6544 ?        Ssl  11:41   0:00  _ /usr/libexec/xdg-permission-store
user        3106  0.0  0.1 162652  6988 ?        Ssl  11:41   0:00  _ /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
user        3108  0.0  0.0  91488  5700 ?        Ssl  11:41   0:00  _ /usr/libexec/gnome-session-ctl --monitor
user        3122  0.0  0.1 314584  8580 ?        Ssl  11:41   0:01  _ /usr/libexec/gvfsd
user        3634  0.0  0.1 609888  9840 ?        Sl   11:41   0:01  |   _ /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvfs/exec_spaw/0
user        9609  0.0  0.1 314812  9004 ?        Sl   14:19   0:00  |   _ /usr/libexec/gvfsd-recent --spawner :1.20 /org/gtk/gvfs/exec_spaw/1
user        3130  0.0  0.1 459976  7524 ?        Sl   11:41   0:00  _ /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
user        3132  0.0  0.3 521256 19264 ?        Ssl  11:41   0:00  _ /usr/libexec/gnome-session-binary --systemd-service --session=ubuntu
user        3170  0.0  0.1 382940  7984 ?        Sl   11:41   0:00  |   _ /usr/libexec/at-spi-bus-launcher --launch-immediately
user        3181  0.0  0.0   9480  5288 ?        S    11:41   0:00  |   |   _ /usr/bin/dbus-daemon[0m --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
user        3771  0.0  1.0 827256 64748 ?        Sl   11:41   0:00  |   _ /usr/libexec/evolution-data-server/evolution-alarm-notify
user        3776  0.0  0.1 305492  7508 ?        Sl   11:41   0:00  |   _ /usr/libexec/gsd-disk-utility-notify
user        4516  0.0  0.5 569572 34176 ?        Sl   11:42   0:02  |   _ /usr/bin/update-notifier
user        3167  0.6  6.2 4934472 378932 ?      Ssl  11:41   4:40  _ /usr/bin/gnome-shell
user        3357  0.0  1.1 255948 71656 ?        S    11:41   0:00  |   _ /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.5VPPK3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients
user        3763  0.0  1.6 1413264 102044 ?      Sl   11:41   0:00  |   _ /usr/libexec/mutter-x11-frames
user        3235  0.0  0.1 236068  7704 ?        Sl   11:41   0:00  _ /usr/libexec/at-spi2-registryd --use-gnome-session
user        3256  0.0  0.3 655928 22156 ?        Sl   11:41   0:00  _ /usr/libexec/gnome-shell-calendar-server
user        3264  0.0  0.7 1275568 43596 ?       Ssl  11:41   0:00  _ /usr/libexec/evolution-source-registry
user        3277  0.0  0.4 2589176 27212 ?       Sl   11:41   0:00  _ /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
user        3282  0.0  0.2 389116 12704 ?        Ssl  11:41   0:03  _ /usr/bin/ibus-daemon[0m --panel disable
user        3384  0.0  0.1 310732  7720 ?        Sl   11:41   0:00  |   _ /usr/libexec/ibus-dconf
user        3385  0.0  0.5 422224 30660 ?        Sl   11:41   0:07  |   _ /usr/libexec/ibus-extension-gtk3
user        3602  0.0  0.1 237036  7948 ?        Sl   11:41   0:01  |   _ /usr/libexec/ibus-engine-simple
user        3286  0.0  0.1 383860  7184 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-a11y-settings
user        3287  0.0  0.3 413812 21444 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-color
user        3290  0.0  0.2 432020 12692 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-datetime
user        3296  0.0  0.1 385648  8476 ?        Ssl  11:41   0:01  _ /usr/libexec/gsd-housekeeping
user        3299  0.0  0.3 412604 20672 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-keyboard
user        3300  0.0  0.4 521152 26216 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-media-keys
user        3302  0.0  0.4 524248 24952 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-power
user        3303  0.0  0.1 323876 11772 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-print-notifications
user        3304  0.0  0.4 546948 24748 ?        Sl   11:41   0:00  _ /usr/libexec/goa-daemon[0m
user        3306  0.0  0.1 531424  7344 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-rfkill
user        3308  0.0  0.1 309676  6600 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-screensaver-proxy
user        3309  0.0  0.1 543532 12132 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-sharing
user        3316  0.0  0.1 386160  8772 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-smartcard
user        3320  0.0  0.1 393976 10316 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-sound
user        3325  0.0  0.3 487308 21480 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-wacom
user        3330  0.0  0.3 268076 22636 ?        Ssl  11:41   0:00  _ /usr/bin/spice-vdagent
user        3375  0.0  0.1  39132 11796 ?        Ss   11:41   0:00  _ /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration
user        3568  0.0  0.5 429556 31132 ?        Sl   11:41   0:00  |   _ /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration
user        3381  0.0  0.4 891016 25040 ?        Ssl  11:41   0:00  _ /usr/libexec/evolution-calendar-factory
user        3432  0.0  0.1 310540  7752 ?        Sl   11:41   0:00  _ /usr/libexec/ibus-portal
user        3437  0.0  0.1 389408  9800 ?        Sl   11:41   0:00  _ /usr/libexec/goa-identity-service
user        3455  0.0  0.1 389636 10980 ?        Ssl  11:41   0:01  _ /usr/libexec/gvfs-udisks2-volume-monitor
user        3475  0.0  0.2 416352 15444 ?        Sl   11:41   0:00  _ /usr/libexec/gsd-printer
user        3504  0.0  0.5 825732 30668 ?        Ssl  11:41   0:00  _ /usr/libexec/evolution-addressbook-factory
user        3521  0.0  0.1 310016  6784 ?        Ssl  11:41   0:00  _ /usr/libexec/gvfs-goa-volume-monitor
user        3539  0.0  0.1 310976  7260 ?        Ssl  11:41   0:00  _ /usr/libexec/gvfs-gphoto2-volume-monitor
user        3556  0.0  0.1 389496  8332 ?        Ssl  11:41   0:04  _ /usr/libexec/gvfs-afc-volume-monitor
user        3567  0.0  0.1 310004  6964 ?        Ssl  11:41   0:00  _ /usr/libexec/gvfs-mtp-volume-monitor
user        3624  0.0  0.0 230228  6036 ?        Ssl  11:41   0:00  _ /usr/libexec/dconf-service
user        3660  0.0  0.2 701864 14888 ?        Ssl  11:41   0:03  _ /usr/libexec/xdg-desktop-portal
user        3701  0.0  1.3 641584 84356 ?        Ssl  11:41   0:00  _ /usr/libexec/gsd-xsettings
user        3719  0.0  0.4 2654680 27680 ?       Sl   11:41   0:00  _ /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
user        3750  0.0  0.4 267800 25488 ?        Sl   11:41   0:00  _ /usr/libexec/ibus-x11
user        3752  0.0  0.4 808532 29564 ?        SNsl 11:41   0:00  _ /usr/libexec/tracker-miner-fs-3
user        3753  0.0  0.6 704224 41144 ?        Ssl  11:41   0:01  _ /usr/libexec/xdg-desktop-portal-gnome
user        3756  0.0  0.1 236468  6876 ?        Ssl  11:41   0:00  _ /usr/libexec/gvfsd-metadata
user        3894  0.0  0.4 418440 27152 ?        Ssl  11:41   0:00  _ /usr/libexec/xdg-desktop-portal-gtk
root        8632  0.0  0.7 604084 44188 ?        Ssl  12:00   0:08 /usr/libexec/fwupd/fwupd
pierre     10555  0.0  0.1  20808 12036 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd --user
  └─(Caps) 0x0000000800000000=cap_wake_alarm
pierre     10556  0.0  0.0  21344  3632 ?        S    15:01   0:00  _ (sd-pam)
pierre     10568  0.0  0.1 109136  8848 ?        Ssl  15:01   0:00  _ /usr/bin/pipewire
pierre     10570  0.0  0.1  97676  6116 ?        Ssl  15:01   0:00  _ /usr/bin/pipewire -c filter-chain.conf
pierre     10572  0.0  0.1  39132 11892 ?        Ss   15:01   0:00  _ /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration
pierre     10726  0.0  0.3 279048 21700 ?        Sl   15:01   0:00  |   _ /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration
pierre     10574  0.0  0.2 405228 16272 ?        Ssl  15:01   0:00  _ /usr/bin/wireplumber
pierre     10579  0.0  0.1 109472 10852 ?        Ssl  15:01   0:00  _ /usr/bin/pipewire-pulse
pierre     10596  0.0  0.0   9492  5176 ?        Ss   15:01   0:00  _ /usr/bin/dbus-daemon[0m --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
pierre     10665  0.0  0.1 537860  7900 ?        Ssl  15:01   0:00  _ /usr/libexec/xdg-document-portal
root       10676  0.0  0.0   2704  2060 ?        Ss   15:01   0:00  |   _ fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1004/doc                                                                                                                                            
pierre     10669  0.0  0.1 309424  6424 ?        Ssl  15:01   0:00  _ /usr/libexec/xdg-permission-store

╔══════════╣ Processes with unusual configurations
Process 786 (syslog) - /usr/sbin/rsyslogd -n -iNONE                                                                                                       
SELinux context: rsyslogd (enforce)
  └─ AppArmor profile: rsyslogd (enforce)

Process 2118 (root) - /usr/bin/python2 /usr/bin/supervisord --nodaemon --configuration=/etc/supervisord.conf --loglevel=in
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2468 (nobody) - php-fpm: master process (/etc/php-fpm.conf)                          
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2469 (root) - nginx: master process nginx -c /etc/nginx.conf 
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2475 (nobody) - nginx: worker process    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2476 (nobody) - nginx: worker process    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2477 (nobody) - nginx: worker process    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2478 (nobody) - nginx: worker process    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2482 (nobody) - php-fpm: pool www                                                    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 2483 (nobody) - php-fpm: pool www                                                    
SELinux context: docker-default (enforce)
  └─ AppArmor profile: docker-default (enforce)

Process 3375 (user) - /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration 
SELinux context: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)
  └─ AppArmor profile: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)

Process 3568 (user) - /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration 
SELinux context: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)
  └─ AppArmor profile: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)

Process 10572 (pierre) - /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration 
SELinux context: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)
  └─ AppArmor profile: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)

Process 10726 (pierre) - /snap/snapd-desktop-integration/343/usr/bin/snapd-desktop-integration 
SELinux context: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)
  └─ AppArmor profile: snap.snapd-desktop-integration.snapd-desktop-integration (enforce)


╔══════════╣ Processes with credentials in memory (root req)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#credentials-from-process-memory                                         
gdm-password process found (dump creds from memory as root)                                                                                               
gnome-keyring-daemon process found (dump creds from memory as root)
lightdm Not Found
vsftpd Not Found                                                                                                                                          
apache2 process found (dump creds from memory as root)                                                                                                    
sshd: process found (dump creds from memory as root)
mysql process found (dump creds from memory as root)
postgres Not Found
redis-server Not Found                                                                                                                                    
mongod Not Found                                                                                                                                          
memcached Not Found                                                                                                                                       
elasticsearch Not Found                                                                                                                                   
jenkins Not Found                                                                                                                                         
tomcat Not Found                                                                                                                                          
nginx process found (dump creds from memory as root)                                                                                                      
php-fpm process found (dump creds from memory as root)
supervisord process found (dump creds from memory as root)
vncserver Not Found
xrdp Not Found                                                                                                                                            
teamviewer Not Found                                                                                                                                      
                                                                                                                                                          
╔══════════╣ Opened Files by processes
Process 10568 (pierre) - /usr/bin/pipewire                                                                                                                
  └─ Has open files:
    └─ /run/user/1004/pipewire-0.lock
    └─ /run/user/1004/pipewire-0-manager.lock
    └─ /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
Process 10641 (pierre) - -sh 
  └─ Has open files:
    └─ /dev/pts/0
    └─ /dev/tty
Process 10665 (pierre) - /usr/libexec/xdg-document-portal 
  └─ Has open files:
    └─ pipe:[41804]
    └─ pipe:[43053]
    └─ pipe:[96396]
    └─ /dev/fuse

╔══════════╣ Processes with memory-mapped credential files
                                                                                                                                                          
╔══════════╣ Processes whose PPID belongs to a different user (not root)
╚ You will know if a user can somehow spawn processes as a different user                                                                                 
                                                                                                                                                          
╔══════════╣ Files opened by processes belonging to other users
╚ This is usually empty because of the lack of privileges to read other user processes information                                                        
                                                                                                                                                          
╔══════════╣ Different processes executed during 1 min (interesting is low number of repetitions)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#frequent-cron-jobs                                                      
      1 root     (fwupdmgr)                                                                                                                               
      1 fwupd-r+ /usr/bin/fwupdmgr refresh

╔══════════╣ Check for vulnerable cron jobs
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#scheduledcron-jobs                                                      
══╣ Cron jobs list                                                                                                                                        
/usr/bin/crontab                                                                                                                                          
incrontab Not Found
-rw-r--r-- 1 root root    1136 mars  31  2024 /etc/crontab                                                                                                

/etc/cron.d:
total 36
drwxr-xr-x   2 root root  4096 janv. 22 10:09 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rw-r--r--   1 root root   219 nov.  17  2023 anacron
-rw-r--r--   1 root root   201 avril  8  2024 e2scrub_all
-rw-r--r--   1 root root   712 janv. 19  2024 php
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder
-rw-r--r--   1 root root   396 janv.  9  2024 sysstat

/etc/cron.daily:
total 52
drwxr-xr-x   2 root root  4096 janv. 20 06:42 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rwxr-xr-x   1 root root   311 sept. 25  2023 0anacron
-rwxr-xr-x   1 root root   539 mars  18  2024 apache2
-rwxr-xr-x   1 root root   376 oct.  26  2024 apport
-rwxr-xr-x   1 root root  1478 mars  22  2024 apt-compat
-rwxr-xr-x   1 root root   123 f��vr.  5  2024 dpkg
-rwxr-xr-x   1 root root   377 avril  8  2024 logrotate
-rwxr-xr-x   1 root root  1395 mars  29  2024 man-db
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder
-rwxr-xr-x   1 root root   518 janv.  9  2024 sysstat

/etc/cron.hourly:
total 20
drwxr-xr-x   2 root root  4096 f��vr. 15  2025 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder

/etc/cron.monthly:
total 24
drwxr-xr-x   2 root root  4096 f��vr. 15  2025 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rwxr-xr-x   1 root root   313 sept. 25  2023 0anacron
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder

/etc/cron.weekly:
total 28
drwxr-xr-x   2 root root  4096 f��vr. 15  2025 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rwxr-xr-x   1 root root   312 sept. 25  2023 0anacron
-rwxr-xr-x   1 root root  1055 mars  29  2024 man-db
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder

/etc/cron.yearly:
total 20
drwxr-xr-x   2 root root  4096 f��vr. 15  2025 .
drwxr-xr-x 149 root root 12288 f��vr.  4 06:11 ..
-rw-r--r--   1 root root   102 mars  31  2024 .placeholder

/var/spool/anacron:
total 20
drwxr-xr-x 2 root root 4096 juin   4  2025 .
drwxr-xr-x 7 root root 4096 nov.  26 17:49 ..
-rw------- 1 root root    9 f��vr.  5 07:36 cron.daily
-rw------- 1 root root    9 janv. 26 07:48 cron.monthly
-rw------- 1 root root    9 f��vr.  4 07:43 cron.weekly

SHELL=/bin/sh

17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly
25 6    * * *   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.daily; }
47 6    * * 7   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.weekly; }
52 6    1 * *   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.monthly; }


SHELL=/bin/sh
HOME=/root
LOGNAME=root

1       5       cron.daily      run-parts --report /etc/cron.daily
7       10      cron.weekly     run-parts --report /etc/cron.weekly
@monthly        15      cron.monthly    run-parts --report /etc/cron.monthly
/etc/cron.d/sysstat:3:PATH=/usr/lib/sysstat:/usr/sbin:/usr/sbin:/usr/bin:/sbin:/bin

══╣ Checking for specific cron jobs vulnerabilities
Checking cron directories...                                                                                                                              

╔══════════╣ System timers
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#timers                                                                  
══╣ Active timers:                                                                                                                                        
NEXT                            LEFT LAST                              PASSED UNIT                           ACTIVATES                                    
Thu 2026-02-05 23:09:00 CET     8min Thu 2026-02-05 22:39:01 CET    21min ago phpsessionclean.timer          phpsessionclean.service
Thu 2026-02-05 23:10:00 CET     9min Thu 2026-02-05 23:00:01 CET      50s ago sysstat-collect.timer          sysstat-collect.service
Thu 2026-02-05 23:23:07 CET    22min Thu 2026-01-29 02:55:58 CET            - update-notifier-motd.timer     update-notifier-motd.service
Thu 2026-02-05 23:31:35 CET    30min Thu 2026-02-05 22:59:19 CET 1min 33s ago fwupd-refresh.timer            fwupd-refresh.service
Thu 2026-02-05 23:34:34 CET    33min Thu 2026-02-05 22:32:11 CET    28min ago anacron.timer                  anacron.service
Fri 2026-02-06 00:00:00 CET    59min Thu 2026-02-05 00:00:06 CET            - dpkg-db-backup.timer           dpkg-db-backup.service
Fri 2026-02-06 00:00:00 CET    59min Thu 2026-02-05 00:00:06 CET            - logrotate.timer                logrotate.service
Fri 2026-02-06 00:07:00 CET  1h 6min -                                      - sysstat-summary.timer          sysstat-summary.service
Fri 2026-02-06 02:23:14 CET 3h 22min Thu 2026-02-05 16:44:35 CET       6h ago motd-news.timer                motd-news.service
Fri 2026-02-06 06:55:59 CET       7h Thu 2026-02-05 06:49:56 CET            - apt-daily-upgrade.timer        apt-daily-upgrade.service
Fri 2026-02-06 07:01:01 CET       8h Thu 2026-02-05 01:45:34 CET            - man-db.timer                   man-db.service
Fri 2026-02-06 11:45:59 CET      12h Thu 2026-02-05 11:45:59 CET      11h ago update-notifier-download.timer update-notifier-download.service
Fri 2026-02-06 11:55:57 CET      12h Thu 2026-02-05 11:55:57 CET      11h ago systemd-tmpfiles-clean.timer   systemd-tmpfiles-clean.service
Fri 2026-02-06 12:24:37 CET      13h Thu 2026-02-05 21:53:55 CET  1h 6min ago apt-daily.timer                apt-daily.service
Sun 2026-02-08 03:10:18 CET   2 days Sun 2026-02-01 03:10:30 CET            - e2scrub_all.timer              e2scrub_all.service
Mon 2026-02-09 00:01:55 CET   3 days Mon 2026-02-02 01:17:30 CET            - fstrim.timer                   fstrim.service
-                                  - -                                      - apport-autoreport.timer        apport-autoreport.service
-                                  - -                                      - snapd.snap-repair.timer        snapd.snap-repair.service
-                                  - -                                      - ua-timer.timer                 ua-timer.service
══╣ Disabled timers:
══╣ Additional timer files:                                                                                                                               
Potential privilege escalation in timer file: /etc/systemd/user/snap.firmware-updater.firmware-notifier.timer                                             
  └─ RELATIVE_PATH: Uses relative path in Unit directive
Potential privilege escalation in timer file: /etc/systemd/user/timers.target.wants/snap.firmware-updater.firmware-notifier.timer
  └─ RELATIVE_PATH: Uses relative path in Unit directive

╔══════════╣ Services and Service Files
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#services                                                                
                                                                                                                                                          
══╣ Active services:
accounts-daemon.service                  loaded active running Accounts Service                                                                           
alsa-restore.service                     loaded active exited  Save/Restore Sound Card State
apache2.service                          loaded active running The Apache HTTP Server
apport.service                           loaded active exited  automatic crash report generation
avahi-daemon.service                     loaded active running Avahi mDNS/DNS-SD Stack
colord.service                           loaded active running Manage, Install and Generate Color Profiles
console-setup.service                    loaded active exited  Set console font and keymap
containerd.service                       loaded active running containerd container runtime
cron.service                             loaded active running Regular background program processing daemon
cups-browsed.service                     loaded active running Make remote CUPS printers available locally
cups.service                             loaded active running CUPS Scheduler
dbus.service                             loaded active running D-Bus System Message Bus
  Potential issue in service file: /usr/lib/systemd/system/dbus.service
  └─ RELATIVE_PATH: Could be executing some relative path
docker.service                           loaded active running Docker Application Container Engine
dovecot.service                          loaded active running Dovecot IMAP/POP3 email server
fwupd.service                            loaded active running Firmware update daemon
gdm.service                              loaded active running GNOME Display Manager
gnome-remote-desktop.service             loaded active running GNOME Remote Desktop
kerneloops.service                       loaded active running Tool to automatically collect and submit kernel crash signatures
keyboard-setup.service                   loaded active exited  Set the console keyboard layout
kmod-static-nodes.service                loaded active exited  Create List of Static Device Nodes
mariadb.service                          loaded active running MariaDB 10.11.14 database server
  Potential issue in service file: /usr/lib/systemd/system/mariadb.service
  └─ RELATIVE_PATH: Could be executing some relative path
ModemManager.service                     loaded active running Modem Manager
  Potential issue in service: ModemManager.service
  └─ RUNS_AS_ROOT: Service runs as root
networkd-dispatcher.service              loaded active running Dispatcher daemon for systemd-networkd
NetworkManager-wait-online.service       loaded active exited  Network Manager Wait Online
NetworkManager.service                   loaded active running Network Manager
openvpn.service                          loaded active exited  OpenVPN service
php7.4-fpm.service                       loaded active running The PHP 7.4 FastCGI Process Manager
plymouth-quit-wait.service               loaded active exited  Hold until boot process finishes up
plymouth-read-write.service              loaded active exited  Tell Plymouth To Write Out Runtime Data
plymouth-start.service                   loaded active exited  Show Plymouth Boot Screen
polkit.service                           loaded active running Authorization Manager
postfix.service                          loaded active exited  Postfix Mail Transport Agent
postfix@-.service                        loaded active running Postfix Mail Transport Agent (instance -)
power-profiles-daemon.service            loaded active running Power Profiles daemon
rsyslog.service                          loaded active running System Logging Service
rtkit-daemon.service                     loaded active running RealtimeKit Scheduling Policy Service
setvtrgb.service                         loaded active exited  Set console scheme
snapd.apparmor.service                   loaded active exited  Load AppArmor profiles managed internally by snapd
snapd.seeded.service                     loaded active exited  Wait until snapd is fully seeded
snapd.service                            loaded active running Snap Daemon
spice-vdagentd.service                   loaded active running Agent daemon for Spice guests
SplunkForwarder.service                  loaded active running Systemd service file for Splunk, generated by 'splunk enable boot-start'
  Potential issue in service file: /usr/lib/systemd/system/SplunkForwarder.service
  └─ RELATIVE_PATH: Could be executing some relative path
ssh.service                              loaded active running OpenBSD Secure Shell server
switcheroo-control.service               loaded active running Switcheroo Control Proxy service
sysstat.service                          loaded active exited  Resets System Activity Logs
  Potential issue in service: sysstat.service
  └─ RUNS_AS_ROOT: Service runs as root
systemd-binfmt.service                   loaded active exited  Set Up Additional Binary Formats
systemd-journal-flush.service            loaded active exited  Flush Journal to Persistent Storage
  Potential issue in service file: /usr/lib/systemd/system/systemd-journal-flush.service
  └─ RELATIVE_PATH: Could be executing some relative path
systemd-journald.service                 loaded active running Journal Service
systemd-logind.service                   loaded active running User Login Management
systemd-modules-load.service             loaded active exited  Load Kernel Modules
systemd-oomd.service                     loaded active running Userspace Out-Of-Memory (OOM) Killer
systemd-random-seed.service              loaded active exited  Load/Save OS Random Seed
systemd-remount-fs.service               loaded active exited  Remount Root and Kernel File Systems
  Potential issue in service: systemd-remount-fs.service
  └─ UNSAFE_CMD: Uses potentially dangerous commands
systemd-resolved.service                 loaded active running Network Name Resolution
systemd-sysctl.service                   loaded active exited  Apply Kernel Variables
systemd-timesyncd.service                loaded active running Network Time Synchronization
systemd-tmpfiles-setup-dev-early.service loaded active exited  Create Static Device Nodes in /dev gracefully
systemd-tmpfiles-setup-dev.service       loaded active exited  Create Static Device Nodes in /dev
systemd-tmpfiles-setup.service           loaded active exited  Create Volatile Files and Directories
systemd-udev-trigger.service             loaded active exited  Coldplug All udev Devices
  Potential issue in service file: /usr/lib/systemd/system/systemd-udev-trigger.service
  └─ RELATIVE_PATH: Could be executing some relative path
  Potential issue in service: systemd-udev-trigger.service
  └─ UNSAFE_CMD: Uses potentially dangerous commands
systemd-udevd.service                    loaded active running Rule-based Manager for Device Events and Files
systemd-update-utmp.service              loaded active exited  Record System Boot/Shutdown in UTMP
systemd-user-sessions.service            loaded active exited  Permit User Sessions
ubuntu-fan.service                       loaded active exited  Ubuntu FAN network setup
udisks2.service                          loaded active running Disk Manager
ufw.service                              loaded active exited  Uncomplicated firewall
unattended-upgrades.service              loaded active running Unattended Upgrades Shutdown
upower.service                           loaded active running Daemon for power management
user-runtime-dir@1000.service            loaded active exited  User Runtime Directory /run/user/1000
user-runtime-dir@1004.service            loaded active exited  User Runtime Directory /run/user/1004
user@1000.service                        loaded active running User Manager for UID 1000
user@1004.service                        loaded active running User Manager for UID 1004
wpa_supplicant.service                   loaded active running WPA supplicant
  Potential issue in service: wpa_supplicant.service
  └─ UNSAFE_CMD: Uses potentially dangerous commands
Legend: LOAD   → Reflects whether the unit definition was properly loaded.
ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
SUB    → The low-level unit activation state, values depend on unit type.
73 loaded units listed.

══╣ Disabled services:
apache-htcacheclean.service                  disabled enabled                                                                                             
apache-htcacheclean@.service                 disabled enabled
apache2@.service                             disabled enabled
apparmor.service                             disabled enabled
brltty.service                               disabled enabled
  Potential issue in service file: /usr/lib/systemd/system/brltty.service
  └─ RELATIVE_PATH: Could be executing some relative path
console-getty.service                        disabled disabled
debug-shell.service                          disabled disabled
mariadb@.service                             disabled enabled
nftables.service                             disabled enabled
openvpn-client@.service                      disabled enabled
openvpn-server@.service                      disabled enabled
openvpn@.service                             disabled enabled
postfix-resolvconf.service                   disabled enabled
rsync.service                                disabled enabled
rtkit-daemon.service                         disabled enabled
serial-getty@.service                        disabled enabled
speech-dispatcherd.service                   disabled enabled
sssd.service                                 disabled enabled
systemd-boot-check-no-failures.service       disabled disabled
systemd-confext.service                      disabled enabled
  Potential issue in service file: /usr/lib/systemd/system/systemd-confext.service
  └─ RELATIVE_PATH: Could be executing some relative path
systemd-network-generator.service            disabled enabled
systemd-networkd-wait-online.service         disabled enabled
systemd-networkd-wait-online@.service        disabled enabled
systemd-networkd.service                     disabled enabled
systemd-pcrlock-file-system.service          disabled enabled
systemd-pcrlock-firmware-code.service        disabled enabled
systemd-pcrlock-firmware-config.service      disabled enabled
systemd-pcrlock-machine-id.service           disabled enabled
systemd-pcrlock-make-policy.service          disabled enabled
systemd-pcrlock-secureboot-authority.service disabled enabled
systemd-pcrlock-secureboot-policy.service    disabled enabled
systemd-sysext.service                       disabled enabled
  Potential issue in service file: /usr/lib/systemd/system/systemd-sysext.service
  └─ RELATIVE_PATH: Could be executing some relative path
systemd-time-wait-sync.service               disabled disabled
upower.service                               disabled enabled
wpa_supplicant-nl80211@.service              disabled enabled
wpa_supplicant-wired@.service                disabled enabled
wpa_supplicant@.service                      disabled enabled
37 unit files listed.

══╣ Additional service files:
  Potential issue in service file: /etc/systemd/system/hibernate.target.wants/grub-common.service                                                         
  └─ RELATIVE_PATH: Could be executing some relative path
  Potential issue in service file: /etc/systemd/system/hybrid-sleep.target.wants/grub-common.service
  └─ RELATIVE_PATH: Could be executing some relative path
  Potential issue in service file: /etc/systemd/system/multi-user.target.wants/grub-common.service
  └─ RELATIVE_PATH: Could be executing some relative path
  Potential issue in service file: /etc/systemd/system/multi-user.target.wants/mariadb.service
  └─ RELATIVE_PATH: Could be executing some relative path
  Potential issue in service file: /etc/systemd/system/multi-user.target.wants/SplunkForwarder.service
  └─ RELATIVE_PATH: Could be executing some relative path

══╣ Service versions and status:
 [ + ]  alsa-utils                                                                                                                                        
 [ - ]  anacron
 [ - ]  apache-htcacheclean
 [ + ]  apache2
 [ - ]  apparmor
 [ + ]  apport
 [ - ]  bluetooth
 [ - ]  console-setup.sh
 [ + ]  cron
 [ + ]  cups
 [ + ]  dbus
 [ + ]  dovecot
 [ + ]  gdm3
 [ - ]  grub-common
 [ + ]  kerneloops
 [ - ]  keyboard-setup.sh
 [ + ]  kmod
 [ + ]  mariadb
 [ + ]  openvpn
 [ + ]  php7.4-fpm
 [ - ]  plymouth
 [ + ]  plymouth-log
 [ + ]  postfix
 [ + ]  procps
 [ - ]  rsync
 [ - ]  saned
 [ - ]  speech-dispatcher
 [ + ]  spice-vdagent
 [ + ]  ssh
 [ - ]  sssd
 [ + ]  sysstat
 [ + ]  ubuntu-fan
 [ + ]  ufw
 [ + ]  unattended-upgrades
 [ - ]  uuidd
 [ - ]  webmin.dpkg-new
 [ - ]  whoopsie
 [ - ]  x11-common
You can't write on systemd PATH

╔══════════╣ Systemd Information
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#systemd-path---relative-paths                                           
═╣ Systemd version and vulnerabilities? .............. 255.4                                                                                              
8.11
═╣ Services running as root? ..... 
═╣ Running services with dangerous capabilities? ... 
═╣ Services with writable paths? . apache2.service: Uses relative path 'start' (from ExecStart=/usr/sbin/apachectl start)
containerd.service: Uses relative path 'overlay' (from ExecStartPre=-/sbin/modprobe overlay)
dbus.service: Uses relative path '@dbus-daemon' (from ExecStart=@/usr/bin/dbus-daemon @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only)                                                                                                                             
kerneloops.service: Uses relative path '$DAEMON_ARGS' (from ExecStart=/usr/sbin/kerneloops $DAEMON_ARGS)
mariadb.service: Uses relative path 'ExecStartPre=/usr/bin/mariadb-install-db' (from # ExecStartPre=/usr/bin/mariadb-install-db -u mysql)
mariadb.service: Uses relative path '$MYSQLD_OPTS' (from ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_START_POSITION)
mariadb.service: Uses relative path 'ExecStartPre=sync' (from # ExecStartPre=sync)
mariadb.service: Uses relative path 'ExecStartPre=sysctl' (from # ExecStartPre=sysctl -q -w vm.drop_caches=3)
mariadb.service: Uses relative path 'Change' (from # Change ExecStart=numactl --interleave=all /usr/sbin/mariadbd......)
networkd-dispatcher.service: Uses relative path '$networkd_dispatcher_args' (from ExecStart=/usr/bin/networkd-dispatcher $networkd_dispatcher_args)
php7.4-fpm.service: Uses relative path 'install' (from ExecStartPost=-/usr/lib/php/php-fpm-socket-helper install /run/php/php-fpm.sock /etc/php/7.4/fpm/pool.d/www.conf 74)                                                                                                                                         
power-profiles-daemon.service: Uses relative path 'To' (from # To enable debugging add a -vv to the ExecStart line)
rsyslog.service: Uses relative path '-n' (from ExecStart=/usr/sbin/rsyslogd -n -iNONE)
spice-vdagentd.service: Uses relative path '$SPICE_VDAGENTD_EXTRA_ARGS' (from ExecStart=/usr/sbin/spice-vdagentd $SPICE_VDAGENTD_EXTRA_ARGS)
SplunkForwarder.service: Uses relative path '_internal_launch_under_systemd' (from ExecStart=/opt/splunkforwarder/bin/splunk _internal_launch_under_systemd)                                                                                                                                                        

╔══════════╣ Systemd PATH
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#systemd-path---relative-paths                                           
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/snap/bin                                                                                          

╔══════════╣ Analyzing .socket files
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sockets                                                                 
                                                                                                                                                          
╔══════════╣ Unix Sockets Analysis
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sockets                                                                 
/run/avahi-daemon/socket                                                                                                                                  
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/containerd/containerd.sock
  └─( - Can Connect)
  └─(Owned by root)
/run/containerd/containerd.sock.ttrpc
  └─( - Can Connect)
  └─(Owned by root)
/run/cups/cups.sock
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─ HTTP Socket (owned by root:root):
     └─ Response to /index (limit 30):
       <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
       <HTML>
       <HEAD>
        <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
        <TITLE>Requête incorrecte. - CUPS v2.4.7</TITLE>
        <LINK REL="STYLESHEET" TYPE="text/css" HREF="/cups.css">
       </HEAD>
       <BODY>
       <H1>Requête incorrecte.</H1>
       <P></P>
       </BODY>
       </HTML>
  └─(Owned by root)
/run/dbus/system_bus_socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/docker.sock
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/anvil
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/anvil-auth-penalty
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/auth-client
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/auth-login
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/auth-master
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/auth-userdb
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/dovecot/auth-worker
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/config
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/dict
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/dict-async
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/director-admin
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/director-userdb
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/dns-client
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/dovecot/doveadm-server
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/imap-hibernate
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/imap-master
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/imap-urlauth
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/dovecot/imap-urlauth-worker
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/indexer
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/dovecot/indexer-worker
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/ipc
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/log-errors
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/master
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/old-stats
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/replication-notify
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/replicator
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/stats-reader
  └─( - Can Connect)
  └─(Owned by root)
/run/dovecot/stats-writer
  └─( - Can Connect)
  └─(Owned by root)
/run/gdm3/dbus/dbus-SuKmq3yQ
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/gdm3/dbus/dbus-VvQE2m43
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/mysqld/mysqld.sock
  └─(Read Write Execute (Weak Permissions: 777)  - Can Connect)
/run/php/php7.4-fpm.sock
  └─( - Can Connect)
/run/snapd-snap.socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─ HTTP Socket (owned by root:root):
     └─ Response to /index (limit 30):
       {"type":"error","status-code":403,"status":"Forbidden","result":{"message":"access denied","kind":"login-required"}}
  └─(Owned by root)
/run/snapd.socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─ HTTP Socket (owned by root:root):
     └─ Response to /index (limit 30):
       {"type":"sync","status-code":200,"status":"OK","result":["TBD"]}
  └─(Owned by root)
/run/spice-vdagentd/spice-vdagent-sock
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/fsck.progress
  └─( - Can Connect)
  └─(Owned by root)
/run/systemd/inaccessible/sock
  └─( - Can Connect)
  └─(Owned by root)
/run/systemd/io.systemd.ManagedOOM
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/io.systemd.sysext
  └─( - Can Connect)
  └─(Owned by root)
/run/systemd/journal/dev-log
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/journal/io.systemd.journal
  └─( - Can Connect)
  └─(Owned by root)
/run/systemd/journal/socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/journal/stdout
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/journal/syslog
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/notify
  └─(Read Write Execute (Weak Permissions: 777)  - Can Connect)
  └─(Owned by root)
/run/systemd/oom/io.systemd.ManagedOOM
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/systemd/private
  └─( - Can Connect)
  └─(Owned by root)
/run/systemd/resolve/io.systemd.Resolve
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/systemd/resolve/io.systemd.Resolve.Monitor
  └─( - Can Connect)
/run/systemd/userdb/io.systemd.DynamicUser
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/run/udev/control
  └─( - Can Connect)
  └─(Owned by root)
/run/user/1004/bus
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/gcr/ssh
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/gnupg/S.dirmngr
  └─(Read Write  - Can Connect)
/run/user/1004/gnupg/S.gpg-agent
  └─(Read Write  - Can Connect)
/run/user/1004/gnupg/S.gpg-agent.browser
  └─(Read Write  - Can Connect)
/run/user/1004/gnupg/S.gpg-agent.extra
  └─(Read Write  - Can Connect)
/run/user/1004/gnupg/S.gpg-agent.ssh
  └─(Read Write  - Can Connect)
/run/user/1004/gnupg/S.keyboxd
  └─(Read Write  - Can Connect)
/run/user/1004/keyring/control
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/pipewire-0
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/pipewire-0-manager
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/pk-debconf-socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/pulse/native
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/snapd-session-agent.socket
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─ HTTP Socket (owned by pierre:pierre):
     └─ Response to /index (limit 30):
       {"type":"error","result":{"message":"method \"GET\" not allowed"}}
/run/user/1004/speech-dispatcher/speechd.sock
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
/run/user/1004/systemd/inaccessible/sock
  └─( - Can Connect)
/run/user/1004/systemd/notify
  └─(Read Write Execute  - Can Connect)
/run/user/1004/systemd/private
  └─(Read Write Execute  - Can Connect)
/run/uuidd/request
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/tmp/.ICE-unix/1304
  └─(Read Write Execute (Weak Permissions: 777)  - Can Connect)
/tmp/.ICE-unix/3132
  └─(Read Write Execute (Weak Permissions: 777)  - Can Connect)
/tmp/.X11-unix/X0
  └─(Read Execute  - Can Connect)
/tmp/.X11-unix/X1
  └─(Read Execute  - Can Connect)
/tmp/.X11-unix/X1024
  └─(Read Execute  - Can Connect)
/tmp/.X11-unix/X1025
  └─(Read Execute  - Can Connect)
/var/lib/sss/pipes/autofs
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/var/lib/sss/pipes/nss
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/var/lib/sss/pipes/pac
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/var/lib/sss/pipes/pam
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/var/lib/sss/pipes/ssh
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)
/var/lib/sss/pipes/sudo
  └─( - Can Connect)
  └─(Owned by root)
/var/spool/postfix/dev/log
  └─(Read Write (Weak Permissions: 666)  - Can Connect)
  └─(Owned by root)

╔══════════╣ D-Bus Analysis
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#d-bus                                                                   
NAME                                   PID PROCESS         USER                 CONNECTION    UNIT                          SESSION DESCRIPTION           
:1.0                                   531 systemd-oomd    systemd-oom          :1.0          systemd-oomd.service          -       -
:1.1                                   532 systemd-resolve systemd-resolve      :1.1          systemd-resolved.service      -       -
:1.10                                  645 power-profiles- root                 :1.10         power-profiles-daemon[0m.service -       -
:1.100                                3475 gsd-printer     user                 :1.100        user@1000.service             -       -
:1.101                                3504 evolution-addre user                 :1.101        user@1000.service             -       -
:1.103                                3300 gsd-media-keys  user                 :1.103        user@1000.service             -       -
:1.104                                3299 gsd-keyboard    user                 :1.104        user@1000.service             -       -
:1.107                                3302 gsd-power       user                 :1.107        user@1000.service             -       -
:1.108                                3719 gjs             user                 :1.108        user@1000.service             -       -
:1.109                                3701 gsd-xsettings   user                 :1.109        user@1000.service             -       -
:1.11                                  680 NetworkManager  root                 :1.11         NetworkManager.service        -       -
:1.110                                3776 gsd-disk-utilit user                 :1.110        user@1000.service             -       -
:1.111                                3752 tracker-miner-f user                 :1.111        user@1000.service             -       -
:1.112                                3753 xdg-desktop-por user                 :1.112        user@1000.service             -       -
:1.113                                3660 xdg-desktop-por user                 :1.113        user@1000.service             -       -
:1.114                                3894 xdg-desktop-por user                 :1.114        user@1000.service             -       -
:1.12                                  644 polkitd         polkitd              :1.12         polkit.service                -       -
:1.1242                              75022 gnome-keyring-d pierre               :1.1242       user@1004.service             -       -
:1.1243                              75613 busctl          pierre               :1.1243       session-40.scope              40      -
:1.13                                  651 systemd-logind  root                 :1.13         systemd-logind.service        -       -
:1.15                                  643 networkd-dispat root                 :1.15         networkd-dispatcher.service   -       -
:1.16                                  776 ModemManager    root                 :1.16         ModemManager.service          -       -
:1.2                                   533 systemd-timesyn systemd-timesync     :1.2          systemd-timesyncd.service     -       -
:1.20                                  885 cupsd           root                 :1.20         cups.service                  -       -
:1.21                                  940 kerneloops      kernoops             :1.21         kerneloops.service            -       -
:1.22                                  972 kerneloops      kernoops             :1.22         kerneloops.service            -       -
:1.24                                  931 cups-browsed    cups-browsed         :1.24         cups-browsed.service          -       -
:1.25                                  975 gdm3            root                 :1.25         gdm.service                   -       -
:1.26                                  931 cups-browsed    cups-browsed         :1.26         cups-browsed.service          -       -
:1.27                                  892 unattended-upgr root                 :1.27         unattended-upgrades.service   -       -
:1.276                                8632 fwupd           root                 :1.276        fwupd.service                 -       -
:1.3                                   632 avahi-daemon    avahi                :1.3          avahi-daemon.service          -       -
:1.306                               10555 systemd         pierre               :1.306        user@1004.service             -       -
:1.307                               10579 pipewire-pulse  pierre               :1.307        user@1004.service             -       -
:1.308                               10570 pipewire        pierre               :1.308        user@1004.service             -       -
:1.309                               10574 wireplumber     pierre               :1.309        user@1004.service             -       -
:1.310                               10568 pipewire        pierre               :1.310        user@1004.service             -       -
:1.311                               10574 wireplumber     pierre               :1.311        user@1004.service             -       -
:1.312                               10726 snapd-desktop-i pierre               :1.312        user@1004.service             -       -
:1.36                                 1303 rtkit-daemon    root                 :1.36         rtkit-daemon.service          -       -
:1.4                                     1 systemd         root                 :1.4          init.scope                    -       -
:1.41                                  648 snapd           root                 :1.41         snapd.service                 -       -
:1.45                                 2116 colord          colord               :1.45         colord.service                -       -
:1.5                                   653 udisksd         root                 :1.5          udisks2.service               -       -
:1.51                                 2221 upowerd         root                 :1.51         upower.service                -       -
:1.6                                   682 wpa_supplicant  root                 :1.6          wpa_supplicant.service        -       -
:1.7                                   639 gnome-remote-de gnome-remote-desktop :1.7          gnome-remote-desktop.service  -       -
:1.71                                 2565 spice-vdagentd  root                 :1.71         spice-vdagentd.service        -       -
:1.74                                 2867 gdm-session-wor root                 :1.74         session-2.scope               2       -
:1.78                                 2904 systemd         user                 :1.78         user@1000.service             -       -
:1.79                                 2942 gnome-keyring-d user                 :1.79         user@1000.service             -       -
:1.8                                   649 switcheroo-cont root                 :1.8          switcheroo-control.service    -       -
:1.80                                 2928 wireplumber     user                 :1.80         user@1000.service             -       -
:1.81                                 2921 pipewire        user                 :1.81         user@1000.service             -       -
:1.82                                 2925 pipewire        user                 :1.82         user@1000.service             -       -
:1.83                                 2929 pipewire-pulse  user                 :1.83         user@1000.service             -       -
:1.84                                 2928 wireplumber     user                 :1.84         user@1000.service             -       -
:1.85                                 2979 gdm-wayland-ses user                 :1.85         session-2.scope               2       -
:1.86                                 3132 gnome-session-b user                 :1.86         user@1000.service             -       -
:1.87                                 3167 gnome-shell     user                 :1.87         user@1000.service             -       -
:1.9                                   619 accounts-daemon[0m root                 :1.9          accounts-daemon.service       -       -
:1.90                                 3277 gjs             user                 :1.90         user@1000.service             -       -
:1.92                                 3309 gsd-sharing     user                 :1.92         user@1000.service             -       -
:1.93                                 3306 gsd-rfkill      user                 :1.93         user@1000.service             -       -
:1.94                                 3304 goa-daemon[0m      user                 :1.94         user@1000.service             -       -
:1.96                                 3384 ibus-dconf      user                 :1.96         user@1000.service             -       -
:1.97                                 3455 gvfs-udisks2-vo user                 :1.97         user@1000.service             -       -
:1.98                                 3303 gsd-print-notif user                 :1.98         user@1000.service             -       -
:1.99                                 3381 evolution-calen user                 :1.99         user@1000.service             -       -
com.canonical.UbuntuAdvantage            - -               -                    (activatable) -                             -       -
  └─ Interfaces:
     └─ /com
       └─ /com/canonical
         └─ /com/canonical/UbuntuAdvantage
           ├─ /com/canonical/UbuntuAdvantage/Manager
           └─ /com/canonical/UbuntuAdvantage/Services
             ├─ /com/canonical/UbuntuAdvantage/Services/anbox_2dcloud
             ├─ /com/canonical/UbuntuAdvantage/Services/esm_2dapps
             ├─ /com/canonical/UbuntuAdvantage/Services/esm_2dinfra
             ├─ /com/canonical/UbuntuAdvantage/Services/fips_2dupdates
             ├─ /com/canonical/UbuntuAdvantage/Services/landscape
             ├─ /com/canonical/UbuntuAdvantage/Services/livepatch
             ├─ /com/canonical/UbuntuAdvantage/Services/realtime_2dkernel
             └─ /com/canonical/UbuntuAdvantage/Services/usg
com.hp.hplip                             - -               -                    (activatable) -                             -       -
com.ubuntu.LanguageSelector              - -               -                    (activatable) -                             -       -
com.ubuntu.SoftwareProperties            - -               -                    (activatable) -                             -       -
com.ubuntu.WhoopsiePreferences           - -               -                    (activatable) -                             -       -
fi.w1.wpa_supplicant1                  682 wpa_supplicant  root                 :1.6          wpa_supplicant.service        -       -
io.netplan.Netplan                       - -               -                    (activatable) -                             -       -
net.hadess.PowerProfiles               645 power-profiles- root                 :1.10         power-profiles-daemon[0m.service -       -
  └─(Running as root)
  └─ Interfaces:
     ├─ /net
     │ └─ /net/hadess
     │   └─ /net/hadess/PowerProfiles
     └─ /org
       └─ /org/freedesktop
         └─ /org/freedesktop/UPower
           └─ /org/freedesktop/UPower/PowerProfiles
  └─(Potential privilege escalation vector)
     └─ Try: busctl call net.hadess.PowerProfiles / [Interface] [Method] [Arguments]
     └─ Or: dbus-send --session --dest=net.hadess.PowerProfiles / [Interface] [Method] [Arguments]
net.hadess.SwitcherooControl           649 switcheroo-cont root                 :1.8          switcheroo-control.service    -       -
net.reactivated.Fprint                   - -               -                    (activatable) -                             -       -
  └─ Interfaces:
     └─ /net
       └─ /net/reactivated
         └─ /net/reactivated/Fprint
           └─ /net/reactivated/Fprint/Manager
org.bluez                                - -               -                    (activatable) -                             -       -
org.debian.apt                           - -               -                    (activatable) -                             -       -
org.freedesktop.Accounts               619 accounts-daemon[0m root                 :1.9          accounts-daemon.service       -       -
org.freedesktop.Avahi                  632 avahi-daemon    avahi                :1.3          avahi-daemon.service          -       -
org.freedesktop.ColorManager          2116 colord          colord               :1.45         colord.service                -       -
org.freedesktop.DBus                     1 systemd         root                 -             init.scope                    -       -
org.freedesktop.GeoClue2                 - -               -                    (activatable) -                             -       -
org.freedesktop.ModemManager1          776 ModemManager    root                 :1.16         ModemManager.service          -       -
org.freedesktop.NetworkManager         680 NetworkManager  root                 :1.11         NetworkManager.service        -       -
org.freedesktop.PackageKit               - -               -                    (activatable) -                             -       -
org.freedesktop.PolicyKit1             644 polkitd         polkitd              :1.12         polkit.service                -       -
org.freedesktop.RealtimeKit1          1303 rtkit-daemon    root                 :1.36         rtkit-daemon.service          -       -
org.freedesktop.UDisks2                653 udisksd         root                 :1.5          udisks2.service               -       -
org.freedesktop.UPower                2221 upowerd         root                 :1.51         upower.service                -       -
org.freedesktop.UPower.PowerProfiles   645 power-profiles- root                 :1.10         power-profiles-daemon[0m.service -       -
org.freedesktop.bolt                     - -               -                    (activatable) -                             -       -
org.freedesktop.fwupd                 8632 fwupd           root                 :1.276        fwupd.service                 -       -
org.freedesktop.hostname1                - -               -                    (activatable) -                             -       -
org.freedesktop.locale1                  - -               -                    (activatable) -                             -       -
org.freedesktop.login1                 651 systemd-logind  root                 :1.13         systemd-logind.service        -       -
org.freedesktop.network1                 - -               -                    (activatable) -                             -       -
org.freedesktop.nm_dispatcher            - -               -                    (activatable) -                             -       -
org.freedesktop.nm_priv_helper           - -               -                    (activatable) -                             -       -
org.freedesktop.oom1                   531 systemd-oomd    systemd-oom          :1.0          systemd-oomd.service          -       -
  └─ Interfaces:
     └─ /org
       └─ /org/freedesktop
         ├─ /org/freedesktop/LogControl1
         └─ /org/freedesktop/oom1
org.freedesktop.realmd                   - -               -                    (activatable) -                             -       -
org.freedesktop.resolve1               532 systemd-resolve systemd-resolve      :1.1          systemd-resolved.service      -       -
org.freedesktop.sssd.infopipe            - -               -                    (activatable) -                             -       -
  └─ Interfaces:
     Failed to introspect object / of service org.freedesktop.sssd.infopipe: Permission non accordée
     No objects discovered.
org.freedesktop.systemd1                 1 systemd         root                 :1.4          init.scope                    -       -
org.freedesktop.thermald                 - -               -                    (activatable) -                             -       -
org.freedesktop.timedate1                - -               -                    (activatable) -                             -       -
org.freedesktop.timesync1              533 systemd-timesyn systemd-timesync     :1.2          systemd-timesyncd.service     -       -
org.gnome.DisplayManager               975 gdm3            root                 :1.25         gdm.service                   -       -
org.gnome.RemoteDesktop                639 gnome-remote-de gnome-remote-desktop :1.7          gnome-remote-desktop.service  -       -
  └─ Interfaces:
     └─ /org
       └─ /org/gnome
         └─ /org/gnome/RemoteDesktop
           └─ /org/gnome/RemoteDesktop/Rdp
             ├─ /org/gnome/RemoteDesktop/Rdp/Dispatcher
             ├─ /org/gnome/RemoteDesktop/Rdp/Handovers
             └─ /org/gnome/RemoteDesktop/Rdp/Server
org.opensuse.CupsPkHelper.Mechanism      - -               -                    (activatable) -                             -       -

╔══════════╣ D-Bus Configuration Files
Analyzing /etc/dbus-1/system.d/com.hp.hplip.conf:                                                                                                         
  └─(Allow rules in default context)
             └─     <allow send_destination="com.hp.hplip"/>
            <allow send_interface="com.hp.hplip"/>
Analyzing /etc/dbus-1/system.d/com.redhat.NewPrinterNotification.conf:
  └─(Allow rules in default context)
             └─                 <allow own="com.redhat.NewPrinterNotification"/>
                        <allow send_destination="com.redhat.NewPrinterNotification"
Analyzing /etc/dbus-1/system.d/com.redhat.PrinterDriversInstaller.conf:
  └─(Allow rules in default context)
             └─                 <allow own="com.redhat.PrinterDriversInstaller"/>
                        <allow send_destination="com.redhat.PrinterDriversInstaller"
Analyzing /etc/dbus-1/system.d/com.ubuntu.LanguageSelector.conf:
  └─(Allow rules in default context)
             └─                 <allow send_destination="com.ubuntu.LanguageSelector"
                        <allow receive_interface="com.ubuntu.LanguageSelector"
Analyzing /etc/dbus-1/system.d/com.ubuntu.SoftwareProperties.conf:
  └─(Allow rules in default context)
             └─     <allow send_destination="com.ubuntu.SoftwareProperties"
            <allow send_destination="com.ubuntu.SoftwareProperties"
            <allow send_destination="com.ubuntu.DeviceDriver"
Analyzing /etc/dbus-1/system.d/com.ubuntu.WhoopsiePreferences.conf:
  └─(Allow rules in default context)
             └─     <allow send_destination="com.ubuntu.WhoopsiePreferences" 
            <allow send_destination="com.ubuntu.WhoopsiePreferences" 
            <allow send_destination="com.ubuntu.WhoopsiePreferences" 
Analyzing /etc/dbus-1/system.d/kerneloops.conf:
  └─(Weak user policy found)
     └─   <policy user="kernoops">
Analyzing /etc/dbus-1/system.d/org.debian.apt.conf:
  └─(Allow rules in default context)
             └─     <allow send_interface="org.debian.apt"/>
            <allow send_interface="org.debian.apt.transaction"/>
            <allow send_destination="org.debian.apt"/>
Analyzing /etc/dbus-1/system.d/org.opensuse.CupsPkHelper.Mechanism.conf:
  └─(Weak user policy found)
     └─   <policy user="cups-pk-helper">
  └─(Allow rules in default context)
             └─     <allow send_destination="org.opensuse.CupsPkHelper.Mechanism"/>

══╣ D-Bus Session Bus Analysis
(Access to session bus available)                                                                                                                         
           string "org.freedesktop.DBus"
           string ":1.7"
           string ":1.8"
           string "org.freedesktop.systemd1"
           string ":1.10"
           string "org.freedesktop.impl.portal.PermissionStore"
           string "org.gnome.keyring"
           string ":1.11"
           string ":1.12"
           string ":1.13"
           string "org.pulseaudio.Server"
           string ":1.15"
           string "org.freedesktop.secrets"
           string ":1.4"
           string ":1.5"
           string "org.freedesktop.portal.Documents"
           string "io.snapcraft.SessionAgent"
           string ":1.6"
  └─(Known dangerous session service: org.freedesktop.systemd1)
     └─ Try: dbus-send --session --dest=org.freedesktop.systemd1 / [Interface] [Method] [Arguments]

╔══════════╣ Legacy r-commands (rsh/rlogin/rexec) and host-based trust
                                                                                                                                                          
══╣ Listening r-services (TCP 512-514)
                                                                                                                                                          
══╣ systemd units exposing r-services
rlogin|rsh|rexec units Not Found                                                                                                                          
                                                                                                                                                          
══╣ inetd/xinetd configuration for r-services
/etc/inetd.conf Not Found                                                                                                                                 
/etc/xinetd.d Not Found                                                                                                                                   
                                                                                                                                                          
══╣ Installed r-service server packages
  No related packages found via dpkg                                                                                                                      

══╣ /etc/hosts.equiv and /etc/shosts.equiv
                                                                                                                                                          
══╣ Per-user .rhosts files
.rhosts Not Found                                                                                                                                         
                                                                                                                                                          
══╣ PAM rhosts authentication
/etc/pam.d/rlogin|rsh Not Found                                                                                                                           
                                                                                                                                                          
══╣ SSH HostbasedAuthentication
  HostbasedAuthentication no or not set                                                                                                                   

══╣ Potential DNS control indicators (local)
  Not detected                                                                                                                                            

╔══════════╣ Crontab UI (root) misconfiguration checks
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#scheduledcron-jobs                                                      
crontab-ui Not Found                                                                                                                                      
╔══════════╣ Deleted files still open                                                                                                                     
╚ Open deleted files can hide tools and still consume disk space                                                                                          
COMMAND     PID   USER   FD   TYPE DEVICE SIZE/OFF NLINK NODE NAME                                                                                        
pipewire  10568 pierre   36u   REG    0,1     2312     0 1510 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire  10568 pierre   39u   REG    0,1     2312     0 1511 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire  10568 pierre   44u   REG    0,1     2312     0 1512 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire  10568 pierre   47u   REG    0,1     2312     0 3548 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire  10568 pierre   49u   REG    0,1     4096     0 3549 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=4096 (deleted)
pipewire  10568 pierre   50u   REG    0,1    32832     0 3550 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=32832 (deleted)
pipewire  10568 pierre   52u   REG    0,1    32832     0 3551 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=32832 (deleted)
pipewire- 10579 pierre   25u   REG    0,1     2312     0 1512 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire- 10579 pierre   26u   REG    0,1     2312     0 3547 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire- 10579 pierre   27u   REG    0,1     2312     0 3548 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
pipewire- 10579 pierre   33u   REG    0,1    32832     0 3550 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=32832 (deleted)
pipewire- 10579 pierre   34u   REG    0,1    32832     0 3551 /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=32832 (deleted)
sd_dummy  75244 pierre   19u   REG    0,1 67108864     0 3546 /memfd:pulseaudio (deleted)



                              ╔═════════════════════╗
══════════════════════════════╣ Network Information ╠══════════════════════════════                                                                       
                              ╚═════════════════════╝                                                                                                     
╔══════════╣ Interfaces
# symbolic names for networks, see networks(5) for more information                                                                                       
link-local 169.254.0.0
docker0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        inet6 fe80::b43b:d2ff:fe15:d332  prefixlen 64  scopeid 0x20<link>
        ether b6:3b:d2:15:d3:32  txqueuelen 0  (Ethernet)
        RX packets 6  bytes 200 (200.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 93  bytes 11023 (11.0 KB)
        TX errors 0  dropped 9 overruns 0  carrier 0  collisions 0

enp6s18: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.250  netmask 255.255.255.0  broadcast 192.168.1.255
        ether bc:24:11:d3:7a:02  txqueuelen 1000  (Ethernet)
        RX packets 81660  bytes 17623339 (17.6 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 99975  bytes 24721851 (24.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Boucle locale)
        RX packets 23728  bytes 3774139 (3.7 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 23728  bytes 3774139 (3.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vethacc100f: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::b892:e7ff:fef6:6984  prefixlen 64  scopeid 0x20<link>
        ether ba:92:e7:f6:69:84  txqueuelen 0  (Ethernet)
        RX packets 6  bytes 284 (284.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 159  bytes 18358 (18.3 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


╔══════════╣ Hostname, hosts and DNS
══╣ Hostname Information                                                                                                                                  
System hostname: mail.iron4software.local                                                                                                                 
FQDN: mail.iron4software.local

══╣ Hosts File Information
Contents of /etc/hosts:                                                                                                                                   
  127.0.0.1 localhost
  127.0.1.1 user-Standard-PC-Q35-ICH9-2009
  192.168.1.250 mail.iron4software.local
  ::1     ip6-localhost ip6-loopback
  fe00::0 ip6-localnet
  ff00::0 ip6-mcastprefix
  ff02::1 ip6-allnodes
  ff02::2 ip6-allrouters

══╣ DNS Configuration
DNS Servers (resolv.conf):                                                                                                                                
  127.0.0.53
  search .
-e 
Systemd-resolved configuration:
  [Resolve]
-e 
NetworkManager DNS settings:
-e 
DNS Domain Information:
iron4software.local
(none)

╔══════════╣ Networks and neighbours
══╣ Routing Information                                                                                                                                   
default via 192.168.1.254 dev enp6s18 proto static metric 100                                                                                             
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 
192.168.1.0/24 dev enp6s18 proto kernel scope link src 192.168.1.250 metric 100 
-e 
Neighbor table:
192.168.1.8 dev enp6s18 FAILED 
192.168.1.13 dev enp6s18 FAILED 
192.168.1.2 dev enp6s18 FAILED 
192.168.1.7 dev enp6s18 FAILED 
192.168.1.28 dev enp6s18 FAILED 
192.168.1.17 dev enp6s18 FAILED 
192.168.1.22 dev enp6s18 FAILED 
192.168.1.43 dev enp6s18 FAILED 
192.168.1.32 dev enp6s18 FAILED 
192.168.1.37 dev enp6s18 FAILED 
192.168.1.58 dev enp6s18 FAILED 
192.168.1.63 dev enp6s18 FAILED 
192.168.1.52 dev enp6s18 FAILED 
192.168.1.12 dev enp6s18 FAILED 
192.168.1.1 dev enp6s18 FAILED 
192.168.1.6 dev enp6s18 FAILED 
192.168.1.27 dev enp6s18 FAILED 
192.168.1.16 dev enp6s18 FAILED 
192.168.1.21 dev enp6s18 FAILED 
192.168.1.42 dev enp6s18 FAILED 
192.168.1.47 dev enp6s18 FAILED 
192.168.1.36 dev enp6s18 FAILED 
192.168.1.57 dev enp6s18 FAILED 
192.168.1.62 dev enp6s18 FAILED 
192.168.1.51 dev enp6s18 FAILED 
192.168.1.11 dev enp6s18 FAILED 
192.168.1.0 dev enp6s18 FAILED 
192.168.1.5 dev enp6s18 FAILED 
192.168.1.26 dev enp6s18 FAILED 
192.168.1.31 dev enp6s18 FAILED 
192.168.1.20 dev enp6s18 FAILED 
192.168.1.41 dev enp6s18 FAILED 
192.168.1.46 dev enp6s18 FAILED 
192.168.1.35 dev enp6s18 FAILED 
192.168.1.56 dev enp6s18 FAILED 
192.168.1.61 dev enp6s18 FAILED 
192.168.1.50 dev enp6s18 FAILED 
192.168.1.55 dev enp6s18 FAILED 
192.168.1.254 dev enp6s18 lladdr bc:24:11:67:95:92 REACHABLE 
192.168.1.10 dev enp6s18 FAILED 
192.168.1.15 dev enp6s18 FAILED 
192.168.1.4 dev enp6s18 FAILED 
192.168.1.25 dev enp6s18 FAILED 
192.168.1.30 dev enp6s18 FAILED 
192.168.1.19 dev enp6s18 FAILED 
192.168.1.40 dev enp6s18 FAILED 
192.168.1.45 dev enp6s18 FAILED 
192.168.1.34 dev enp6s18 FAILED 
192.168.1.39 dev enp6s18 FAILED 
192.168.1.60 dev enp6s18 FAILED 
192.168.1.49 dev enp6s18 FAILED 
192.168.1.54 dev enp6s18 FAILED 
192.168.1.253 dev enp6s18 lladdr bc:24:11:67:dc:89 REACHABLE 
172.17.0.2 dev docker0 lladdr 3e:04:04:d2:06:07 STALE 
192.168.1.9 dev enp6s18 FAILED 
192.168.1.14 dev enp6s18 lladdr bc:24:11:d3:1b:26 STALE 
192.168.1.3 dev enp6s18 FAILED 
192.168.1.24 dev enp6s18 FAILED 
192.168.1.29 dev enp6s18 FAILED 
192.168.1.18 dev enp6s18 FAILED 
192.168.1.23 dev enp6s18 FAILED 
192.168.1.44 dev enp6s18 FAILED 
192.168.1.33 dev enp6s18 FAILED 
192.168.1.38 dev enp6s18 FAILED 
192.168.1.59 dev enp6s18 FAILED 
192.168.1.48 dev enp6s18 FAILED 
192.168.1.53 dev enp6s18 FAILED 
192.168.1.252 dev enp6s18 lladdr bc:24:11:0a:84:89 STALE 
══╣ ARP Information
Adresse                  TypeMap AdresseMat          Indicateurs           Iface                                                                          
192.168.1.8                      (incomplet)                               enp6s18
192.168.1.13                     (incomplet)                               enp6s18
192.168.1.2                      (incomplet)                               enp6s18
192.168.1.7                      (incomplet)                               enp6s18
192.168.1.28                     (incomplet)                               enp6s18
192.168.1.17                     (incomplet)                               enp6s18
192.168.1.22                     (incomplet)                               enp6s18
192.168.1.43                     (incomplet)                               enp6s18
192.168.1.32                     (incomplet)                               enp6s18
192.168.1.37                     (incomplet)                               enp6s18
192.168.1.58                     (incomplet)                               enp6s18
192.168.1.63                     (incomplet)                               enp6s18
192.168.1.52                     (incomplet)                               enp6s18
192.168.1.12                     (incomplet)                               enp6s18
192.168.1.1                      (incomplet)                               enp6s18
192.168.1.6                      (incomplet)                               enp6s18
192.168.1.27                     (incomplet)                               enp6s18
192.168.1.16                     (incomplet)                               enp6s18
192.168.1.21                     (incomplet)                               enp6s18
192.168.1.42                     (incomplet)                               enp6s18
192.168.1.47                     (incomplet)                               enp6s18
192.168.1.36                     (incomplet)                               enp6s18
192.168.1.57                     (incomplet)                               enp6s18
192.168.1.62                     (incomplet)                               enp6s18
192.168.1.51                     (incomplet)                               enp6s18
192.168.1.11                     (incomplet)                               enp6s18
192.168.1.0                      (incomplet)                               enp6s18
192.168.1.5                      (incomplet)                               enp6s18
192.168.1.26                     (incomplet)                               enp6s18
192.168.1.31                     (incomplet)                               enp6s18
192.168.1.20                     (incomplet)                               enp6s18
192.168.1.41                     (incomplet)                               enp6s18
192.168.1.46                     (incomplet)                               enp6s18
192.168.1.35                     (incomplet)                               enp6s18
192.168.1.56                     (incomplet)                               enp6s18
192.168.1.61                     (incomplet)                               enp6s18
192.168.1.50                     (incomplet)                               enp6s18
192.168.1.55                     (incomplet)                               enp6s18
pfSense.iron.local       ether   bc:24:11:67:95:92   C                     enp6s18
192.168.1.10                     (incomplet)                               enp6s18
192.168.1.15                     (incomplet)                               enp6s18
192.168.1.4                      (incomplet)                               enp6s18
192.168.1.25                     (incomplet)                               enp6s18
192.168.1.30                     (incomplet)                               enp6s18
192.168.1.19                     (incomplet)                               enp6s18
192.168.1.40                     (incomplet)                               enp6s18
192.168.1.45                     (incomplet)                               enp6s18
192.168.1.34                     (incomplet)                               enp6s18
192.168.1.39                     (incomplet)                               enp6s18
192.168.1.60                     (incomplet)                               enp6s18
192.168.1.49                     (incomplet)                               enp6s18
192.168.1.54                     (incomplet)                               enp6s18
192.168.1.253            ether   bc:24:11:67:dc:89   C                     enp6s18
172.17.0.2               ether   3e:04:04:d2:06:07   C                     docker0
192.168.1.9                      (incomplet)                               enp6s18
Client-Windows.iron.loc  ether   bc:24:11:d3:1b:26   C                     enp6s18
192.168.1.3                      (incomplet)                               enp6s18
192.168.1.24                     (incomplet)                               enp6s18
192.168.1.29                     (incomplet)                               enp6s18
192.168.1.18                     (incomplet)                               enp6s18
192.168.1.23                     (incomplet)                               enp6s18
192.168.1.44                     (incomplet)                               enp6s18
192.168.1.33                     (incomplet)                               enp6s18
192.168.1.38                     (incomplet)                               enp6s18
192.168.1.59                     (incomplet)                               enp6s18
192.168.1.48                     (incomplet)                               enp6s18
192.168.1.53                     (incomplet)                               enp6s18
iron4software.iron4soft  ether   bc:24:11:0a:84:89   C                     enp6s18
══╣ Additional Neighbor Information
                                                                                                                                                          
╔══════════╣ Active Ports
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#open-ports                                                              
══╣ Active Ports (netstat)                                                                                                                                
tcp        0      0 127.0.0.1:39283         0.0.0.0:*               LISTEN      -                                                                         
tcp        0      0 0.0.0.0:8080            0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:993             0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:25              0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -                   
tcp        0      0 0.0.0.0:143             0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      -                   
tcp        0      0 127.0.0.54:53           0.0.0.0:*               LISTEN      -                   
tcp6       0      0 :::8080                 :::*                    LISTEN      -                   
tcp6       0      0 :::993                  :::*                    LISTEN      -                   
tcp6       0      0 :::25                   :::*                    LISTEN      -                   
tcp6       0      0 :::22                   :::*                    LISTEN      -                   
tcp6       0      0 :::143                  :::*                    LISTEN      -                   
tcp6       0      0 ::1:631                 :::*                    LISTEN      -                   
══╣ Additional Port Information
Unix Domain Sockets:                                                                                                                                      
  @359e7aee69929d44/bus/systemd/bus-system
  @6b280a3e7fb6983c/bus/systemd-oomd/bus-api-oom
  @70fc39ed9474c135/bus/systemd-logind/system
  @7a7800b93d002a41/bus/systemd/bus-system
  @8ec9924f0b7b173d/bus/systemd/bus-api-user
  @92e912f40ba025f0/bus/systemd/bus-api-user
  @d448d811f1e876c1/bus/systemd/bus-api-system
  @e271aa4083dfacfd/bus/systemd-resolve/bus-api-resolve
  @f43215ea9a95f1d0/bus/systemd-timesyn/bus-api-timesync
  /home/user/.cache/ibus/dbus-xKhvIL9m
  /opt/splunkforwarder/var/run/splunk/cli.socket
  Path
  private/anvil
  private/bounce
  private/defer
  private/discard
  private/error
  private/lmtp
  private/local
  private/proxymap
  private/proxywrite
  private/relay
  private/retry
  private/rewrite
  private/scache
  private/smtp
  private/tlsmgr
  private/trace
  private/uucp
  private/verify
  private/virtual
  public/cleanup
  public/flush
  public/pickup
  public/postlog
  public/qmgr
  public/showq
  /run/avahi-daemon/socket
  /run/containerd/containerd.sock
  /run/containerd/containerd.sock.ttrpc
  /run/containerd/s/947ad980678622a6839d8593ea29a56800e880d32211d47fb605e64e7512eb2d
  /run/cups/cups.sock
  /run/dbus/system_bus_socket
  /run/docker.sock
  /run/dovecot/anvil
  /run/dovecot/anvil-auth-penalty
  /run/dovecot/auth-client
  /run/dovecot/auth-login
  /run/dovecot/auth-master
  /run/dovecot/auth-userdb
  /run/dovecot/auth-worker
  /run/dovecot/config
  /run/dovecot/dict
  /run/dovecot/dict-async
  /run/dovecot/director-admin
  /run/dovecot/director-userdb
  /run/dovecot/dns-client
  /run/dovecot/doveadm-server
  /run/dovecot/imap-hibernate
  /run/dovecot/imap-master
  /run/dovecot/imap-urlauth
  /run/dovecot/imap-urlauth-worker
  /run/dovecot/indexer
  /run/dovecot/indexer-worker
  /run/dovecot/ipc
  /run/dovecot/log-errors
  /run/dovecot/login/dns-client
  /run/dovecot/login/imap
  /run/dovecot/login/ipc-proxy
  /run/dovecot/login/login
  /run/dovecot/login/stats-writer
  /run/dovecot/master
  /run/dovecot/old-stats
  /run/dovecot/replication-notify
  /run/dovecot/replicator
  /run/dovecot/stats-reader
  /run/dovecot/stats-writer
  /run/dovecot/token-login/imap-urlauth
  /run/dovecot/token-login/tokenlogin
  /run/gdm3/dbus/dbus-SuKmq3yQ
  /run/gdm3/dbus/dbus-VvQE2m43
  /run/mysqld/mysqld.sock
  /run/php/php7.4-fpm.sock
  /run/snapd-snap.socket
  /run/snapd.socket
  /run/spice-vdagentd/spice-vdagent-sock
  /run/systemd/fsck.progress
  /run/systemd/io.systemd.ManagedOOM
  /run/systemd/io.systemd.sysext
  /run/systemd/journal/dev-log (null)
  /run/systemd/journal/io.systemd.journal
  /run/systemd/journal/socket
  /run/systemd/journal/stdout
  /run/systemd/journal/stdout (user)
  /run/systemd/journal/syslog
  /run/systemd/notify
  /run/systemd/oom/io.systemd.ManagedOOM
  /run/systemd/private
  /run/systemd/resolve/io.systemd.Resolve
  /run/systemd/resolve/io.systemd.Resolve.Monitor
  /run/systemd/userdb/io.systemd.DynamicUser
  /run/udev/control
  /run/user/1000/at-spi/bus
  /run/user/1000/bus
  /run/user/1000/gcr/ssh
  /run/user/1000/gnupg/S.dirmngr
  /run/user/1000/gnupg/S.gpg-agent
  /run/user/1000/gnupg/S.gpg-agent.browser
  /run/user/1000/gnupg/S.gpg-agent.extra
  /run/user/1000/gnupg/S.gpg-agent.ssh
  /run/user/1000/gnupg/S.keyboxd
  /run/user/1000/gvfsd/socket-2C0ksCDM
  /run/user/1000/gvfsd/socket-AJtatGvH
  /run/user/1000/gvfsd/socket-AJuFMuEs
  /run/user/1000/gvfsd/socket-BlRIgJQs
  /run/user/1000/gvfsd/socket-c46OW04P
  /run/user/1000/gvfsd/socket-CDyFBbyA
  /run/user/1000/gvfsd/socket-fsfrulLl
  /run/user/1000/gvfsd/socket-HeGyg29C
  /run/user/1000/gvfsd/socket-NcvFtFNa
  /run/user/1000/gvfsd/socket-QbDUtabz
  /run/user/1000/gvfsd/socket-qMDYLWoe
  /run/user/1000/gvfsd/socket-RtBb6Ofa
  /run/user/1000/gvfsd/socket-U9Qa6qhA
  /run/user/1000/gvfsd/socket-xfzS68Si
  /run/user/1000/gvfsd/socket-ykZ0U78L
  /run/user/1000/gvfsd/socket-ZfYiImeT
  /run/user/1000/gvfsd/socket-zhLXifMF
  /run/user/1000/keyring/control
  /run/user/1000/keyring/pkcs11
  /run/user/1000/keyring/ssh
  /run/user/1000/pipewire-0
  /run/user/1000/pipewire-0-manager
  /run/user/1000/pk-debconf-socket
  /run/user/1000/pulse/native
  /run/user/1000/snapd-session-agent.socket
  /run/user/1000/speech-dispatcher/speechd.sock
  /run/user/1000/systemd/notify
  /run/user/1000/systemd/private
  /run/user/1000/wayland-0
  /run/user/1004/bus
  /run/user/1004/gcr/.ssh
  /run/user/1004/gcr/ssh
  /run/user/1004/gnupg/S.dirmngr
  /run/user/1004/gnupg/S.gpg-agent
  /run/user/1004/gnupg/S.gpg-agent.browser
  /run/user/1004/gnupg/S.gpg-agent.extra
  /run/user/1004/gnupg/S.gpg-agent.ssh
  /run/user/1004/gnupg/S.keyboxd
  /run/user/1004/keyring/control
  /run/user/1004/keyring/pkcs11
  /run/user/1004/pipewire-0
  /run/user/1004/pipewire-0-manager
  /run/user/1004/pk-debconf-socket
  /run/user/1004/pulse/native
  /run/user/1004/snapd-session-agent.socket
  /run/user/1004/speech-dispatcher/speechd.sock
  /run/user/1004/systemd/notify
  /run/user/1004/systemd/private
  /run/uuidd/request
  /tmp/.ICE-unix/3132
  @/tmp/.ICE-unix/3132
  /tmp/.X11-unix/X0
  @/tmp/.X11-unix/X0
  /tmp/.X11-unix/X1
  @/tmp/.X11-unix/X1
  /var/lib/sss/pipes/autofs
  /var/lib/sss/pipes/nss
  /var/lib/sss/pipes/pac
  /var/lib/sss/pipes/pam
  /var/lib/sss/pipes/private/pam
  /var/lib/sss/pipes/private/sbus-dp_ironsoft.local.77012
  /var/lib/sss/pipes/private/sbus-monitor
  /var/lib/sss/pipes/ssh
  /var/lib/sss/pipes/sudo
  /var/run/docker/libnetwork/f0201cac0f79.sock
  /var/run/docker/metrics.sock
  /var/spool/postfix/dev/log
-e 
Systemd Socket Units:
  0.0.0.0:22                             ssh.socket                      ssh.service
  [::]:22                                ssh.socket                      ssh.service
  kobject-uevent 1                       systemd-udevd-kernel.socket     systemd-udevd.service
  /dev/rfkill                            systemd-rfkill.socket           systemd-rfkill.service
  /run/avahi-daemon/socket               avahi-daemon.socket             avahi-daemon.service
  /run/cups/cups.sock                    cups.socket                     cups.service
  /run/dbus/system_bus_socket            dbus.socket                     dbus.service
  /run/docker.sock                       docker.socket                   docker.service
  /run/initctl                           systemd-initctl.socket          systemd-initctl.service
  /run/snapd-snap.socket                 snapd.socket                    snapd.service
  /run/snapd.socket                      snapd.socket                    snapd.service
  /run/spice-vdagentd/spice-vdagent-sock spice-vdagentd.socket           spice-vdagentd.service
  /run/systemd/fsck.progress             systemd-fsckd.socket            systemd-fsckd.service
  /run/systemd/io.systemd.sysext         systemd-sysext.socket           -
  /run/systemd/journal/dev-log           systemd-journald-dev-log.socket systemd-journald.service
  /run/systemd/journal/socket            systemd-journald.socket         systemd-journald.service
  /run/systemd/journal/stdout            systemd-journald.socket         systemd-journald.service
  /run/systemd/journal/syslog            syslog.socket                   rsyslog.service
  /run/systemd/oom/io.systemd.ManagedOOM systemd-oomd.socket             systemd-oomd.service
  /run/udev/control                      systemd-udevd-control.socket    systemd-udevd.service
  /run/uuidd/request                     uuidd.socket                    uuidd.service
  /var/lib/sss/pipes/autofs              sssd-autofs.socket              sssd-autofs.service
  /var/lib/sss/pipes/nss                 sssd-nss.socket                 sssd-nss.service
  /var/lib/sss/pipes/pac                 sssd-pac.socket                 sssd-pac.service
  /var/lib/sss/pipes/pam                 sssd-pam.socket                 sssd-pam.service
  /var/lib/sss/pipes/private/pam         sssd-pam-priv.socket            sssd-pam.service
  /var/lib/sss/pipes/ssh                 sssd-ssh.socket                 sssd-ssh.service
  /var/lib/sss/pipes/sudo                sssd-sudo.socket                sssd-sudo.service
  Pass --all to see loaded but inactive sockets, too.

╔══════════╣ Network Traffic Analysis Capabilities
                                                                                                                                                          
══╣ Available Sniffing Tools
tcpdump is available                                                                                                                                      
tcpdump version 4.99.4

══╣ Network Interfaces Sniffing Capabilities
Interface enp6s18: Not sniffable                                                                                                                          
Interface docker0: Not sniffable
Interface vethacc100f@if2: Not sniffable
No sniffable interfaces found

══╣ Additional Network Analysis Information
Checking for network monitoring tools...                                                                                                                  

╔══════════╣ Firewall Rules Analysis
                                                                                                                                                          
══╣ Iptables Rules
No permission to list iptables rules                                                                                                                      

══╣ Nftables Rules
No permission to list nftables rules                                                                                                                      

══╣ Firewalld Rules
firewalld Not Found                                                                                                                                       
                                                                                                                                                          
══╣ UFW Rules
UFW is not running                                                                                                                                        

══╣ Additional Firewall Information
Checking for firewall configuration files...                                                                                                              
Found configuration file: /etc/nftables.conf
Found configuration file: /etc/ufw/user.rules
Found configuration file: /etc/ufw/user6.rules
-e 
Checking for firewall management tools...

╔══════════╣ Inetd/Xinetd Services Analysis
                                                                                                                                                          
══╣ Inetd Services
inetd Not Found                                                                                                                                           
                                                                                                                                                          
══╣ Xinetd Services
xinetd Not Found                                                                                                                                          
                                                                                                                                                          
══╣ Running Inetd/Xinetd Services
Active Services (from netstat):                                                                                                                           
-e 
Active Services (from ss):
-e 
Running Service Processes:

══╣ Additional Inetd/Xinetd Information
Checking for service logs...                                                                                                                              
Found log file: /var/log/syslog
-e 
Checking for related files...

╔══════════╣ Internet Access?
Port 80 is accessible                                                                                                                                     
Port 443 is accessible
ICMP is accessible
DNS accessible
Port 443 is accessible with curl

╔══════════╣ Is hostname malicious or leaked?
╚ This will check the public IP and hostname in known malicious lists and leaks to find any relevant information about the host.                          
{                                                                                                                                                         
  "malicious": false
}


                               ╔═══════════════════╗
═══════════════════════════════╣ Users Information ╠═══════════════════════════════                                                                       
                               ╚═══════════════════╝                                                                                                      
╔══════════╣ My user
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#users                                                                   
uid=1004(pierre) gid=1004(pierre) groupes=1004(pierre)                                                                                                    

╔══════════╣ PGP Keys and Related Files
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#pgp-keys                                                                
GPG:                                                                                                                                                      
GPG is installed, listing keys:
-e 
NetPGP:
netpgpkeys Not Found
-e                                                                                                                                                        
PGP Related Files:
Found: /home/pierre/.gnupg
total 28
drwx------ 5 pierre pierre 4096 févr.  5 23:02 .
drwxr-xr-x 7 pierre pierre 4096 févr.  5 23:01 ..
drwx------ 2 pierre pierre 4096 févr.  5 23:01 crls.d
drwx------ 2 pierre pierre 4096 févr.  5 23:01 private-keys-v1.d
drwxr-x--- 2 pierre pierre 4096 févr.  5 23:01 public-keys.d
-rw------- 1 pierre pierre   32 févr.  5 23:02 pubring.kbx
-rw------- 1 pierre pierre 1200 févr.  5 23:02 trustdb.gpg

╔══════════╣ Checking 'sudo -l', /etc/sudoers, and /etc/sudoers.d
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sudo-and-suid                                                           
[sudo] Mot de passe de pierre :                                                                                                                           


╔══════════╣ Checking sudo tokens
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#reusing-sudo-tokens                                                     
ptrace protection is enabled (1)                                                                                                                          
Sudo token directory perms:
drwx------ 2 root root 80 févr.  5 23:02 /var/run/sudo/ts

doas.conf Not Found
                                                                                                                                                          
╔══════════╣ Checking Pkexec and Polkit
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/interesting-groups-linux-pe/index.html#pe---method-2                               
                                                                                                                                                          
══╣ Polkit Binary
Pkexec binary found at: /usr/bin/pkexec                                                                                                                   
Pkexec binary has SUID bit set!
-rwsr-xr-x 1 root root 30952 déc.   2  2024 /usr/bin/pkexec
pkexec version 124

══╣ Polkit Policies
Checking /etc/polkit-1/localauthority.conf.d/:                                                                                                            
Checking /etc/polkit-1/rules.d/:
Checking /usr/share/polkit-1/rules.d/:
// -*- mode: js; js-indent-level: 4; indent-tabs-mode: nil -*-
//
// DO NOT EDIT THIS FILE, it will be overwritten on update.
//
// Allow the gnome-initial-setup user to do certain actions without
// being interrupted by password dialogs

polkit.addRule(function(action, subject) {
    if (subject.user !== 'gnome-initial-setup')
        return undefined;

    var actionMatches = (action.id.indexOf('org.freedesktop.hostname1.') === 0 ||
                         action.id.indexOf('org.freedesktop.NetworkManager.') === 0 ||
                         action.id.indexOf('org.freedesktop.locale1.') === 0 ||
                         action.id.indexOf('org.freedesktop.accounts.') === 0 ||
                         action.id.indexOf('org.freedesktop.timedate1.') === 0 ||
                         action.id.indexOf('org.freedesktop.realmd.') === 0 ||
                         action.id.indexOf('com.endlessm.ParentalControls.') === 0 ||
                         action.id.indexOf('org.fedoraproject.thirdparty.') === 0);

    if (actionMatches) {
        if (subject.local)
            return 'yes';
        else
            return 'auth_admin';
    }

    return undefined;
});
//
// DO NOT EDIT THIS FILE, it will be overwritten on update.
//
// Allow gnome-remote-desktop to enable/disable itself

polkit.addRule(function(action, subject) {
  if (action.id === "org.gnome.remotedesktop.enable-system-daemon" &&
      subject.user === "gnome-remote-desktop")
    return polkit.Result.YES;

  return polkit.Result.NOT_HANDLED;
});
polkit.addAdminRule(function(action, subject) {
    return ["unix-group:sudo", "unix-group:admin"];
});
/* -*- mode: js; js-indent-level: 4; indent-tabs-mode: nil -*- */

// DO NOT EDIT THIS FILE, it will be overwritten on update
//
// Default rules for polkit
//
// See the polkit(8) man page for more information
// about configuring polkit.

polkit.addAdminRule(function(action, subject) {
    return ["unix-group:sudo"];
});
// Allow admin users to change error reporting settings
polkit.addRule(function(action, subject) {
    if (action.id == "com.ubuntu.whoopsiepreferences.change" &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});

// Mounting, checking, etc. of internal drives
polkit.addRule(function(action, subject) {
    if ((action.id == "org.freedesktop.udisks2.filesystem-mount-system" ||
         action.id == "org.freedesktop.udisks2.encrypted-unlock-system" ||
         action.id == "org.freedesktop.udisks2.filesystem-fstab") &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});

// Change CPU Frequency scaling
polkit.addRule(function(action, subject) {
    if ((action.id == "org.gnome.cpufreqselector" ||
         action.id == "org.mate.cpufreqselector" ) &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});

// Setting the clock
polkit.addRule(function(action, subject) {
    if ((action.id == "org.gnome.controlcenter.datetime.configure" ||
         action.id == "org.kde.kcontrol.kcmclock.save" ||
         action.id == "org.freedesktop.timedate1.set-time" ||
         action.id == "org.freedesktop.timedate1.set-timezone" ||
         action.id == "org.freedesktop.timedate1.set-local-rtc" ||
         action.id == "org.freedesktop.timedate1.set-ntp" ||
         action.id == "com.canonical.controlcenter.datetime.configure" ||
         action.id == "org.mate.settingsdaemon.datetimemechanism.settime") &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});

// Update already installed software
polkit.addRule(function(action, subject) {
    if (action.id == "org.debian.apt.upgrade-packages" &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});

// Printer administration
polkit.addRule(function(action, subject) {
    if (action.id.indexOf("org.opensuse.cupspkhelper.mechanism.") == 0 &&
        subject.active == true && subject.local == true &&
        (subject.isInGroup("sudo") || subject.isInGroup("lpadmin"))) {
            return polkit.Result.YES;
    }
});

// Disable hibernate by default in Ubuntu
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.upower.hibernate" ||
         action.id == "org.freedesktop.login1.hibernate" ||
         action.id == "org.freedesktop.login1.handle-hibernate-key" ||
         action.id == "org.freedesktop.login1.hibernate-multiple-sessions") {
            return polkit.Result.NO;
    }
});

// Allow admins to set the hostname,locale,keyboard,date/time without prompting
polkit.addRule(function(action, subject) {
    if ((action.id == "org.freedesktop.locale1.set-locale" ||
         action.id == "org.freedesktop.locale1.set-keyboard" ||
         action.id == "org.freedesktop.hostname1.set-static-hostname" ||
         action.id == "org.freedesktop.hostname1.set-hostname") &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});
/*
 * Allow users in privileged gamemode group to run cpugovctl &
 * gpuclockctl without authentication
 */
polkit.addRule(function (action, subject) {
    if ((action.id == "com.feralinteractive.GameMode.governor-helper" ||
         action.id == "com.feralinteractive.GameMode.gpu-helper" ||
         action.id == "com.feralinteractive.GameMode.cpu-helper" ||
         action.id == "com.feralinteractive.GameMode.procsys-helper") &&
        subject.isInGroup("gamemode"))
    {
        return polkit.Result.YES;
    }
});
polkit.addRule(function(action, subject) {
        if ((action.id == "org.freedesktop.locale1.set-locale" ||
             action.id == "org.freedesktop.locale1.set-keyboard" ||
             action.id == "org.freedesktop.ModemManager1.Device.Control" ||
             action.id == "org.freedesktop.hostname1.set-static-hostname" ||
             action.id == "org.freedesktop.hostname1.set-hostname" ||
             action.id == "org.gnome.controlcenter.datetime.configure") &&
            subject.local &&
            subject.active &&
            subject.isInGroup ("sudo")) {
                    return polkit.Result.YES;
            }
});
polkit.addRule(function(action, subject) {
  if (action.id == "org.a11y.brlapi.write-display") {
    if (subject.isInGroup("brlapi")) {
      return polkit.Result.YES;
    }
  }
});
polkit.addRule(function(action, subject) {
        if ((action.id == "org.freedesktop.ModemManager1.Device.Control" ||
             action.id == "org.freedesktop.ModemManager1.Location") &&
            subject.user == "geoclue") {
                return polkit.Result.YES;
        }
});
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.NetworkManager.settings.modify.system" &&
        subject.local && subject.active &&
        (subject.isInGroup ("sudo") || subject.isInGroup ("netdev"))) {
        return polkit.Result.YES;
    }
});
// -*- mode: js2 -*-
polkit.addRule(function(action, subject) {
    if ((action.id === "org.freedesktop.bolt.enroll" ||
         action.id === "org.freedesktop.bolt.authorize" ||
         action.id === "org.freedesktop.bolt.manage") &&
        subject.active === true && subject.local === true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.fwupd.update-internal" &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});
polkit.addRule(function(action, subject) {
    if ((action.id == "org.freedesktop.packagekit.upgrade-system" ||
         action.id == "org.freedesktop.packagekit.trigger-offline-update") &&
        subject.active == true && subject.local == true &&
        subject.isInGroup("sudo")) {
            return polkit.Result.YES;
    }
});
// Allows users belonging to privileged group to start gvfsd-admin without
// authorization. This prevents redundant password prompt when starting
// gvfsd-admin. The gvfsd-admin causes another password prompt to be shown
// for each client process using the different action id and for the subject
// based on the client process.
polkit.addRule(function(action, subject) {
        if ((action.id == "org.gtk.vfs.file-operations-helper") &&
            subject.local &&
            subject.active &&
            subject.isInGroup ("sudo")) {
            return polkit.Result.YES;
        }
});
// Please put this file in /usr/share/polkit-1/rules.d/ if SSSD is running as
// unprivileged user 'root' to allow access to the Smartcard via pcscd.
polkit.addRule(function(action, subject) {
    if (action.id == "org.debian.pcsc-lite.access_card" &&
        subject.user == "root") {
            return polkit.Result.YES;
    }
});

polkit.addRule(function(action, subject) {
    if (action.id == "org.debian.pcsc-lite.access_pcsc" &&
        subject.user == "root") {
            return polkit.Result.YES;
    }
});
// This file is part of systemd.
// See systemd-networkd.service(8) and polkit(8) for more information.

// Allow systemd-networkd to set timezone, get product UUID,
// and transient hostname
polkit.addRule(function(action, subject) {
    if ((action.id == "org.freedesktop.hostname1.set-hostname" ||
         action.id == "org.freedesktop.hostname1.get-product-uuid" ||
         action.id == "org.freedesktop.timedate1.set-timezone") &&
        subject.user == "systemd-network") {
        return polkit.Result.YES;
    }
});

══╣ Polkit Authentication Agent
polkitd      644  0.0  0.2 391432 12992 ?        Ssl  11:41   0:04 /usr/lib/polkit-1/polkitd --no-debug                                                   

╔══════════╣ Superusers and UID 0 Users
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/interesting-groups-linux-pe/index.html                                             
                                                                                                                                                          
══╣ Users with UID 0 in /etc/passwd
root:x:0:0:root:/root:/bin/bash                                                                                                                           

══╣ Users with sudo privileges in sudoers
                                                                                                                                                          
╔══════════╣ Users with console
admin:x:1033:1033::/home/admin:/bin/bash                                                                                                                  
aduval:x:1021:1021:Anais Duval:/home/aduval:/bin/bash
alemoine:x:1028:1028:Adrien Lemoine:/home/alemoine:/bin/bash
bcolin:x:1011:1011:Benjamin Colin:/home/bcolin:/bin/bash
bhernandez:x:1023:1023:Bruno Hernandez:/home/bhernandez:/bin/bash
bruno:x:1006:1006:HERNANDEZ,,,06 28 31 15 42:/home/bruno:/bin/bash
croche:x:1014:1014:Camille Roche:/home/croche:/bin/bash
ebaron:x:1030:1030:Emile Baron:/home/ebaron:/bin/bash
emoreau:x:1007:1007:Elise Moreau:/home/emoreau:/bin/bash
gporte:x:1020:1020:Guillaume Porte:/home/gporte:/bin/bash
guillaume:x:1003:1003:PORTE,,,:/home/guillaume:/bin/bash
igauthier:x:1026:1026:Inès Gauthier:/home/igauthier:/bin/bash
jcaron:x:1019:1019:Jules Caron:/home/jcaron:/bin/bash
jmorel:x:1013:1013:Julien Morel:/home/jmorel:/bin/bash
kdelaunay:x:1018:1018:Karim Delaunay:/home/kdelaunay:/bin/bash
lbenelli:x:1022:1022:Lucas Benelli:/home/lbenelli:/bin/bash
lbernard:x:1017:1017:Loic Bernard:/home/lbernard:/bin/bash
mbourdon:x:1031:1031:Maya Bourdon:/home/mbourdon:/bin/bash
mchevreau:x:1009:1009:Marion Chevreau:/home/mchevreau:/bin/bash
ncharlier:x:1025:1025:Noé Charlier:/home/ncharlier:/bin/bash
nlefevre:x:1012:1012:Nina Lefèvre:/home/nlefevre:/bin/bash
pierre:x:1004:1004::/home/pierre:/bin/sh
plejuste:x:1024:1024:Pierre Lejuste:/home/plejuste:/bin/bash
rlefort:x:1029:1029:Rayan Lefort:/home/rlefort:/bin/bash
root:x:0:0:root:/root:/bin/bash
sberanger:x:1010:1010:Sophie Beranger:/home/sberanger:/bin/bash
service:x:1001:1001:,,,:/home/service:/bin/bash
sophie:x:1005:1005:BERANGER,,0782182112,:/home/sophie:/bin/bash
splunkfwd:x:1002:1002:Splunk Forwarder:/opt/splunkforwarder:/bin/bash
svilledieu:x:1016:1016:Sarah Villedieu:/home/svilledieu:/bin/bash
troussel:x:1008:1008:Thomas Roussel:/home/troussel:/bin/bash
user:x:1000:1000:user:/home/user:/bin/bash
vrenard:x:1027:1027:Victor Renard:/home/vrenard:/bin/bash
webmail:x:1032:1032::/home/webmail:/bin/bash
ylanglois:x:1015:1015:Yanis Langlois:/home/ylanglois:/bin/bash

╔══════════╣ All users & groups
uid=0(root) gid=0(root) groupes=0(root)                                                                                                                   
uid=1000(user) gid=1000(user) groupes=1000(user),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users),114(lpadmin)
uid=1001(service) gid=1001(service) groupes=1001(service),100(users)
uid=1002(splunkfwd) gid=1002(splunkfwd) groupes=1002(splunkfwd)
uid=1003(guillaume) gid=1003(guillaume) groupes=1003(guillaume),100(users)
uid=1004(pierre) gid=1004(pierre) groupes=1004(pierre)
uid=1005(sophie) gid=1005(sophie) groupes=1005(sophie),100(users)
uid=1006(bruno) gid=1006(bruno) groupes=1006(bruno),100(users)
uid=1007(emoreau) gid=1007(emoreau) groupes=1007(emoreau),8(mail)
uid=1008(troussel) gid=1008(troussel) groupes=1008(troussel),8(mail)
uid=1009(mchevreau) gid=1009(mchevreau) groupes=1009(mchevreau),8(mail)
uid=100(dhcpcd) gid=65534(nogroup) groupes=65534(nogroup)
uid=1010(sberanger) gid=1010(sberanger) groupes=1010(sberanger),8(mail)
uid=1011(bcolin) gid=1011(bcolin) groupes=1011(bcolin),8(mail)
uid=1012(nlefevre) gid=1012(nlefevre) groupes=1012(nlefevre),8(mail)
uid=1013(jmorel) gid=1013(jmorel) groupes=1013(jmorel),8(mail)
uid=1014(croche) gid=1014(croche) groupes=1014(croche),8(mail)
uid=1015(ylanglois) gid=1015(ylanglois) groupes=1015(ylanglois),8(mail)
uid=1016(svilledieu) gid=1016(svilledieu) groupes=1016(svilledieu),8(mail)
uid=1017(lbernard) gid=1017(lbernard) groupes=1017(lbernard),8(mail)
uid=1018(kdelaunay) gid=1018(kdelaunay) groupes=1018(kdelaunay),8(mail)
uid=1019(jcaron) gid=1019(jcaron) groupes=1019(jcaron),8(mail)
uid=101(messagebus) gid=101(messagebus) groupes=101(messagebus)
uid=1020(gporte) gid=1020(gporte) groupes=1020(gporte),8(mail)
uid=1021(aduval) gid=1021(aduval) groupes=1021(aduval),8(mail)
uid=1022(lbenelli) gid=1022(lbenelli) groupes=1022(lbenelli),8(mail)
uid=1023(bhernandez) gid=1023(bhernandez) groupes=1023(bhernandez),8(mail)
uid=1024(plejuste) gid=1024(plejuste) groupes=1024(plejuste),8(mail)
uid=1025(ncharlier) gid=1025(ncharlier) groupes=1025(ncharlier),8(mail)
uid=1026(igauthier) gid=1026(igauthier) groupes=1026(igauthier),8(mail)
uid=1027(vrenard) gid=1027(vrenard) groupes=1027(vrenard),8(mail)
uid=1028(alemoine) gid=1028(alemoine) groupes=1028(alemoine),8(mail)
uid=1029(rlefort) gid=1029(rlefort) groupes=1029(rlefort),8(mail)
uid=102(syslog) gid=102(syslog) groupes=102(syslog),4(adm)
uid=1030(ebaron) gid=1030(ebaron) groupes=1030(ebaron),8(mail)
uid=1031(mbourdon) gid=1031(mbourdon) groupes=1031(mbourdon),8(mail)
uid=1032(webmail) gid=1032(webmail) groupes=1032(webmail)
uid=1033(admin) gid=1033(admin) groupes=1033(admin)
uid=103(uuidd) gid=103(uuidd) groupes=103(uuidd)
uid=104(usbmux) gid=46(plugdev) groupes=46(plugdev)
uid=105(tss) gid=105(tss) groupes=105(tss)
uid=106(kernoops) gid=65534(nogroup) groupes=65534(nogroup)
uid=107(whoopsie) gid=109(whoopsie) groupes=109(whoopsie)
uid=108(avahi) gid=111(avahi) groupes=111(avahi)
uid=109(tcpdump) gid=112(tcpdump) groupes=112(tcpdump)
uid=10(uucp) gid=10(uucp) groupes=10(uucp)
uid=110(sssd) gid=113(sssd) groupes=113(sssd)
uid=111(speech-dispatcher) gid=29(audio) groupes=29(audio)
uid=112(cups-pk-helper) gid=114(lpadmin) groupes=114(lpadmin)
uid=113(saned) gid=116(saned) groupes=116(saned),115(scanner)
uid=114(geoclue) gid=117(geoclue) groupes=117(geoclue)
uid=115(cups-browsed) gid=114(lpadmin) groupes=114(lpadmin)
uid=116(hplip) gid=7(lp) groupes=7(lp)
uid=117(rtkit) gid=119(rtkit) groupes=119(rtkit)
uid=118(colord) gid=120(colord) groupes=120(colord)
uid=119(gnome-initial-setup) gid=65534(nogroup) groupes=65534(nogroup)
uid=120(gdm) gid=121(gdm) groupes=121(gdm)
uid=121(nm-openvpn) gid=122(nm-openvpn) groupes=122(nm-openvpn)
uid=122(postfix) gid=124(postfix) groupes=124(postfix)
uid=123(_galera) gid=65534(nogroup) groupes=65534(nogroup)
uid=124(mysql) gid=126(mysql) groupes=126(mysql)
uid=125(dovecot) gid=127(dovecot) groupes=127(dovecot),8(mail)
uid=126(dovenull) gid=128(dovenull) groupes=128(dovenull)
uid=127(sshd) gid=65534(nogroup) groupes=65534(nogroup)
uid=13(proxy) gid=13(proxy) groupes=13(proxy)
uid=1(daemon[0m) gid=1(daemon[0m) groupes=1(daemon[0m)
uid=2(bin) gid=2(bin) groupes=2(bin)
uid=33(www-data) gid=33(www-data) groupes=33(www-data)
uid=34(backup) gid=34(backup) groupes=34(backup)
uid=38(list) gid=38(list) groupes=38(list)
uid=39(irc) gid=39(irc) groupes=39(irc)
uid=3(sys) gid=3(sys) groupes=3(sys)
uid=42(_apt) gid=65534(nogroup) groupes=65534(nogroup)
uid=4(sync) gid=65534(nogroup) groupes=65534(nogroup)
uid=5(games) gid=60(games) groupes=60(games)
uid=65534(nobody) gid=65534(nogroup) groupes=65534(nogroup)
uid=6(man) gid=12(man) groupes=12(man)
uid=7(lp) gid=7(lp) groupes=7(lp)
uid=8(mail) gid=8(mail) groupes=8(mail)
uid=987(polkitd) gid=987(polkitd) groupes=987(polkitd)
uid=988(gnome-remote-desktop) gid=988(gnome-remote-desktop) groupes=988(gnome-remote-desktop)
uid=989(fwupd-refresh) gid=989(fwupd-refresh) groupes=989(fwupd-refresh)
uid=990(systemd-oom) gid=990(systemd-oom) groupes=990(systemd-oom)
uid=991(systemd-resolve) gid=991(systemd-resolve) groupes=991(systemd-resolve)
uid=996(systemd-timesync) gid=996(systemd-timesync) groupes=996(systemd-timesync)
uid=998(systemd-network) gid=998(systemd-network) groupes=998(systemd-network)
uid=999(dnsmasq) gid=65534(nogroup) groupes=65534(nogroup)
uid=9(news) gid=9(news) groupes=9(news)

╔══════════╣ Currently Logged in Users
                                                                                                                                                          
══╣ Basic user information
 23:03:07 up 11:22,  2 users,  load average: 1,86, 1,15, 0,56                                                                                             
UTIL.    TTY      DE               LOGIN@   IDLE   JCPU   PCPU  WHAT
pierre            192.168.100.10   15:01   11:21m  0.00s  0.08s sshd: pierre [priv]
user     tty2     -                11:41   11:22m  0.53s  0.27s /usr/libexec/gnome-session-binary --session=ubuntu

══╣ Active sessions
 23:03:07 up 11:22,  2 users,  load average: 1,86, 1,15, 0,56                                                                                             
UTIL.    TTY      DE               LOGIN@   IDLE   JCPU   PCPU  WHAT
pierre            192.168.100.10   15:01   11:21m  0.00s  0.08s sshd: pierre [priv]
user     tty2     -                11:41   11:22m  0.53s  0.27s /usr/libexec/gnome-session-binary --session=ubuntu

══╣ Logged in users (utmp)
           démarrage système 2026-02-05 11:40                                                                                                             
           niveau d'exécution 5 2026-02-05 11:41
user     ? seat0        2026-02-05 11:41   ?          2979 (login screen)
user     + tty2         2026-02-05 11:41 11:22        2979 (tty2)
           pts/1        2026-02-05 14:29              9674 id=ts/1  term=0 sortie=0
           pts/2        2026-02-05 14:26              9685 id=ts/2  term=0 sortie=0
pierre   + pts/0        2026-02-05 15:01   .         10542 (192.168.100.10)

══╣ SSH sessions
ESTAB 0      0      192.168.1.250:22    192.168.100.10:47134                                                                                              

══╣ Screen sessions
                                                                                                                                                          
══╣ Tmux sessions
                                                                                                                                                          
╔══════════╣ Last Logons and Login History
                                                                                                                                                          
══╣ Last logins
pierre   pts/0        192.168.100.10   Thu Feb  5 15:01   still logged in                                                                                 
user     tty2         tty2             Thu Feb  5 11:41   still logged in
user     seat0        login screen     Thu Feb  5 11:41   still logged in
reboot   system boot  6.14.0-37-generi Thu Feb  5 11:40   still running
pierre   pts/0        192.168.100.10   Mon Feb  2 23:09 - 23:10  (00:00)
user     pts/1        192.168.100.10   Mon Feb  2 14:30 - 14:30  (00:00)
user     tty2         tty2             Mon Feb  2 14:23 - down  (2+21:17)
user     seat0        login screen     Mon Feb  2 14:23 - down  (2+21:17)
reboot   system boot  6.14.0-37-generi Mon Feb  2 14:22 - 11:40 (2+21:18)
user     tty2         tty2             Mon Feb  2 14:13 - down   (00:08)
user     seat0        login screen     Mon Feb  2 14:13 - down   (00:08)
reboot   system boot  6.14.0-37-generi Wed Jan 28 13:30 - 14:22 (5+00:51)
pierre   pts/0        192.168.1.253    Mon Dec  8 23:26 - 23:31  (00:04)
pierre   pts/0        192.168.1.253    Mon Dec  8 23:25 - 23:26  (00:00)
user     tty2         tty2             Wed Nov 26 16:47 - crash (62+20:43)
user     seat0        login screen     Wed Nov 26 16:47 - crash (62+20:43)
reboot   system boot  6.11.0-26-generi Wed Nov 26 16:46 - 14:22 (67+21:35)
user     tty2         tty2             Wed Nov 26 16:43 - down   (00:00)
user     seat0        login screen     Wed Nov 26 16:43 - down   (00:00)
reboot   system boot  6.11.0-26-generi Wed Nov 26 16:43 - 16:44  (00:01)

wtmp commence Wed Jun  4 16:03:51 2025

══╣ Failed login attempts
                                                                                                                                                          
══╣ Recent logins from auth.log (limit 20)
                                                                                                                                                          
══╣ Last time logon each user
Nom d'utilisateur                Port     Provenance                                       Dernier                                                        
user             pts/1    192.168.100.10                            lun. févr.  2 14:30:14 +0100 2026
pierre           pts/0    192.168.100.10                            jeu. févr.  5 15:01:48 +0100 2026

╔══════════╣ Password policy
PASS_MAX_DAYS   99999                                                                                                                                     
PASS_MIN_DAYS   0
PASS_WARN_AGE   7
ENCRYPT_METHOD SHA512

╔══════════╣ Testing 'su' as other users with shell using as passwords: null pwd, the username and top2000pwds
                                                                                                                                                          
  Bruteforcing user root...
  You can login as root using password: toor
  Bruteforcing user user...
  You can login as user using password: user
  Bruteforcing user service...
  Bruteforcing user splunkfwd...
  Bruteforcing user guillaume...
  You can login as guillaume using password: 123
  Bruteforcing user pierre...
  Bruteforcing user sophie...
  Bruteforcing user bruno...
  Bruteforcing user emoreau...
  You can login as emoreau using password: password123
  Bruteforcing user troussel...
  You can login as troussel using password: password123
  Bruteforcing user mchevreau...
  You can login as mchevreau using password: password123
  Bruteforcing user sberanger...
  Bruteforcing user bcolin...
  You can login as bcolin using password: password123
  Bruteforcing user nlefevre...
  You can login as nlefevre using password: password123
  Bruteforcing user jmorel...
  You can login as jmorel using password: password123
  Bruteforcing user croche...
  You can login as croche using password: password123
  Bruteforcing user ylanglois...
  You can login as ylanglois using password: password123
  Bruteforcing user svilledieu...
  You can login as svilledieu using password: password123
  Bruteforcing user lbernard...
  You can login as lbernard using password: password123
  Bruteforcing user kdelaunay...
  You can login as kdelaunay using password: password123
  Bruteforcing user jcaron...
  You can login as jcaron using password: password123
  Bruteforcing user gporte...
  Bruteforcing user aduval...
  You can login as aduval using password: password123
  Bruteforcing user lbenelli...
  You can login as lbenelli using password: password123
  Bruteforcing user bhernandez...
  Bruteforcing user plejuste...
  You can login as plejuste using password: password123
  Bruteforcing user ncharlier...
  You can login as ncharlier using password: password123
  Bruteforcing user igauthier...
  You can login as igauthier using password: password123
  Bruteforcing user vrenard...
  You can login as vrenard using password: password123
  Bruteforcing user alemoine...
  You can login as alemoine using password: password123
  Bruteforcing user rlefort...
  You can login as rlefort using password: password123
  Bruteforcing user ebaron...
  You can login as ebaron using password: password123
  Bruteforcing user mbourdon...
  You can login as mbourdon using password: password123
  Bruteforcing user webmail...
  Bruteforcing user admin...
  You can login as admin using password: admin
  You can login as admin using password: admin
╔══════════╣ Do not forget to execute 'sudo -l' without password or with valid password (if you know it)!!
                                                                                                                                                          


                             ╔══════════════════════╗
═════════════════════════════╣ Software Information ╠═════════════════════════════                                                                        
                             ╚══════════════════════╝                                                                                                     
╔══════════╣ Useful software
/usr/bin/base64                                                                                                                                           
/usr/bin/ctr
/usr/bin/curl
/usr/bin/docker
/usr/bin/g++
/usr/bin/gcc
/usr/bin/gdb
/usr/bin/make
/usr/bin/nc
/usr/bin/netcat
/usr/bin/perl
/usr/bin/php
/usr/bin/ping
/usr/bin/python3
/snap/bin/pwsh
/usr/sbin/runc
/usr/bin/socat
/usr/bin/sudo
/usr/bin/wget

╔══════════╣ Installed Compilers
ii  g++                                           4:13.2.0-7ubuntu1                        amd64        GNU C++ compiler                                  
ii  g++-13                                        13.3.0-6ubuntu2~24.04                    amd64        GNU C++ compiler
ii  g++-13-x86-64-linux-gnu                       13.3.0-6ubuntu2~24.04                    amd64        GNU C++ compiler for x86_64-linux-gnu architecture
ii  g++-x86-64-linux-gnu                          4:13.2.0-7ubuntu1                        amd64        GNU C++ compiler for the amd64 architecture
ii  gcc                                           4:13.2.0-7ubuntu1                        amd64        GNU C compiler
ii  gcc-13                                        13.3.0-6ubuntu2~24.04                    amd64        GNU C compiler
ii  gcc-13-x86-64-linux-gnu                       13.3.0-6ubuntu2~24.04                    amd64        GNU C compiler for the x86_64-linux-gnu architecture
ii  gcc-x86-64-linux-gnu                          4:13.2.0-7ubuntu1                        amd64        GNU C compiler for the amd64 architecture
ii  rpcsvc-proto                                  1.4.2-0ubuntu7                           amd64        RPC protocol compiler and definitions
/usr/bin/gcc

╔══════════╣ Analyzing Apache-Nginx Files (limit 70)
Apache version: Server version: Apache/2.4.58 (Ubuntu)                                                                                                    
Server built:   2025-12-09T15:50:28
httpd Not Found
                                                                                                                                                          
Nginx version: nginx Not Found
                                                                                                                                                          
/etc/apache2/mods-available/php7.4.conf-<FilesMatch ".+\.ph(ar|p|tml)$">
/etc/apache2/mods-available/php7.4.conf:    SetHandler application/x-httpd-php
--
/etc/apache2/mods-available/php7.4.conf-<FilesMatch ".+\.phps$">
/etc/apache2/mods-available/php7.4.conf:    SetHandler application/x-httpd-php-source
--
/etc/apache2/mods-available/php8.3.conf-<FilesMatch ".+\.ph(?:ar|p|tml)$">
/etc/apache2/mods-available/php8.3.conf:    SetHandler application/x-httpd-php
--
/etc/apache2/mods-available/php8.3.conf-<FilesMatch ".+\.phps$">
/etc/apache2/mods-available/php8.3.conf:    SetHandler application/x-httpd-php-source
--
/etc/apache2/mods-enabled/php7.4.conf-<FilesMatch ".+\.ph(ar|p|tml)$">
/etc/apache2/mods-enabled/php7.4.conf:    SetHandler application/x-httpd-php
--
/etc/apache2/mods-enabled/php7.4.conf-<FilesMatch ".+\.phps$">
/etc/apache2/mods-enabled/php7.4.conf:    SetHandler application/x-httpd-php-source
══╣ PHP exec extensions
drwxr-xr-x 2 root root 4096 janv. 22 09:17 /etc/apache2/sites-enabled                                                                                     
drwxr-xr-x 2 root root 4096 janv. 22 09:17 /etc/apache2/sites-enabled
lrwxrwxrwx 1 root root 28 janv. 22 09:17 /etc/apache2/sites-enabled/glpi.conf -> ../sites-available/glpi.conf
Alias /glpi /var/www/html/glpi
<Directory /var/www/html/glpi>
    Options -Indexes +FollowSymLinks
    AllowOverride All
    Require all granted
    <IfModule mod_php8.c>
        php_value max_execution_time 600
        php_value memory_limit 256M
        php_value post_max_size 50M
        php_value upload_max_filesize 50M
    </IfModule>
</Directory>
<Directory /var/www/html/glpi/files>
    Options +Indexes
    AllowOverride None
    Require all granted
</Directory>
lrwxrwxrwx 1 root root 35 nov.  26 18:05 /etc/apache2/sites-enabled/000-default.conf -> ../sites-available/000-default.conf
<VirtualHost *:80>
        ServerName mail.iron4software.local
        ServerAdmin webmaster@localhost
        RedirectMatch ^/$ /webmail/
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>


-rw-r--r-- 1 root root 1364 déc.   8 11:01 /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
        ServerName mail.iron4software.local
        ServerAdmin webmaster@localhost
        RedirectMatch ^/$ /webmail/
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
lrwxrwxrwx 1 root root 35 nov.  26 18:05 /etc/apache2/sites-enabled/000-default.conf -> ../sites-available/000-default.conf
<VirtualHost *:80>
        ServerName mail.iron4software.local
        ServerAdmin webmaster@localhost
        RedirectMatch ^/$ /webmail/
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

-rw-r--r-- 1 root root 73160 janv. 22 10:11 /etc/php/7.4/apache2/php.ini
allow_url_fopen = On
allow_url_include = Off
odbc.allow_persistent = On
mysqli.allow_persistent = On
pgsql.allow_persistent = On
-rw-r--r-- 1 root root 72600 déc.  19 00:34 /etc/php/7.4/cli/php.ini
allow_url_fopen = On
allow_url_include = Off
odbc.allow_persistent = On
mysqli.allow_persistent = On
pgsql.allow_persistent = On
-rw-r--r-- 1 root root 73002 déc.  19 00:34 /etc/php/7.4/fpm/php.ini
allow_url_fopen = On
allow_url_include = Off
odbc.allow_persistent = On
mysqli.allow_persistent = On
pgsql.allow_persistent = On
-rw-r--r-- 1 root root 73718 juil. 14  2025 /etc/php/8.3/apache2/php.ini
allow_url_fopen = On
allow_url_include = Off
odbc.allow_persistent = On
mysqli.allow_persistent = On
pgsql.allow_persistent = On
-rw-r--r-- 1 root root 73714 juil. 14  2025 /etc/php/8.3/cli/php.ini
allow_url_fopen = On
allow_url_include = Off
odbc.allow_persistent = On
mysqli.allow_persistent = On
pgsql.allow_persistent = On



╔══════════╣ Browser Profiles
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#browser-data                                                            
                                                                                                                                                          
╔══════════╣ Checking if containerd(ctr) is available
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#containerd-ctr-privilege-escalation                                     
ctr was found in /usr/bin/ctr, you may be able to escalate privileges with it                                                                             
ctr: failed to dial "/run/containerd/containerd.sock": connection error: desc = "transport: error while dialing: dial unix /run/containerd/containerd.sock: connect: permission denied"

╔══════════╣ Searching docker files (limit 70)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/docker-security/index.html#docker-breakout--privilege-escalation                   
lrwxrwxrwx 1 root root 37 janv. 20 09:26 /etc/systemd/system/sockets.target.wants/docker.socket -> /usr/lib/systemd/system/docker.socket                  
-rw-r--r-- 1 root root 171 juin  20  2025 /usr/lib/systemd/system/docker.socket
-rw-r--r-- 1 root root 0 janv. 20 09:26 /var/lib/systemd/deb-systemd-helper-enabled/sockets.target.wants/docker.socket

╔══════════╣ Analyzing MariaDB Files (limit 70)
-rw-r--r-- 1 root root 1126 oct.  11 04:08 /etc/mysql/mariadb.cnf                                                                                         
[client-server]
socket = /run/mysqld/mysqld.sock
!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mariadb.conf.d/

-rw------- 1 root root 544 janv. 21 10:17 /etc/mysql/debian.cnf

╔══════════╣ Analyzing Rsync Files (limit 70)
-rw-r--r-- 1 root root 1044 avril 12  2024 /usr/share/doc/rsync/examples/rsyncd.conf                                                                      
[ftp]
        comment = public archive
        path = /var/www/pub
        use chroot = yes
        lock file = /var/lock/rsyncd
        read only = yes
        list = yes
        uid = nobody
        gid = nogroup
        strict modes = yes
        ignore errors = no
        ignore nonreadable = yes
        transfer logging = no
        timeout = 600
        refuse options = checksum dry-run
        dont compress = *.gz *.tgz *.zip *.z *.rpm *.deb *.iso *.bz2 *.tbz


╔══════════╣ Analyzing Wifi Connections Files (limit 70)
drwxr-xr-x 2 root root 4096 déc.   2 00:21 /etc/NetworkManager/system-connections                                                                         
drwxr-xr-x 2 root root 4096 déc.   2 00:21 /etc/NetworkManager/system-connections


╔══════════╣ Analyzing PAM Auth Files (limit 70)
drwxr-xr-x 2 root root 4096 févr.  2 22:39 /etc/pam.d                                                                                                     
-rw-r--r-- 1 root root 2133 août  26 15:49 /etc/pam.d/sshd
account    required     pam_nologin.so
session [success=ok ignore=ignore module_unknown=ignore default=bad]        pam_selinux.so close
session    required     pam_loginuid.so
session    optional     pam_keyinit.so force revoke
session    optional     pam_motd.so  motd=/run/motd.dynamic
session    optional     pam_motd.so noupdate
session    optional     pam_mail.so standard noenv # [1]
session    required     pam_limits.so
session    required     pam_env.so # [1]
session    required     pam_env.so user_readenv=1 envfile=/etc/default/locale
session [success=ok ignore=ignore module_unknown=ignore default=bad]        pam_selinux.so open


╔══════════╣ Analyzing Ldap Files (limit 70)
The password hash is from the {SSHA} to 'structural'                                                                                                      
drwxr-xr-x 2 root root 4096 nov.  26 17:07 /etc/ldap

drwxr-xr-x 2 root root 4096 janv. 22 10:09 /usr/share/php7.4-ldap/ldap

drwxr-xr-x 2 root root 4096 janv. 22 09:15 /usr/share/php8.3-ldap/ldap

-rw-r--r-- 1 root root 0 janv. 22 10:10 /var/lib/php/modules/7.4/apache2/enabled_by_maint/ldap

-rw-r--r-- 1 root root 0 janv. 22 10:10 /var/lib/php/modules/7.4/cli/enabled_by_maint/ldap

-rw-r--r-- 1 root root 0 janv. 22 10:10 /var/lib/php/modules/7.4/fpm/enabled_by_maint/ldap

-rw-r--r-- 1 root root 0 janv. 22 10:10 /var/lib/php/modules/7.4/registry/ldap

-rw-r--r-- 1 root root 0 janv. 22 09:15 /var/lib/php/modules/8.3/apache2/enabled_by_maint/ldap

-rw-r--r-- 1 root root 0 janv. 22 09:15 /var/lib/php/modules/8.3/cli/enabled_by_maint/ldap

-rw-r--r-- 1 root root 0 janv. 22 09:15 /var/lib/php/modules/8.3/registry/ldap

drwxr-xr-x 2 www-data www-data 4096 déc.  18  2019 /var/www/html/glpi/inc/console/ldap


╔══════════╣ Analyzing Cloud Init Files (limit 70)
-rw-r--r-- 1 root root 3718 déc.   2  2024 /etc/cloud/cloud.cfg                                                                                           
    lock_passwd: True
-rw-r--r-- 1 root root 3766 août  12 21:48 /snap/core22/2216/etc/cloud/cloud.cfg
    lock_passwd: True
-rw-r--r-- 1 root root 3766 août  12 21:48 /snap/core22/2292/etc/cloud/cloud.cfg
    lock_passwd: True

╔══════════╣ Analyzing Keyring Files (limit 70)
drwxr-xr-x 2 root root 4096 mars  31  2024 /etc/apt/keyrings                                                                                              
drwxr-xr-x 2 root root 200 déc.   2 11:59 /snap/core22/2216/usr/share/keyrings
drwxr-xr-x 2 root root 200 janv. 13 04:44 /snap/core22/2292/usr/share/keyrings
drwxr-xr-x 2 root root 4096 nov.  26 17:03 /usr/share/keyrings




╔══════════╣ Analyzing Postfix Files (limit 70)
-rwxr-xr-x 1 root root 3089 mars   5  2024 /etc/init.d/postfix                                                                                            

-rw-r--r-- 1 root root 30 avril  8  2024 /etc/insserv.conf.d/postfix

-rwxr-xr-x 1 root root 802 avril  8  2024 /etc/network/if-down.d/postfix

-rwxr-xr-x 1 root root 1185 avril  8  2024 /etc/network/if-up.d/postfix

drwxr-xr-x 5 root root 4096 déc.  10 10:23 /etc/postfix
-rw-r--r-- 1 root root 7048 nov.  26 17:49 /etc/postfix/master.cf
#  flags=DRXhu user=vmail argv=/usr/bin/maildrop -d ${recipient}
#  flags=DRX user=cyrus argv=/cyrus/bin/deliver -e -r ${sender} -m ${extension} ${user}
#  flags=R user=cyrus argv=/cyrus/bin/deliver -e -m ${extension} ${user}
  flags=Fqhu user=uucp argv=uux -r -n -z -a$sender - $nexthop!rmail ($recipient)
#  flags=F user=ftn argv=/usr/lib/ifmail/ifmail -r $nexthop ($recipient)
#  flags=Fq. user=bsmtp argv=/usr/lib/bsmtp/bsmtp -t$nexthop -f$sender $recipient
#  flags=R user=scalemail argv=/usr/lib/scalemail/bin/scalemail-store ${nexthop} ${user} ${extension}
#  flags=FRX user=list argv=/usr/lib/mailman/bin/postfix-to-mailman.py ${nexthop} ${user}

-rwxr-xr-x 1 root root 802 avril  8  2024 /etc/ppp/ip-down.d/postfix

-rwxr-xr-x 1 root root 1185 avril  8  2024 /etc/ppp/ip-up.d/postfix

-rwxr-xr-x 1 root root 441 avril  8  2024 /etc/resolvconf/update-libc.d/postfix

-rw-r--r-- 1 root root 361 avril  8  2024 /etc/ufw/applications.d/postfix

-rw-r--r-- 1 root root 761 nov.  15  2021 /snap/core22/2216/usr/share/bash-completion/completions/postfix

-rw-r--r-- 1 root root 761 nov.  15  2021 /snap/core22/2292/usr/share/bash-completion/completions/postfix

-rwxr-xr-x 1 root root 802 avril  8  2024 /usr/lib/networkd-dispatcher/off.d/postfix

-rwxr-xr-x 1 root root 1185 avril  8  2024 /usr/lib/networkd-dispatcher/routable.d/postfix

drwxr-xr-x 3 root root 4096 nov.  26 17:49 /usr/lib/postfix

-rwxr-xr-x 1 root root 18816 avril  8  2024 /usr/sbin/postfix

-rw-r--r-- 1 root root 761 sept. 18  2023 /usr/share/bash-completion/completions/postfix

drwxr-xr-x 2 root root 4096 nov.  26 17:49 /usr/share/doc/postfix

-rw-r--r-- 1 root root 347 mars   5  2024 /usr/share/lintian/overrides/postfix

drwxr-xr-x 2 root root 4096 nov.  26 17:49 /usr/share/postfix

drwxr-xr-x 2 postfix postfix 4096 nov.  27 12:32 /var/lib/postfix

drwxr-xr-x 20 root root 4096 nov.  26 17:50 /var/spool/postfix
find: ‘/var/spool/postfix/defer’: Permission non accordée
find: ‘/var/spool/postfix/private’: Permission non accordée
find: ‘/var/spool/postfix/deferred’: Permission non accordée
find: ‘/var/spool/postfix/hold’: Permission non accordée
find: ‘/var/spool/postfix/saved’: Permission non accordée
find: ‘/var/spool/postfix/corrupt’: Permission non accordée
find: ‘/var/spool/postfix/active’: Permission non accordée
find: ‘/var/spool/postfix/flush’: Permission non accordée
find: ‘/var/spool/postfix/incoming’: Permission non accordée
find: ‘/var/spool/postfix/trace’: Permission non accordée
find: ‘/var/spool/postfix/bounce’: Permission non accordée
find: ‘/var/spool/postfix/maildrop’: Permission non accordée
find: ‘/var/spool/postfix/public’: Permission non accordée


╔══════════╣ Analyzing FTP Files (limit 70)
                                                                                                                                                          


-rw-r--r-- 1 root root 69 déc.  19 00:34 /etc/php/7.4/mods-available/ftp.ini
-rw-r--r-- 1 root root 69 juil. 14  2025 /etc/php/8.3/mods-available/ftp.ini
-rw-r--r-- 1 root root 69 déc.  19 00:34 /usr/share/php7.4-common/common/ftp.ini
-rw-r--r-- 1 root root 69 janv.  7 09:40 /usr/share/php8.3-common/common/ftp.ini






╔══════════╣ Analyzing Samba Files (limit 70)
-rw-r--r-- 1 root root 8917 oct.   9 15:43 /etc/samba/smb.conf                                                                                            
;   logon script = logon.cmd
;   
;   
;   create mask = 0700
;   directory mask = 0700
;   guest ok = yes
;   
# The path below should be writable by all users so that their
;   
;   
;   create mask = 0600
;   directory mask = 0700
   
   
   
   create mask = 0700
   browseable = yes
   
   
-rw-r--r-- 1 root root 8917 oct.   9 15:43 /usr/share/samba/smb.conf
;   logon script = logon.cmd
;   
;   
;   create mask = 0700
;   directory mask = 0700
;   guest ok = yes
;   
# The path below should be writable by all users so that their
;   
;   
;   create mask = 0600
;   directory mask = 0700
   
   
   
   create mask = 0700
   browseable = yes
   
   

╔══════════╣ Analyzing DNS Files (limit 70)
-rw-r--r-- 1 root root 826 sept. 18  2023 /usr/share/bash-completion/completions/bind                                                                     
-rw-r--r-- 1 root root 826 sept. 18  2023 /usr/share/bash-completion/completions/bind




╔══════════╣ Analyzing Roundcube Files (limit 70)
drwxrwxrwx 4 www-data www-data 4096 sept.  1  2024 /var/www/html/webmail/vendor/roundcube                                                                 


╔══════════╣ Analyzing Jenkins Files (limit 70)
                                                                                                                                                          


-r--r--r-- 1 10777 10777 325 juil. 28  2022 /opt/splunk/etc/modules/input/exec/config.xml
-r--r--r-- 1 10777 10777 339 juil. 28  2022 /opt/splunk/etc/modules/input/FIFO/config.xml
-r--r--r-- 1 10777 10777 579 juil. 28  2022 /opt/splunk/etc/modules/input/fschangemanager/config.xml
-r--r--r-- 1 10777 10777 731 juil. 28  2022 /opt/splunk/etc/modules/input/RemoteQueue/config.xml
-r--r--r-- 1 10777 10777 1509 juil. 28  2022 /opt/splunk/etc/modules/input/stashparsing/config.xml
-r--r--r-- 1 10777 10777 1460 juil. 28  2022 /opt/splunk/etc/modules/input/structuredparsing/config.xml
-r--r--r-- 1 10777 10777 787 juil. 28  2022 /opt/splunk/etc/modules/input/tailfile/config.xml
-r--r--r-- 1 10777 10777 729 juil. 28  2022 /opt/splunk/etc/modules/input/TCP/config.xml
-r--r--r-- 1 10777 10777 397 juil. 28  2022 /opt/splunk/etc/modules/input/UDP/config.xml
-r--r--r-- 1 10777 10777 272 juil. 28  2022 /opt/splunk/etc/modules/internal/scheduler/config.xml
-r--r--r-- 1 10777 10777 451 juil. 28  2022 /opt/splunk/etc/modules/output/config.xml
-r--r--r-- 1 10777 10777 2095 juil. 28  2022 /opt/splunk/etc/modules/output/RemoteQueue/config.xml
-r--r--r-- 1 10777 10777 5232 juil. 28  2022 /opt/splunk/etc/modules/parsing/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 325 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/exec/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 339 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/FIFO/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 579 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/fschangemanager/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 731 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/RemoteQueue/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 1460 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/structuredparsing/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 787 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/tailfile/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 729 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/TCP/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 397 oct.  30 00:44 /opt/splunkforwarder/etc/modules/input/UDP/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 451 oct.  30 00:44 /opt/splunkforwarder/etc/modules/output/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 2362 oct.  30 00:44 /opt/splunkforwarder/etc/modules/output/RemoteQueue/config.xml
-r--r--r-- 1 splunkfwd splunkfwd 5648 oct.  30 00:44 /opt/splunkforwarder/etc/modules/parsing/config.xml


╔══════════╣ Analyzing Other Interesting Files (limit 70)
-rw-r--r-- 1 root root 3771 mars  31  2024 /etc/skel/.bashrc                                                                                              
-rw-r--r-- 1 root root 3771 janv.  6  2022 /snap/core22/2216/etc/skel/.bashrc
-rw-r--r-- 1 root root 3771 janv.  6  2022 /snap/core22/2292/etc/skel/.bashrc





-rw-r--r-- 1 root root 807 mars  31  2024 /etc/skel/.profile
-rw-r--r-- 1 root root 807 janv.  6  2022 /snap/core22/2216/etc/skel/.profile
-rw-r--r-- 1 root root 807 janv.  6  2022 /snap/core22/2292/etc/skel/.profile




╔══════════╣ Analyzing Windows Files (limit 70)
                                                                                                                                                          





















lrwxrwxrwx 1 root root 22 janv. 21 10:16 /etc/alternatives/my.cnf -> /etc/mysql/mariadb.cnf
lrwxrwxrwx 1 root root 24 oct.  20  2020 /etc/mysql/my.cnf -> /etc/alternatives/my.cnf
-rw-r--r-- 1 root root 83 janv. 21 10:16 /var/lib/dpkg/alternatives/my.cnf





























╔══════════╣ Analyzing FreeIPA Files (limit 70)
drwxr-xr-x 2 root root 4096 juin   3  2025 /usr/src/linux-hwe-6.11-headers-6.11.0-26/drivers/net/ipa                                                      

drwxr-xr-x 2 root root 4096 déc.  11 06:23 /usr/src/linux-hwe-6.14-headers-6.14.0-37/drivers/net/ipa



╔══════════╣ Searching kerberos conf files and tickets
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/linux-active-directory.html#linux-active-directory                                 
ptrace protection is enabled (1), you need to disable it to search for tickets inside processes memory                                                    
-rw-r--r-- 1 root root 71 févr.  5 23:02 /etc/krb5.conf

[libdefaults]
udp_preference_limit = 0
default_realm = IRONSOFT.LOCAL
-rw-r--r-- 1 root root 192 août  12 05:24 /usr/lib/x86_64-linux-gnu/sssd/conf/sssd.conf
[sssd]
domains = shadowutils

[nss]

[pam]

[domain/shadowutils]
id_provider = proxy
proxy_lib_name = files

auth_provider = proxy
proxy_pam_target = sssd-shadowutils

proxy_fast_alias = True
tickets kerberos Not Found
klist Not Found                                                                                                                                           
                                                                                                                                                          
╔══════════╣ Searching Log4Shell vulnerable libraries
                                                                                                                                                          

╔══════════╣ Searching mysql credentials and exec
From '/etc/mysql/mariadb.conf.d/50-server.cnf' Mysql user:                                                                                                
Found readable /etc/mysql/my.cnf
[client-server]
socket = /run/mysqld/mysqld.sock
!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mariadb.conf.d/

╔══════════╣ MySQL version
mysql  Ver 15.1 Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64) using  EditLine wrapper                                                           


═╣ MySQL connection using default root/root ........... No
═╣ MySQL connection using root/toor ................... No                                                                                                
═╣ MySQL connection using root/NOPASS ................. Yes                                                                                               
User    Host    authentication_string
mariadb.sys     localhost
root    localhost
mysql   localhost       invalid
roundcube       localhost       *B4C04794BBE2ADF0723ADCA4E6508B631CC455C2
glpi_user       localhost       *342CC53D9DA707E8AEF17FDBE2570A99C4F2C043

MySQL process not found.
╔══════════╣ Analyzing PGP-GPG Files (limit 70)
/usr/bin/gpg                                                                                                                                              
netpgpkeys Not Found
netpgp Not Found                                                                                                                                          
                                                                                                                                                          
-rw-r--r-- 1 root root 1165 nov.  28  2023 /etc/apt/trusted.gpg.d/ubuntu-keyring-2012-cdimage.gpg
-rw-r--r-- 1 root root 1167 nov.  28  2023 /etc/apt/trusted.gpg.d/ubuntu-keyring-2018-archive.gpg
-rw-r--r-- 1 root root 7399 sept. 18  2018 /snap/core22/2216/usr/share/keyrings/ubuntu-archive-keyring.gpg
-rw-r--r-- 1 root root 6713 oct.  27  2016 /snap/core22/2216/usr/share/keyrings/ubuntu-archive-removed-keys.gpg
-rw-r--r-- 1 root root 3023 mars  27  2021 /snap/core22/2216/usr/share/keyrings/ubuntu-cloudimage-keyring.gpg
-rw-r--r-- 1 root root 0 janv. 17  2018 /snap/core22/2216/usr/share/keyrings/ubuntu-cloudimage-removed-keys.gpg
-rw-r--r-- 1 root root 1227 mai   27  2010 /snap/core22/2216/usr/share/keyrings/ubuntu-master-keyring.gpg
-rw-r--r-- 1 root root 7399 sept. 18  2018 /snap/core22/2292/usr/share/keyrings/ubuntu-archive-keyring.gpg
-rw-r--r-- 1 root root 6713 oct.  27  2016 /snap/core22/2292/usr/share/keyrings/ubuntu-archive-removed-keys.gpg
-rw-r--r-- 1 root root 3023 mars  27  2021 /snap/core22/2292/usr/share/keyrings/ubuntu-cloudimage-keyring.gpg
-rw-r--r-- 1 root root 0 janv. 17  2018 /snap/core22/2292/usr/share/keyrings/ubuntu-cloudimage-removed-keys.gpg
-rw-r--r-- 1 root root 1227 mai   27  2010 /snap/core22/2292/usr/share/keyrings/ubuntu-master-keyring.gpg
-rw-r--r-- 1 root root 3902 janv.  5 23:01 /usr/share/gnupg/distsigkey.gpg
-rw-r--r-- 1 root root 3607 nov.  26  2023 /usr/share/keyrings/ubuntu-archive-keyring.gpg
-rw-r--r-- 1 root root 1227 nov.  26  2023 /usr/share/keyrings/ubuntu-archive-removed-keys.gpg
-rw-r--r-- 1 root root 2444 nov.  26  2023 /usr/share/keyrings/ubuntu-cloudimage-keyring.gpg
-rw-r--r-- 1 root root 0 nov.  26  2023 /usr/share/keyrings/ubuntu-cloudimage-removed-keys.gpg
-rw-r--r-- 1 root root 1191 nov.  26  2023 /usr/share/keyrings/ubuntu-master-keyring.gpg
-rw-r--r-- 1 root root 1150 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-anbox-cloud.gpg
-rw-r--r-- 1 root root 2247 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-cc-eal.gpg
-rw-r--r-- 1 root root 2274 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-cis.gpg
-rw-r--r-- 1 root root 2236 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-esm-apps.gpg
-rw-r--r-- 1 root root 2236 sept. 23 19:28 /usr/share/keyrings/ubuntu-pro-esm-apps-legacy.gpg
-rw-r--r-- 1 root root 2264 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-esm-infra.gpg
-rw-r--r-- 1 root root 2264 sept. 23 19:28 /usr/share/keyrings/ubuntu-pro-esm-infra-legacy.gpg
-rw-r--r-- 1 root root 2275 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-fips.gpg
-rw-r--r-- 1 root root 2275 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-fips-preview.gpg
-rw-r--r-- 1 root root 2250 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-realtime-kernel.gpg
-rw-r--r-- 1 root root 2235 févr. 19  2025 /usr/share/keyrings/ubuntu-pro-ros.gpg




╔══════════╣ Checking if runc is available
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#runc--privilege-escalation                                              
runc was found in /usr/sbin/runc, you may be able to escalate privileges with it                                                                          

╔══════════╣ Searching uncommon passwd files (splunk)
passwd file: /etc/pam.d/passwd                                                                                                                            
passwd file: /etc/passwd
passwd file: /opt/splunkforwarder/etc/passwd
passwd file: /snap/core22/2216/etc/pam.d/passwd
passwd file: /snap/core22/2216/etc/passwd
passwd file: /snap/core22/2216/usr/share/bash-completion/completions/passwd
passwd file: /snap/core22/2216/usr/share/lintian/overrides/passwd
passwd file: /snap/core22/2216/var/lib/extrausers/passwd
passwd file: /snap/core22/2292/etc/pam.d/passwd
passwd file: /snap/core22/2292/etc/passwd
passwd file: /snap/core22/2292/usr/share/bash-completion/completions/passwd
passwd file: /snap/core22/2292/usr/share/lintian/overrides/passwd
passwd file: /snap/core22/2292/var/lib/extrausers/passwd
passwd file: /usr/share/bash-completion/completions/passwd
passwd file: /usr/share/lintian/overrides/passwd

╔══════════╣ Searching ssl/ssh files
╔══════════╣ Analyzing SSH Files (limit 70)                                                                                                               
                                                                                                                                                          




-rw-r--r-- 1 root root 197 juin   4  2025 /etc/ssh/ssh_host_ecdsa_key.pub
-rw-r--r-- 1 root root 117 juin   4  2025 /etc/ssh/ssh_host_ed25519_key.pub
-rw-r--r-- 1 root root 589 juin   4  2025 /etc/ssh/ssh_host_rsa_key.pub

Port 22
PermitEmptyPasswords no
PubkeyAuthentication yes
AllowAgentForwarding yes
PasswordAuthentication yes
PermitRootLogin yes
UsePAM yes
ChallengeResponseAuthentication no
══╣ Some certificates were found (out limited):
/etc/pki/fwupd/LVFS-CA.pem                                                                                                                                
/etc/pki/fwupd-metadata/LVFS-CA.pem
/etc/ssl/certs/ACCVRAIZ1.pem
/etc/ssl/certs/AC_RAIZ_FNMT-RCM.pem
/etc/ssl/certs/AC_RAIZ_FNMT-RCM_SERVIDORES_SEGUROS.pem
/etc/ssl/certs/Actalis_Authentication_Root_CA.pem
/etc/ssl/certs/AffirmTrust_Commercial.pem
/etc/ssl/certs/AffirmTrust_Networking.pem
/etc/ssl/certs/AffirmTrust_Premium_ECC.pem
/etc/ssl/certs/AffirmTrust_Premium.pem
/etc/ssl/certs/Amazon_Root_CA_1.pem
/etc/ssl/certs/Amazon_Root_CA_2.pem
/etc/ssl/certs/Amazon_Root_CA_3.pem
/etc/ssl/certs/Amazon_Root_CA_4.pem
/etc/ssl/certs/ANF_Secure_Server_Root_CA.pem
/etc/ssl/certs/Atos_TrustedRoot_2011.pem
/etc/ssl/certs/Atos_TrustedRoot_Root_CA_ECC_TLS_2021.pem
/etc/ssl/certs/Atos_TrustedRoot_Root_CA_RSA_TLS_2021.pem
/etc/ssl/certs/Autoridad_de_Certificacion_Firmaprofesional_CIF_A62634068.pem
/etc/ssl/certs/Baltimore_CyberTrust_Root.pem
13598PSTORAGE_CERTSBIN

══╣ Writable ssh and gpg agents
/etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket                                                                                               
/etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket
/etc/systemd/user/sockets.target.wants/gpg-agent.socket
/etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket
══╣ Some home ssh config file was found
/usr/share/openssh/sshd_config                                                                                                                            
Include /etc/ssh/sshd_config.d/*.conf
KbdInteractiveAuthentication no
UsePAM yes
X11Forwarding yes
PrintMotd no
AcceptEnv LANG LC_*
Subsystem       sftp    /usr/lib/openssh/sftp-server

══╣ /etc/hosts.allow file found, trying to read the rules:
/etc/hosts.allow                                                                                                                                          


Searching inside /etc/ssh/ssh_config for interesting info
Include /etc/ssh/ssh_config.d/*.conf
Host *
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes




                      ╔════════════════════════════════════╗
══════════════════════╣ Files with Interesting Permissions ╠══════════════════════                                                                        
                      ╚════════════════════════════════════╝                                                                                              
╔══════════╣ SUID - Check easy privesc, exploits and write perms
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sudo-and-suid                                                           
-rwsr-xr-x 1 root root 72K févr.  6  2024 /snap/core22/2216/usr/bin/chfn  --->  SuSE_9.3/10                                                               
-rwsr-xr-x 1 root root 44K févr.  6  2024 /snap/core22/2216/usr/bin/chsh
-rwsr-xr-x 1 root root 71K févr.  6  2024 /snap/core22/2216/usr/bin/gpasswd
-rwsr-xr-x 1 root root 47K avril  9  2024 /snap/core22/2216/usr/bin/mount  --->  Apple_Mac_OSX(Lion)_Kernel_xnu-1699.32.7_except_xnu-1699.24.8
-rwsr-xr-x 1 root root 40K févr.  6  2024 /snap/core22/2216/usr/bin/newgrp  --->  HP-UX_10.20
-rwsr-xr-x 1 root root 59K févr.  6  2024 /snap/core22/2216/usr/bin/passwd  --->  Apple_Mac_OSX(03-2006)/Solaris_8/9(12-2004)/SPARC_8/9/Sun_Solaris_2.3_to_2.5.1(02-1997)                                                                                                                                           
-rwsr-xr-x 1 root root 55K avril  9  2024 /snap/core22/2216/usr/bin/su
-rwsr-xr-x 1 root root 227K juin  25  2025 /snap/core22/2216/usr/bin/sudo  --->  check_if_the_sudo_version_is_vulnerable
-rwsr-xr-x 1 root root 35K avril  9  2024 /snap/core22/2216/usr/bin/umount  --->  BSD/Linux(08-1996)
-rwsr-xr-- 1 root uuidd 35K oct.  25  2022 /snap/core22/2216/usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-xr-x 1 root root 331K avril 11  2025 /snap/core22/2216/usr/lib/openssh/ssh-keysign
-rwsr-xr-x 1 root root 19K févr. 26  2022 /snap/core22/2216/usr/libexec/polkit-agent-helper-1
-rwsr-xr-x 1 root root 72K févr.  6  2024 /snap/core22/2292/usr/bin/chfn  --->  SuSE_9.3/10
-rwsr-xr-x 1 root root 44K févr.  6  2024 /snap/core22/2292/usr/bin/chsh
-rwsr-xr-x 1 root root 71K févr.  6  2024 /snap/core22/2292/usr/bin/gpasswd
-rwsr-xr-x 1 root root 47K avril  9  2024 /snap/core22/2292/usr/bin/mount  --->  Apple_Mac_OSX(Lion)_Kernel_xnu-1699.32.7_except_xnu-1699.24.8
-rwsr-xr-x 1 root root 40K févr.  6  2024 /snap/core22/2292/usr/bin/newgrp  --->  HP-UX_10.20
-rwsr-xr-x 1 root root 59K févr.  6  2024 /snap/core22/2292/usr/bin/passwd  --->  Apple_Mac_OSX(03-2006)/Solaris_8/9(12-2004)/SPARC_8/9/Sun_Solaris_2.3_to_2.5.1(02-1997)                                                                                                                                           
-rwsr-xr-x 1 root root 55K avril  9  2024 /snap/core22/2292/usr/bin/su
-rwsr-xr-x 1 root root 227K juin  25  2025 /snap/core22/2292/usr/bin/sudo  --->  check_if_the_sudo_version_is_vulnerable
-rwsr-xr-x 1 root root 35K avril  9  2024 /snap/core22/2292/usr/bin/umount  --->  BSD/Linux(08-1996)
-rwsr-xr-- 1 root uuidd 35K oct.  25  2022 /snap/core22/2292/usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-xr-x 1 root root 331K avril 11  2025 /snap/core22/2292/usr/lib/openssh/ssh-keysign
-rwsr-xr-x 1 root root 19K févr. 26  2022 /snap/core22/2292/usr/libexec/polkit-agent-helper-1
-rwsr-xr-x 1 root root 272K juin  25  2025 /usr/bin/sudo  --->  check_if_the_sudo_version_is_vulnerable
-rwsr-xr-x 1 root root 72K mai   30  2024 /usr/bin/chfn  --->  SuSE_9.3/10
-rwsr-xr-x 1 root root 44K mai   30  2024 /usr/bin/chsh
-rwsr-xr-x 1 root root 55K juin   5  2025 /usr/bin/su
-rwsr-xr-x 1 root root 31K déc.   2  2024 /usr/bin/pkexec  --->  Linux4.10_to_5.1.17(CVE-2019-13272)/rhel_6(CVE-2011-1485)/Generic_CVE-2021-4034
-rwsr-xr-x 1 root root 40K mai   30  2024 /usr/bin/newgrp  --->  HP-UX_10.20
-rwsr-xr-x 1 root root 63K mai   30  2024 /usr/bin/passwd  --->  Apple_Mac_OSX(03-2006)/Solaris_8/9(12-2004)/SPARC_8/9/Sun_Solaris_2.3_to_2.5.1(02-1997)
-rwsr-xr-x 1 root root 75K mai   30  2024 /usr/bin/gpasswd
-rwsr-xr-x 1 root root 39K juin   5  2025 /usr/bin/umount  --->  BSD/Linux(08-1996)
-rwsr-xr-x 1 root root 39K avril  8  2024 /usr/bin/fusermount3
-rwsr-xr-x 1 root root 51K juin   5  2025 /usr/bin/mount  --->  Apple_Mac_OSX(Lion)_Kernel_xnu-1699.32.7_except_xnu-1699.24.8
-rwsr-xr-x 1 root root 723K déc.   2 15:47 /usr/local/bin/mail_parser (Unknown SUID binary!)
  --- It looks like /usr/local/bin/mail_parser is executing chmod and you can impersonate it (strings line: chmod) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing clear and you can impersonate it (strings line: clear) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing clear and you can impersonate it (strings line: clear [[filename:]N|function] - delete breakpoints previously set) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /dev/ and you can impersonate it (strings line: /dev/) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /dev/null and you can impersonate it (strings line: /dev/null) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /dev/stderr and you can impersonate it (strings line: /dev/stderr) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /dev/stdout and you can impersonate it (strings line: /dev/stdout) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing gawk and you can impersonate it (strings line: gawk) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing gawk and you can impersonate it (strings line: gawk is a pattern scanning and processing language.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing getopt and you can impersonate it (strings line: getopt) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing info and you can impersonate it (strings line: info) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing info and you can impersonate it (strings line: info topic - source|sources|variables|functions|break|frame|args|locals|display|watch) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing mtrace and you can impersonate it (strings line: mtrace) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing scalar and you can impersonate it (strings line: scalar) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing setsid and you can impersonate it (strings line: setsid) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing shutdown and you can impersonate it (strings line: shutdown) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing sort and you can impersonate it (strings line: sort comparison function `' is not defined) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /usr/lib/x86_64-linux-gnu/gawk and you can impersonate it (strings line: /usr/lib/x86_64-linux-gnu/gawk) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing /usr/share/locale and you can impersonate it (strings line: /usr/share/locale) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing watch and you can impersonate it (strings line: watch var - set a watchpoint for a variable) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_parser is executing which and you can impersonate it (strings line: which is section `Reporting Problems and Bugs' in the) (https://tinyurl.com/suidpath)
  --- Checking for writable dependencies of /usr/local/bin/mail_parser...
----------------------------------------------------------------------------------------
  --- Trying to execute /usr/local/bin/mail_parser with strace in order to look for hijackable libraries...
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libsigsegv.so.2", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libreadline.so.8", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libmpfr.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libgmp.so.10", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libm.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libtinfo.so.6", O_RDONLY|O_CLOEXEC) = 3
----------------------------------------------------------------------------------------

-rwsr-xr-x 1 root root 7,7M déc.   8 10:30 /usr/local/bin/mail_web (Unknown SUID binary!)
  --- It looks like /usr/local/bin/mail_web is executing //// and you can impersonate it (strings line: ////) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing basename and you can impersonate it (strings line: basename) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing cancel and you can impersonate it (strings line: cancel) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing cancel and you can impersonate it (strings line: cancel the previous call to dump_traceback_later().) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing chmod and you can impersonate it (strings line: chmod) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing chmod and you can impersonate it (strings line: chmod will modify the symbolic link itself instead of the file) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing chown and you can impersonate it (strings line: chown) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing chroot and you can impersonate it (strings line: chroot) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing clear and you can impersonate it (strings line: clear) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing clear and you can impersonate it (strings line: clear the O_NONBLOCK flag otherwise.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing date and you can impersonate it (strings line: date) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing date and you can impersonate it (strings line: date of last change) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing date and you can impersonate it (strings line: date value out of range) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /dev/null and you can impersonate it (strings line: /dev/null) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /dev/urandom and you can impersonate it (strings line: /dev/urandom) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /dev/urandom and you can impersonate it (strings line: /dev/urandom (or equivalent) not found) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing dirname and you can impersonate it (strings line: dirname) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing env and you can impersonate it (strings line: env) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing env and you can impersonate it (strings line: env cannot contain 'PATH' and b'PATH' keys) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing expand and you can impersonate it (strings line: expand) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing expr and you can impersonate it (strings line: expr = BoolOp(boolop op, expr* values)) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing find and you can impersonate it (strings line: find) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing find and you can impersonate it (strings line: find the "next" winner is to move some loser (let's say cell 30 in the) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing flock and you can impersonate it (strings line: flock) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing fold and you can impersonate it (strings line: fold must be either 0 or 1) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing getopt and you can impersonate it (strings line: getopt) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing groups and you can impersonate it (strings line: groups) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing gzip and you can impersonate it (strings line: gzip) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing head and you can impersonate it (strings line: head) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing host and you can impersonate it (strings line: host) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing host and you can impersonate it (strings line: host name must not contain null character) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing info and you can impersonate it (strings line: info) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing info and you can impersonate it (strings line: info dicts, as used in zipimporter._files.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing info and you can impersonate it (strings line: info is a pair (hostaddr, port).) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing init and you can impersonate it (strings line: init function of  returned uninitialized object) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing install and you can impersonate it (strings line: install debug hooks.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing install and you can impersonate it (strings line: install into /usr/lib/python3/dist-packages.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing join and you can impersonate it (strings line: join) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing last and you can impersonate it (strings line: last) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing link and you can impersonate it (strings line: link) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing link and you can impersonate it (strings line: link points to.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing locale and you can impersonate it (strings line: locale) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing locale and you can impersonate it (strings line: locale query failed) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing login and you can impersonate it (strings line: login name) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing login and you can impersonate it (strings line: login name; deprecated) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing make and you can impersonate it (strings line: make an iterator that returns consecutive keys and groups from the iterable) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing make and you can impersonate it (strings line: make decoding efficient.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing make and you can impersonate it (strings line: make encoding efficient.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing mkdir and you can impersonate it (strings line: mkdir) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing mkfifo and you can impersonate it (strings line: mkfifo) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing mknod and you can impersonate it (strings line: mknod) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing nice and you can impersonate it (strings line: nice) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing open and you can impersonate it (strings line: open) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing perf and you can impersonate it (strings line: perf) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing perror and you can impersonate it (strings line: perror) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing POST and you can impersonate it (strings line: POST) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /proc/self/fd and you can impersonate it (strings line: /proc/self/fd) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is using /proc/self/stat and you can modify it (strings line: /proc/self/stat) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing python3 and you can impersonate it (strings line: python3) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing realpath and you can impersonate it (strings line: realpath) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing replace and you can impersonate it (strings line: replace) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing replace and you can impersonate it (strings line: replace and percolate items that happen to fit the current run, you'll) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing replace and you can impersonate it (strings line: replace bytes is too long) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing replace and you can impersonate it (strings line: replace it by something else at a lower level, and the rule becomes) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing replace and you can impersonate it (strings line: replace string is too long) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing reset and you can impersonate it (strings line: reset) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing rmdir and you can impersonate it (strings line: rmdir) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing setsid and you can impersonate it (strings line: setsid) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing setsid and you can impersonate it (strings line: setsid) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing shutdown and you can impersonate it (strings line: shutdown) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size does not fit in an int) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size in bytes of the C type used to represent a digit) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size indicates the approximate maximum number of decoded) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size must be 0 or a positive value) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size must be positive) (https://tinyurl.com/suidpath)
./linpeas.sh: 8252: printf: %z: invalid directive
  --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size not valid:   --- It looks like /usr/local/bin/mail_web is executing size and you can impersonate it (strings line: size of a digit in bits) (https://tinyurl.com/suidpath)                             
  --- It looks like /usr/local/bin/mail_web is executing sleep and you can impersonate it (strings line: sleep) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing sleep and you can impersonate it (strings line: sleep length must be non-negative) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing sort and you can impersonate it (strings line: sort) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing sort and you can impersonate it (strings line: sort produces the longest runs possible.  Tournaments are a good way) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing stat and you can impersonate it (strings line: stat) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing stat and you can impersonate it (strings line: stat will examine the symbolic link itself instead of the file) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing strings and you can impersonate it (strings line: strings are too large to concat) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing strip and you can impersonate it (strings line: strip) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing sum and you can impersonate it (strings line: sum of the kernel and user-space CPU time.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing tail and you can impersonate it (strings line: tail) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time of last access in nanoseconds) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time of last change in nanoseconds) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time of last modification) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time of last modification in nanoseconds) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout is too large) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout must be a float or None) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout must be an integer or None) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout must be greater than 0) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout must be non-negative) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout value is too large) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing timeout and you can impersonate it (strings line: timeout value must be positive) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing time and you can impersonate it (strings line: time zones; instead the returned value will either be equal to that) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing truncate and you can impersonate it (strings line: truncate) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing truncate and you can impersonate it (strings line: truncate of closed file) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing uname and you can impersonate it (strings line: uname) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing unlink and you can impersonate it (strings line: unlink) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing unshare and you can impersonate it (strings line: unshare) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing users and you can impersonate it (strings line: users are not explicitly listed as members of the groups they are in) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /usr and you can impersonate it (strings line: /usr) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing /usr/local and you can impersonate it (strings line: /usr/local and there is a directory /usr/local/lib/python2.5/site-packages) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which are ignored) on a closed stream should raise a ValueError.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which are used to control compatibility support for pickle stream) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which can cause copy-on-write.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which determines how the pyc should be further validated against the source.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which file descriptor should be queried.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which is likely to eventually go away.  There's is a pretty good) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which may be less than the total capacity of all the buffers.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which the built-in of that name is also needed.) (https://tinyurl.com/suidpath)
  --- It looks like /usr/local/bin/mail_web is executing which and you can impersonate it (strings line: which will return an instance using the specified loaders and the path) (https://tinyurl.com/suidpath)
  --- Checking for writable dependencies of /usr/local/bin/mail_web...
----------------------------------------------------------------------------------------
  --- Trying to execute /usr/local/bin/mail_web with strace in order to look for hijackable libraries...
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libm.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libz.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libexpat.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/locale/locale-archive", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/local/pyvenv.cfg", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/usr/local/bin/pyvenv.cfg", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/usr/local/bin/mail_web._pth", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/usr/local/bin/mail_web._pth", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/usr/local/bin/pybuilddir.txt", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/etc/localtime", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/encodings/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/encodings", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/encodings/__pycache__/aliases.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/encodings/__pycache__/utf_8.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/local/lib/python3.12/dist-packages", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/sitecustomize.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/local/lib/python3.12/dist-packages", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/__pycache__/apport_python_hook.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/home/pierre", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/enum.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/types.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/operator.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/functools.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/collections/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/keyword.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/reprlib.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re/__pycache__/_compiler.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re/__pycache__/_parser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re/__pycache__/_constants.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/re/__pycache__/_casefix.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/copyreg.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/default/apport", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/contextlib.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/traceback.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/collections", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/collections/__pycache__/abc.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/linecache.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/tokenize.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/token.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/textwrap.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/gettext.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/warnings.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/logging.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/typing.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/packaging_impl/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/importlib/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/platform.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/packaging.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/subprocess.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/locale.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/signal.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/threading.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/_weakrefset.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/selectors.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/os-release", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/packaging_impl", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/packaging_impl/__pycache__/apt_dpkg.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/__future__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/datetime.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/glob.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/fnmatch.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/gzip.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/struct.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/_compression.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/hashlib.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_hashlib.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libcrypto.so.3", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/proc/sys/crypto/fips_enabled", O_RDONLY) = -1 ENOENT (Aucun fichier ou dossier de ce nom)
openat(AT_FDCWD, "/usr/lib/ssl/openssl.cnf", O_RDONLY) = 3
read(3, "#\n# OpenSSL example configuratio"..., 4096) = 4096
openat(AT_FDCWD, "/usr/lib/python3.12/http/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/http", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/http/__pycache__/client.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/parser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/feedparser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/errors.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/_policybase.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/header.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/quoprimime.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/string.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/base64mime.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/base64.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/charset.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/encoders.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/quopri.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/utils.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/random.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/bisect.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/socket.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib/__pycache__/parse.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/ipaddress.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/_parseaddr.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/calendar.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/message.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/_encoded_words.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/iterators.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/ssl.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_ssl.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libssl.so.3", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/json/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/json", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/json/__pycache__/decoder.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/json/__pycache__/scanner.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_json.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/json/__pycache__/encoder.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/logging/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/weakref.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/pathlib.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/pickle.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/_compat_pickle.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/shutil.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/bz2.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_bz2.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libbz2.so.1.0", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/lzma.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_lzma.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/liblzma.so.5", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/tempfile.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib/__pycache__/error.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib/__pycache__/response.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/urllib/__pycache__/request.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt_pkg.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libapt-pkg.so.6.0", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libstdc++.so.6", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libgcc_s.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/liblz4.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libzstd.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libudev.so.1", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libsystemd.so.0", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libgcrypt.so.20", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libxxhash.so.0", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libcap.so.2", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libgpg-error.so.0", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/__pycache__/cache.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/progress/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/progress", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/progress/__pycache__/text.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/progress/__pycache__/base.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/__pycache__/package.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apt/__pycache__/cdrom.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/01-vendor-ubuntu", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/01autoremove", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/10periodic", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/15update-stamp", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20apt-esm-hook.conf", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20archive", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20auto-upgrades", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20dbus", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20packagekit", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/20snapd.conf", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/50appstream", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/50command-not-found", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/50unattended-upgrades", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/60icons", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/60icons-hidpi", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/70debconf", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/etc/apt/apt.conf.d/99update-notifier", O_RDONLY|O_NOCTTY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/share/dpkg/cputable", O_RDONLY) = 3
openat(AT_FDCWD, "/usr/share/dpkg/tupletable", O_RDONLY) = 4
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/aptsources/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/share/dpkg/cputable", O_RDONLY) = 3
openat(AT_FDCWD, "/usr/share/dpkg/tupletable", O_RDONLY) = 4
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/aptsources", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/aptsources/__pycache__/sourceslist.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/aptsources/__pycache__/_deb822.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/aptsources/__pycache__/distinfo.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/csv.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/report.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/importlib", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/importlib/__pycache__/_abc.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/domreg.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/minidom.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/minicompat.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/xmlbuilder.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/copy.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/dom/__pycache__/NodeFilter.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/parsers/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/parsers", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/xml/parsers/__pycache__/expat.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/fileutils.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/configparser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/__pycache__/problem_report.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/dataclasses.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/inspect.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/ast.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/dis.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/opcode.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime/__pycache__/__init__.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_DIRECTORY) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime/__pycache__/base.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/policy.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/headerregistry.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/_header_value_parser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/contentmanager.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime/__pycache__/multipart.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime/__pycache__/text.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/mime/__pycache__/nonmultipart.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/hookutils.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/ui.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/argparse.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/queue.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/heapq.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/lib-dynload/_queue.cpython-312-x86_64-linux-gnu.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/smtplib.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/email/__pycache__/generator.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/hmac.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/webbrowser.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3.12/__pycache__/shlex.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/crashdb.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/REThread.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/lib/python3/dist-packages/apport/__pycache__/user_group.cpython-312.pyc", O_RDONLY|O_CLOEXEC) = 3
----------------------------------------------------------------------------------------


╔══════════╣ SGID
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#sudo-and-suid                                                           
-rwxr-sr-x 1 root shadow 71K févr.  6  2024 /snap/core22/2216/usr/bin/chage                                                                               
-rwxr-sr-x 1 root shadow 23K févr.  6  2024 /snap/core22/2216/usr/bin/expiry
-rwxr-sr-x 1 root pipewire 287K avril 11  2025 /snap/core22/2216/usr/bin/ssh-agent
-rwxr-sr-x 1 root shadow 23K juin  12  2025 /snap/core22/2216/usr/sbin/pam_extrausers_chkpwd
-rwxr-sr-x 1 root shadow 27K juin  12  2025 /snap/core22/2216/usr/sbin/unix_chkpwd
-rwxr-sr-x 1 root shadow 71K févr.  6  2024 /snap/core22/2292/usr/bin/chage
-rwxr-sr-x 1 root shadow 23K févr.  6  2024 /snap/core22/2292/usr/bin/expiry
-rwxr-sr-x 1 root pipewire 287K avril 11  2025 /snap/core22/2292/usr/bin/ssh-agent
-rwxr-sr-x 1 root shadow 23K juin  12  2025 /snap/core22/2292/usr/sbin/pam_extrausers_chkpwd
-rwxr-sr-x 1 root shadow 27K juin  12  2025 /snap/core22/2292/usr/sbin/unix_chkpwd
-rwxr-sr-x 1 root crontab 39K mars  31  2024 /usr/bin/crontab
-rwxr-sr-x 1 root _ssh 303K août  26 15:49 /usr/bin/ssh-agent
-rwxr-sr-x 1 root shadow 71K mai   30  2024 /usr/bin/chage
-rwxr-sr-x 1 root mail 15K avril  1  2024 /usr/bin/mlock
-rwxr-sr-x 1 root shadow 27K mai   30  2024 /usr/bin/expiry
-rwsr-sr-x 1 root root 15K oct.  23 19:29 /usr/lib/xorg/Xorg.wrap
-rwxr-sr-x 1 root shadow 27K sept. 15 14:37 /usr/sbin/pam_extrausers_chkpwd
-r-xr-sr-x 1 root postdrop 23K avril  8  2024 /usr/sbin/postdrop
-r-xr-sr-x 1 root postdrop 23K avril  8  2024 /usr/sbin/postqueue
-rwxr-sr-x 1 root shadow 31K sept. 15 14:37 /usr/sbin/unix_chkpwd
-rwxr-sr-x 1 root mail 23K oct.  28 13:46 /usr/libexec/camel-lock-helper-1.2

╔══════════╣ Files with ACLs (limited to 50)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#acls                                                                    
files with acls in searched folders Not Found                                                                                                             
                                                                                                                                                          
╔══════════╣ Capabilities
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#capabilities                                                            
══╣ Current shell capabilities                                                                                                                            
./linpeas.sh: 8393: [[: not found                                                                                                                         
CapInh:  [Invalid capability format]
./linpeas.sh: 8393: [[: not found
CapPrm:  [Invalid capability format]
./linpeas.sh: 8384: [[: not found
CapEff:  [Invalid capability format]
./linpeas.sh: 8393: [[: not found
CapBnd:  [Invalid capability format]
./linpeas.sh: 8393: [[: not found
CapAmb:  [Invalid capability format]

╚ Parent process capabilities
./linpeas.sh: 8418: [[: not found                                                                                                                         
CapInh:  [Invalid capability format]
./linpeas.sh: 8418: [[: not found
CapPrm:  [Invalid capability format]
./linpeas.sh: 8409: [[: not found
CapEff:  [Invalid capability format]
./linpeas.sh: 8418: [[: not found
CapBnd:  [Invalid capability format]
./linpeas.sh: 8418: [[: not found
CapAmb:  [Invalid capability format]


Files with capabilities (limited to 50):
/snap/core22/2216/usr/bin/ping cap_net_raw=ep
/snap/core22/2292/usr/bin/ping cap_net_raw=ep
/snap/snapd/25935/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,cap_setgid,cap_setuid,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=p                                                                                                                                          
/snap/snapd/25577/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,cap_setgid,cap_setuid,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=p                                                                                                                                          
/usr/bin/ping cap_net_raw=ep
/usr/bin/mtr-packet cap_net_raw=ep
/usr/lib/x86_64-linux-gnu/gstreamer1.0/gstreamer-1.0/gst-ptp-helper cap_net_bind_service,cap_net_admin,cap_sys_nice=ep
/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,cap_setgid,cap_setuid,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=p

╔══════════╣ Users with capabilities
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#capabilities                                                            
                                                                                                                                                          
╔══════════╣ Checking misconfigurations of ld.so
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#ldso                                                                    
/etc/ld.so.conf                                                                                                                                           
Content of /etc/ld.so.conf:                                                                                                                               
include /etc/ld.so.conf.d/*.conf

/etc/ld.so.conf.d
  /etc/ld.so.conf.d/fakeroot-x86_64-linux-gnu.conf                                                                                                        
  - /usr/lib/x86_64-linux-gnu/libfakeroot                                                                                                                 
  /etc/ld.so.conf.d/libc.conf
  - /usr/local/lib                                                                                                                                        
  /etc/ld.so.conf.d/x86_64-linux-gnu.conf
  - /usr/local/lib/x86_64-linux-gnu                                                                                                                       
  - /lib/x86_64-linux-gnu
  - /usr/lib/x86_64-linux-gnu

/etc/ld.so.preload
╔══════════╣ Files (scripts) in /etc/profile.d/                                                                                                           
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#profiles-files                                                          
total 72                                                                                                                                                  
drwxr-xr-x   2 root root  4096 nov.  27 12:53 .
drwxr-xr-x 149 root root 12288 févr.  4 06:11 ..
-rw-r--r--   1 root root    96 avril 22  2024 01-locale-fix.sh
-rw-r--r--   1 root root   835 oct.  11  2024 apps-bin-path.sh
-rw-r--r--   1 root root   726 sept. 18  2023 bash_completion.sh
-rw-r--r--   1 root root  1003 avril 19  2024 cedilla-portuguese.sh
lrwxrwxrwx   1 root root    46 févr. 15  2025 debuginfod.csh -> /usr/share/libdebuginfod-common/debuginfod.csh
lrwxrwxrwx   1 root root    45 févr. 15  2025 debuginfod.sh -> /usr/share/libdebuginfod-common/debuginfod.sh
-rw-r--r--   1 root root  1107 mars  31  2024 gawk.csh
-rw-r--r--   1 root root   757 mars  31  2024 gawk.sh
-rw-r--r--   1 root root  1010 avril  9  2024 gnome-session_gnomerc.sh
-rw-r--r--   1 root root   376 mars  20  2023 im-config_wayland.sh
-rw-r--r--   1 root root  4213 juin  12  2024 vte-2.91.sh
-rw-r--r--   1 root root   967 juin  12  2024 vte.csh
-rw-r--r--   1 root root   954 avril  9  2024 xdg_dirs_desktop_session.sh
-rwxr-xr-x   1 root root   841 déc.   2  2024 Z99-cloudinit-warnings.sh
-rwxr-xr-x   1 root root  3396 déc.   2  2024 Z99-cloud-locale-test.sh

╔══════════╣ Permissions in init, init.d, systemd, and rc.d
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#init-initd-systemd-and-rcd                                              
                                                                                                                                                          
╔══════════╣ AppArmor binary profiles
-rw-r--r-- 1 root root   354 juil. 18  2024 1password                                                                                                     
-rw-r--r-- 1 root root   374 juil. 18  2024 balena-etcher
-rw-r--r-- 1 root root   348 juil. 18  2024 brave
-rw-r--r-- 1 root root   342 juil. 18  2024 buildah
-rw-r--r-- 1 root root   342 juil. 18  2024 busybox
-rw-r--r-- 1 root root   330 juil. 18  2024 cam
-rw-r--r-- 1 root root   351 juil. 18  2024 ch-checkns
-rw-r--r-- 1 root root   349 juil. 18  2024 chrome
-rw-r--r-- 1 root root   339 juil. 18  2024 ch-run
-rw-r--r-- 1 root root   349 juil. 18  2024 code
-rw-r--r-- 1 root root   333 juil. 18  2024 crun
-rw-r--r-- 1 root root   427 juil. 31  2025 desktop-icons-ng
-rw-r--r-- 1 root root   342 juil. 18  2024 devhelp
-rw-r--r-- 1 root root   352 juil. 18  2024 Discord
-rw-r--r-- 1 root root   368 juil. 18  2024 element-desktop
-rw-r--r-- 1 root root   356 juil. 18  2024 epiphany
-rw-r--r-- 1 root root   348 juil. 18  2024 evolution
-rw-r--r-- 1 root root   410 juil. 18  2024 firefox
-rw-r--r-- 1 root root   342 juil. 18  2024 flatpak
-rw-r--r-- 1 root root   342 juil. 18  2024 foliate
-rw-r--r-- 1 root root   336 juil. 18  2024 geary
-rw-r--r-- 1 root root   378 juil. 18  2024 github-desktop
-rw-r--r-- 1 root root   353 juil. 18  2024 goldendict
-rw-r--r-- 1 root root   351 juil. 18  2024 ipa_verify
-rw-r--r-- 1 root root   353 juil. 18  2024 kchmviewer
-rw-r--r-- 1 root root   346 juil. 18  2024 keybase
-rw-r--r-- 1 root root   360 juil. 18  2024 lc-compliance
-rw-r--r-- 1 root root   354 juil. 18  2024 libcamerify
-rw-r--r-- 1 root root   383 juil. 18  2024 linux-sandbox
-rw-r--r-- 1 root root   336 juil. 18  2024 loupe
-rw-r--r-- 1 root root  1379 juil. 18  2024 lsb_release
-rw-r--r-- 1 root root   351 juil. 18  2024 lxc-attach
-rw-r--r-- 1 root root   351 juil. 18  2024 lxc-create
-rw-r--r-- 1 root root   354 juil. 18  2024 lxc-destroy
-rw-r--r-- 1 root root   354 juil. 18  2024 lxc-execute
-rw-r--r-- 1 root root   345 juil. 18  2024 lxc-stop
-rw-r--r-- 1 root root   354 juil. 18  2024 lxc-unshare
-rw-r--r-- 1 root root   363 juil. 18  2024 lxc-usernsexec
-rw-r--r-- 1 root root   351 juil. 18  2024 mmdebstrap
-rw-r--r-- 1 root root   386 juil. 18  2024 MongoDB_Compass
-rw-r--r-- 1 root root   352 juil. 18  2024 msedge
-rw-r--r-- 1 root root   346 juil. 18  2024 nautilus
-rw-r--r-- 1 root root   402 juil. 18  2024 notepadqq
-rw-r--r-- 1 root root   350 juil. 18  2024 obsidian
-rw-r--r-- 1 root root   333 juil. 18  2024 opam
-rw-r--r-- 1 root root   355 juil. 18  2024 opera
-rw-r--r-- 1 root root   347 juil. 18  2024 pageedit
-rw-r--r-- 1 root root   680 juil. 18  2024 plasmashell
-rw-r--r-- 1 root root   339 juil. 18  2024 podman
-rw-r--r-- 1 root root   350 juil. 18  2024 polypane
-rw-r--r-- 1 root root   365 juil. 18  2024 privacybrowser
-rw-r--r-- 1 root root   333 juil. 18  2024 qcam
-rw-r--r-- 1 root root   348 juil. 18  2024 qmapshack
-rw-r--r-- 1 root root   404 juil. 18  2024 QtWebEngineProcess
-rw-r--r-- 1 root root   354 juil. 18  2024 qutebrowser
-rw-r--r-- 1 root root   354 juil. 18  2024 rootlesskit
-rw-r--r-- 1 root root   330 juil. 18  2024 rpm
-rw-r--r-- 1 root root   347 juil. 18  2024 rssguard
-rw-r--r-- 1 root root   334 juil. 18  2024 runc
-rw-r--r-- 1 root root   339 juil. 18  2024 sbuild
-rw-r--r-- 1 root root   357 juil. 18  2024 sbuild-abort
-rw-r--r-- 1 root root   364 juil. 18  2024 sbuild-adduser
-rw-r--r-- 1 root root   351 juil. 18  2024 sbuild-apt
-rw-r--r-- 1 root root   381 juil. 18  2024 sbuild-checkpackages
-rw-r--r-- 1 root root   357 juil. 18  2024 sbuild-clean
-rw-r--r-- 1 root root   378 juil. 18  2024 sbuild-createchroot
-rw-r--r-- 1 root root   382 juil. 18  2024 sbuild-destroychroot
-rw-r--r-- 1 root root   375 juil. 18  2024 sbuild-distupgrade
-rw-r--r-- 1 root root   354 juil. 18  2024 sbuild-hold
-rw-r--r-- 1 root root   365 juil. 18  2024 sbuild-shell
-rw-r--r-- 1 root root   360 juil. 18  2024 sbuild-unhold
-rw-r--r-- 1 root root   360 juil. 18  2024 sbuild-update
-rw-r--r-- 1 root root   363 juil. 18  2024 sbuild-upgrade
-rw-r--r-- 1 root root   355 juil. 18  2024 scide
-rw-r--r-- 1 root root   366 juil. 18  2024 signal-desktop
-rw-r--r-- 1 root root   342 juil. 18  2024 slack
-rw-r--r-- 1 root root   354 juil. 18  2024 slirp4netns
-rw-r--r-- 1 root root   363 juil. 18  2024 steam
-rw-r--r-- 1 root root   348 juil. 18  2024 stress-ng
-rw-r--r-- 1 root root   354 juil. 18  2024 surfshark
-rw-r--r-- 1 root root   377 juil. 18  2024 systemd-coredump
-rw-r--r-- 1 root root   354 juil. 18  2024 thunderbird
-rw-r--r-- 1 root root   335 juil. 18  2024 toybox
-rw-r--r-- 1 root root  2400 juil. 18  2024 transmission
-rw-r--r-- 1 root root   342 juil. 18  2024 trinity
-rw-r--r-- 1 root root   330 juil. 18  2024 tup
-rw-r--r-- 1 root root   400 juil. 18  2024 tuxedo-control-center
-rw-r--r-- 1 root root  2064 oct.  27 13:42 ubuntu_pro_apt_news
-rw-r--r-- 1 root root  7098 oct.  27 13:42 ubuntu_pro_esm_cache
-rw-r--r-- 1 root root   881 juil. 18  2024 unix-chkpwd
-rw-r--r-- 1 root root   699 juil. 18  2024 unprivileged_userns
-rw-r--r-- 1 root root   360 juil. 18  2024 userbindmount
-rw-r--r-- 1 root root 11507 oct.  15  2024 usr.bin.evince
-rw-r--r-- 1 root root  3448 mars  29  2024 usr.bin.man
-rw-r--r-- 1 root root  1687 août   1  2023 usr.bin.tcpdump
-rw-r--r-- 1 root root 31877 sept. 18 10:00 usr.lib.snapd.snap-confine.real
-rw-r--r-- 1 root root   767 janv. 12  2025 usr.sbin.cups-browsed
-rw-r--r-- 1 root root  6254 sept. 26  2024 usr.sbin.cupsd
-rw-r--r-- 1 root root   730 oct.  11 04:08 usr.sbin.mariadbd
-rw-r--r-- 1 root root  1728 mars  11  2025 usr.sbin.rsyslogd
-rw-r--r-- 1 root root  1668 août  12 05:24 usr.sbin.sssd
-rw-r--r-- 1 root root   351 juil. 18  2024 uwsgi-core
-rw-r--r-- 1 root root   336 juil. 18  2024 vdens
-rw-r--r-- 1 root root   352 juil. 18  2024 virtiofsd
-rw-r--r-- 1 root root   358 juil. 18  2024 vivaldi-bin
-rw-r--r-- 1 root root   336 juil. 18  2024 vpnns
-rw-r--r-- 1 root root   346 juil. 18  2024 wpcom

═╣ Hashes inside passwd file? ........... No
═╣ Writable passwd file? ................ No                                                                                                              
═╣ Credentials in fstab/mtab? ........... No                                                                                                              
═╣ Can I read shadow files? ............. No                                                                                                              
═╣ Can I read shadow plists? ............ No                                                                                                              
═╣ Can I write shadow plists? ........... No                                                                                                              
═╣ Can I read opasswd file? ............. No                                                                                                              
═╣ Can I write in network-scripts? ...... No                                                                                                              
═╣ Can I read root folder? .............. No                                                                                                              
                                                                                                                                                          
╔══════════╣ Searching root files in home dirs (limit 30)
/home/                                                                                                                                                    
/root/
/var/www
/var/www/html.test.php
/var/www/html/webmail/config/config.inc.php.bak
/var/www/html/glpi/test.php

╔══════════╣ Searching folders owned by me containing others files on it (limit 100)
                                                                                                                                                          
╔══════════╣ Readable files belonging to root and readable by me but not world readable
                                                                                                                                                          
╔══════════╣ Interesting writable files owned by me or writable by everyone (not in Home) (max 200)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#writable-files                                                          
/home/pierre                                                                                                                                              
/opt/splunk/etc/apps/splunk_rapid_diag/appserver
/opt/splunk/etc/apps/splunk_rapid_diag/appserver/templates
/opt/splunk/etc/apps/splunk_rapid_diag/appserver/templates/data_collection.html
/opt/splunk/etc/apps/splunk_rapid_diag/appserver/templates/reference_guide.html
/opt/splunk/etc/apps/splunk_rapid_diag/appserver/templates/task_manager.html
/opt/splunk/etc/apps/splunk_rapid_diag/appserver/templates/task_template_wizard.html
/opt/splunk/etc/apps/splunk_rapid_diag/bin
/opt/splunk/etc/apps/splunk_rapid_diag/bin/cli
/opt/splunk/etc/apps/splunk_rapid_diag/bin/cli/cli_error_code.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/cli/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/cli/__main__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/cli/rapid_diag_cli.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/filelock.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/json_validation_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/log_file_list_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/logger_manager.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/process_list_endpoint.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/collector.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/collector_result.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/diag.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/iops.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/trigger/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/trigger/log_monitor.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/trigger/monitored_file.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/trigger/periodic.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/trigger/resource_monitor.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/collector/worker.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/conf_util.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/debug_utils.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/detach_process.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag_handler_utils.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag_info_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/process_abstraction.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/process_match.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/serializable.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/rapid_diag/session_globals.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunkcom_list_customer_cases_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunkcom_upload_file_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunkcom_upload_progress_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/binding.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/client.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/data.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput/argument.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput/event.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput/event_writer.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/modularinput/input_definition.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/ordereddict.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/results.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands/decorators.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands/environment.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands/eventing_command.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands/external_search_command.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/searchcommands/generating_command.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/splunklib/six.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/static_task_information_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/task_abort_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/task_delete_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/task_export_endpoint.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/task_information_endpoint.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client/build.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client/CLSIDToClass.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client/dynamic.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client/gencache.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/client/__init__.py
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/__init__.py
/opt/splunk/etc/apps/splunk_rapid_diag/bin/win32com/License.txt
/opt/splunk/etc/apps/splunk_rapid_diag/bin/wmi.py
/opt/splunk/etc/apps/splunk_rapid_diag/default
/opt/splunk/etc/apps/splunk_rapid_diag/default/app.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/authorize.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/data
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/manager
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/manager/rapid_diag.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/nav
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/nav/default.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/views
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/views/data_collection.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/views/reference_guide.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/views/task_manager.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/data/ui/views/task_template_wizard.xml
/opt/splunk/etc/apps/splunk_rapid_diag/default/props.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/rapid_diag.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/restmap.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/savedsearches.conf
/opt/splunk/etc/apps/splunk_rapid_diag/default/web.conf
/opt/splunk/etc/apps/splunk_rapid_diag/metadata
/opt/splunk/etc/apps/splunk_rapid_diag/metadata/default.meta
/opt/splunk/etc/apps/splunk_rapid_diag/README
/opt/splunk/etc/apps/splunk_rapid_diag/README/rapid_diag.conf.spec
/opt/splunk/etc/apps/splunk_rapid_diag/README.txt
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks/data-issues.json
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks/data-transmit-issues.json
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks/diag-main.json
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks/indexer-issues.json
/opt/splunk/etc/apps/splunk_rapid_diag/SampleTasks/iops-main.json
#)You_can_write_even_more_files_inside_last_directory

/opt/splunk/etc/apps/splunk_rapid_diag/static
/run/lock
/run/user/1004
/run/user/1004/dbus-1
/run/user/1004/dbus-1/services
/run/user/1004/doc
/run/user/1004/doc/by-app
/run/user/1004/doc/by-app/snap.firmware-updater
/run/user/1004/doc/by-app/snap.snapd-desktop-integration
/run/user/1004/gcr
/run/user/1004/gnupg
/run/user/1004/keyring
/run/user/1004/pipewire-0.lock
/run/user/1004/pipewire-0-manager.lock
#)You_can_write_even_more_files_inside_last_directory

/run/user/1004/pulse/pid
/run/user/1004/snap.firmware-updater
/run/user/1004/snap.snapd-desktop-integration
/run/user/1004/speech-dispatcher
/run/user/1004/speech-dispatcher/log
/run/user/1004/speech-dispatcher/log/debug
/run/user/1004/speech-dispatcher/log/dummy.log
/run/user/1004/speech-dispatcher/log/espeak-ng.log
/run/user/1004/speech-dispatcher/log/espeak-ng-mbrola.log
/run/user/1004/speech-dispatcher/log/openjtalk.log
#)You_can_write_even_more_files_inside_last_directory

/run/user/1004/speech-dispatcher/pid
/run/user/1004/speech-dispatcher/pid/speech-dispatcher.pid
/run/user/1004/systemd
/run/user/1004/systemd/generator.late
/run/user/1004/systemd/generator.late/app-atx2dspix2ddbusx2dbus@autostart.service
/run/user/1004/systemd/generator.late/app-geocluex2ddemox2dagent@autostart.service
/run/user/1004/systemd/generator.late/app-gnomex2dinitialx2dsetupx2dfirstx2dlogin@autostart.service
/run/user/1004/systemd/generator.late/app-gnomex2dkeyringx2dpkcs11@autostart.service
/run/user/1004/systemd/generator.late/app-gnomex2dkeyringx2dsecrets@autostart.service
#)You_can_write_even_more_files_inside_last_directory

/run/user/1004/systemd/inaccessible
/run/user/1004/systemd/inaccessible/dir
/run/user/1004/systemd/inaccessible/reg
/run/user/1004/systemd/propagate
/run/user/1004/systemd/propagate/.os-release-stage
/run/user/1004/systemd/propagate/.os-release-stage/os-release
/run/user/1004/systemd/units
/tmp
/tmp/.font-unix
/tmp/.ICE-unix
/tmp/pentest_1770306337
/tmp/pentest_workspace_path.txt
/tmp/.X11-unix
#)You_can_write_even_more_files_inside_last_directory

/var/crash
/var/lib/BrlAPI
/var/lib/php/sessions
/var/mail/pierre
/var/metrics
/var/tmp
/var/www/html/uploads
/var/www/html/webmail
/var/www/html/webmail/bin
/var/www/html/webmail/bin/cleandb.sh
/var/www/html/webmail/bin/cssshrink.sh
/var/www/html/webmail/bin/decrypt.sh
/var/www/html/webmail/bin/deluser.sh
/var/www/html/webmail/bin/gc.sh
#)You_can_write_even_more_files_inside_last_directory

/var/www/html/webmail/CHANGELOG.md
/var/www/html/webmail/composer.json
/var/www/html/webmail/composer.json-dist
/var/www/html/webmail/composer.lock
/var/www/html/webmail/config

╔══════════╣ Interesting GROUP writable files (not in Home) (max 200)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#writable-files                                                          
  Group pierre:                                                                                                                                           
/run/user/1004/pipewire-0-manager.lock                                                                                                                    
/run/user/1004/pipewire-0.lock
/run/user/1004/speech-dispatcher/log/speech-dispatcher.log
/run/user/1004/speech-dispatcher/pid/speech-dispatcher.pid
/run/user/1004/pulse/pid
/tmp/pentest_1770306337
/tmp/pentest_workspace_path.txt


╔══════════╣ Writable root-owned executables I can modify (max 200)
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#writable-files                                                          
Writable root-owned executables Not Found                                                                                                                 
                                                                                                                                                          


                            ╔═════════════════════════╗
════════════════════════════╣ Other Interesting Files ╠════════════════════════════                                                                       
                            ╚═════════════════════════╝                                                                                                   
╔══════════╣ .sh files in path
╚ https://book.hacktricks.wiki/en/linux-hardening/privilege-escalation/index.html#scriptbinaries-in-path                                                  
/usr/local/bin/update-photo.sh                                                                                                                            
/usr/bin/gettext.sh
/usr/bin/socat-mux.sh
/usr/bin/socat-broker.sh
/usr/bin/socat-chain.sh

╔══════════╣ Executable files potentially added by user (limit 70)
2026-02-05+22:06:12.4129865040 /home/pierre/nmap                                                                                                          
2026-01-22+10:16:00.4514849310 /var/www/html/glpi/files/_sessions/sess_7oi6m6ol1p5in630oi9qginrji
2026-01-21+10:17:27.9259197630 /var/www/html/webmail/config/config.inc.php
2026-01-21+10:17:27.9169196370 /var/www/html/webmail/config/config.inc.php.bak
2026-01-15+10:27:05.8074454650 /var/www/html/linkedin/index.html
2026-01-15+10:08:50.9327889940 /var/www/html/linkedin/company.html
2026-01-15+10:04:45.7389659070 /usr/local/bin/update-photo.sh
2025-12-11+12:03:26.6723116680 /var/www/html/linkedin/assets/js/main.js
2025-12-11+12:03:26.6713116550 /var/www/html/linkedin/assets/css/style.css
2025-12-08+10:30:29.6215330550 /usr/local/bin/mail_web
2025-12-02+15:47:46.2375365900 /usr/local/bin/mail_parser
2025-12-02+15:31:39.4048753240 /usr/local/bin/mail_editor
2025-12-02+15:13:06.8656121460 /usr/local/bin/mail_backup
2025-12-02+15:08:36.1124810240 /usr/local/bin/mail_viewer
2025-06-03+17:47:10.7818935290 /etc/cloud/clean.d/99-installer
2025-06-03+17:43:13.8179816320 /etc/console-setup/cached_setup_terminal.sh
2025-06-03+17:43:13.8159815170 /etc/console-setup/cached_setup_font.sh
2025-06-03+17:43:13.8139814030 /etc/console-setup/cached_setup_keyboard.sh

╔══════════╣ Unexpected in /opt (usually empty)
total 20                                                                                                                                                  
drwxr-xr-x  5 root      root      4096 janv. 20 09:26 .
drwxr-xr-x 23 root      root      4096 févr.  5 14:29 ..
drwx--x--x  4 root      root      4096 janv. 20 09:26 containerd
drwxr-xr-x 11     10777     10777 4096 nov.  30 23:23 splunk
drwxr-xr-x 12 splunkfwd splunkfwd 4096 févr.  5 11:41 splunkforwarder

╔══════════╣ Unexpected in root
/bin.usr-is-merged                                                                                                                                        
/sbin.usr-is-merged
/lib.usr-is-merged
/backup.txt
/swap.img

╔══════════╣ Modified interesting files in the last 5mins (limit 100)
/var/log/auth.log                                                                                                                                         
/var/log/syslog
/var/log/sysstat/sa05
/var/log/journal/3bb34400cd0c46f6980e0e0b5d62a3ef/system.journal

╔══════════╣ Syslog configuration (limit 50)
                                                                                                                                                          


module(load="imuxsock") # provides support for local system logging



module(load="imklog" permitnonkernelfacility="on")


$RepeatedMsgReduction on

$FileOwner syslog
$FileGroup adm
$FileCreateMode 0640
$DirCreateMode 0755
$Umask 0022
$PrivDropToUser syslog
$PrivDropToGroup syslog

$WorkDirectory /var/spool/rsyslog

$IncludeConfig /etc/rsyslog.d/*.conf
╔══════════╣ Auditd configuration (limit 50)
auditd configuration Not Found                                                                                                                            
╔══════════╣ Log files with potentially weak perms (limit 50)                                                                                             
  2493806    376 -rw-r-----   1 syslog   adm        384711 janv. 25 00:00 /var/log/syslog.2.gz                                                            
  2492495    132 -rw-r-----   1 syslog   adm        134063 janv. 21 14:49 /var/log/mail.log.2.gz
  2490887     40 -rw-r-----   1 syslog   adm         33451 févr.  5 23:01 /var/log/mail.err
  2492157      8 -rw-r-----   1 root     adm          4252 juin  4  2025 /var/log/cloud-init-output.log
  2490851    372 -rw-r-----   1 syslog   adm        380816 janv. 10 23:59 /var/log/mail.log.4.gz
  2492778      8 -rw-r-----   1 syslog   adm          5284 janv. 18 00:00 /var/log/kern.log.3.gz
  2490742     24 -rw-r-----   1 root     adm         20676 nov. 26 16:46 /var/log/dmesg.3.gz
  2492475      8 -rw-r-----   1 syslog   adm          5348 janv. 11 00:00 /var/log/kern.log.4.gz
  2490897     88 -rw-r-----   1 root     adm         88653 févr.  5 11:41 /var/log/dmesg
  2493918   1636 -rw-r-----   1 syslog   adm       1673716 févr.  5 23:02 /var/log/kern.log
  2490862      4 -rw-r-----   1 root     adm           349 févr.  2 14:22 /var/log/apport.log.1
  2491409      4 -rw-r-----   1 root     adm           216 nov. 26 16:42 /var/log/apport.log.2.gz
  2493119    288 -rw-r-----   1 syslog   adm        288535 janv. 31 23:59 /var/log/auth.log.1
  2493913     16 -rw-r-----   1 syslog   adm         13035 févr.  5 23:02 /var/log/mail.log
  2493972    372 -rw-r-----   1 syslog   adm        374281 févr.  5 23:30 /var/log/auth.log
  2492859      4 -rw-r-----   1 syslog   adm           474 janv. 31 14:52 /var/log/mail.log.1
  2491661     20 -rw-r-----   1 root     adm         18909 nov. 28 06:51 /var/log/apt/term.log.3.gz
  2493401     16 -rw-r-----   1 root     adm         15526 janv. 30 06:31 /var/log/apt/term.log.1.gz
  2492721     12 -rw-r-----   1 root     adm         11308 févr.  5 06:50 /var/log/apt/term.log
  2493765      4 -rw-r-----   1 root     adm          3406 déc. 17 06:49 /var/log/apt/term.log.2.gz
  2492156     72 -rw-r-----   1 syslog   adm         73503 juin  4  2025 /var/log/cloud-init.log
  2492433     20 -rw-r-----   1 root     adm         20290 nov. 26 16:43 /var/log/dmesg.4.gz
  2492783   3584 -rw-r-----   1 syslog   adm       3664078 févr.  5 23:31 /var/log/syslog
  2492806   1332 -rw-r-----   1 syslog   adm       1358379 févr.  1 00:00 /var/log/syslog.1
  2493015    120 -rw-r-----   1 syslog   adm        120512 janv. 31 04:43 /var/log/kern.log.1
  2492480     36 -rw-r-----   1 syslog   adm         35649 janv. 10 23:59 /var/log/auth.log.4.gz
  2493156      4 -rw-r-----   1 root     adm           331 févr.  2 00:00 /var/log/cups/access_log.4.gz
  2491425      4 -rw-r-----   1 root     adm           613 nov. 28 06:51 /var/log/cups/error_log.2.gz
  2491916      4 -rw-r-----   1 root     adm           208 févr.  5 23:01 /var/log/cups/error_log
  2491426     16 -rw-r-----   1 root     adm         16196 déc.  6 06:05 /var/log/cups/error_log.1
  2490876      4 -rw-r-----   1 root     adm           614 nov. 26 17:10 /var/log/cups/error_log.3.gz
  2490940      4 -rw-r-----   1 root     adm           351 janv. 30 00:00 /var/log/cups/access_log.7.gz
  2492341      4 -rw-r-----   1 root     adm           348 févr.  4 00:00 /var/log/cups/access_log.2.gz
  2494034      4 -rw-r-----   1 root     adm           428 févr.  3 00:00 /var/log/cups/access_log.3.gz
  2491713      4 -rw-r-----   1 root     adm           352 janv. 31 00:00 /var/log/cups/access_log.6.gz
  2491539      4 -rw-r-----   1 root     adm           352 févr.  1 00:00 /var/log/cups/access_log.5.gz
  2490810      4 -rw-r-----   1 root     adm          3758 févr.  5 23:21 /var/log/cups/access_log
  2492087      4 -rw-r-----   1 root     adm          3318 févr.  5 00:00 /var/log/cups/access_log.1
  2490838    504 -rw-r-----   1 syslog   adm        515889 janv. 11 00:00 /var/log/syslog.4.gz
  2492632     12 -rw-r-----   1 syslog   adm         10027 janv. 24 21:00 /var/log/kern.log.2.gz
  2490883      4 -rw-r-----   1 root     adm           240 févr.  5 11:40 /var/log/apport.log
  2492801     48 -rw-r-----   1 syslog   adm         45569 janv. 17 23:59 /var/log/auth.log.3.gz
  2492766     40 -rw-r-----   1 syslog   adm         39736 janv. 24 23:59 /var/log/auth.log.2.gz
  2490479     24 -rw-r-----   1 root     adm         22455 nov. 26 17:07 /var/log/dmesg.2.gz
  2490451     24 -rw-r-----   1 root     adm         21257 janv. 28 13:30 /var/log/dmesg.1.gz
  2492309     88 -rw-r-----   1 root     adm         87844 févr.  2 14:22 /var/log/dmesg.0
  2492371    524 -rw-r-----   1 syslog   adm        533353 janv. 18 00:00 /var/log/syslog.3.gz
  2492756    376 -rw-r-----   1 syslog   adm               381128 janv. 17 23:59 /var/log/mail.log.3.gz

╔══════════╣ Files inside /home/pierre (limit 20)
total 6840                                                                                                                                                
drwxr-xr-x  7 pierre pierre    4096 févr.  5 23:01 .
drwxr-xr-x 35 root   root      4096 févr.  2 14:42 ..
drwx------  2 pierre pierre    4096 févr.  2 23:09 .cache
drwx------  3 pierre pierre    4096 févr.  5 23:01 .config
drwx------  5 pierre pierre    4096 févr.  5 23:19 .gnupg
-rw-rw-r--  1 pierre pierre    2209 févr.  5 15:10 index.html
-rwxrwxr-x  1 pierre pierre    8079 févr.  5 15:48 install.sh
-rwxrwxr-x  1 pierre pierre 1006228 févr.  1 06:19 linpeas.sh
drwx------  4 pierre pierre    4096 févr.  5 23:01 .local
-rwxrwxr-x  1 pierre pierre 5944464 févr.  5 22:06 nmap
drwx------  4 pierre pierre    4096 févr.  5 18:00 snap
-rw-rw-r--  1 pierre pierre     270 févr.  5 22:40 V
-rw-rw-r--  1 pierre pierre     215 févr.  5 22:06 .wget-hsts

╔══════════╣ Files inside others home (limit 20)
/var/www/html.test.php                                                                                                                                    
/var/www/html/webmail/README.md
/var/www/html/webmail/plugins/zipdownload/zipdownload.js
/var/www/html/webmail/plugins/zipdownload/zipdownload.min.js
/var/www/html/webmail/plugins/zipdownload/README
/var/www/html/webmail/plugins/zipdownload/zipdownload.php
/var/www/html/webmail/plugins/zipdownload/localization/lv_LV.inc
/var/www/html/webmail/plugins/zipdownload/localization/sl_SI.inc
/var/www/html/webmail/plugins/zipdownload/localization/de_CH.inc
/var/www/html/webmail/plugins/zipdownload/localization/lb_LU.inc
/var/www/html/webmail/plugins/zipdownload/localization/mn_MN.inc
/var/www/html/webmail/plugins/zipdownload/localization/fr_FR.inc
/var/www/html/webmail/plugins/zipdownload/localization/is_IS.inc
/var/www/html/webmail/plugins/zipdownload/localization/el_GR.inc
/var/www/html/webmail/plugins/zipdownload/localization/de_DE.inc
/var/www/html/webmail/plugins/zipdownload/localization/gl_ES.inc
/var/www/html/webmail/plugins/zipdownload/localization/ar_SA.inc
/var/www/html/webmail/plugins/zipdownload/localization/br.inc
/var/www/html/webmail/plugins/zipdownload/localization/en_CA.inc
/var/www/html/webmail/plugins/zipdownload/localization/en_GB.inc

╔══════════╣ Searching installed mail applications
dovecot                                                                                                                                                   
dovecot-sysreport
maildirmake.dovecot
postfix
postfix-add-filter
postfix-add-policy
postfix-collate
sendmail

╔══════════╣ Mails (limit 50)
  2492917      4 -rw-rw----   1 emoreau  mail          885 févr.  5 11:48 /var/mail/emoreau                                                               
  2493121      0 -rw-rw----   1 croche   mail            0 déc. 10 10:23 /var/mail/croche
  2493258      0 -rw-rw----   1 vrenard  mail            0 déc. 10 10:23 /var/mail/vrenard
  2493179      0 -rw-rw----   1 jcaron   mail            0 déc. 10 10:23 /var/mail/jcaron
  2493211      0 -rw-rw----   1 ncharlier mail            0 déc. 10 10:23 /var/mail/ncharlier
  2493194      0 -rw-rw----   1 aduval    mail            0 déc. 10 10:23 /var/mail/aduval
  2493091      0 -rw-rw----   1 nlefevre  mail            0 déc. 10 10:23 /var/mail/nlefevre
  2491543      4 -rw-rw----   1 guillaume mail         2494 déc.  3 17:43 /var/mail/guillaume
  2492331      4 -rw-------   1 root      mail         2790 févr.  5 23:02 /var/mail/root
  2490953      0 -rw-rw----   1 sophie    mail            0 déc.  9 10:54 /var/mail/sophie
  2490963      4 -rw-rw----   1 service   mail         2240 déc.  3 17:43 /var/mail/service
  2493010      0 -rw-rw----   1 troussel  mail            0 déc. 10 10:23 /var/mail/troussel
  2492621     12 -rw-rw----   1 pierre    mail         8291 déc.  9 23:10 /var/mail/pierre
  2493206      0 -rw-rw----   1 plejuste  mail            0 déc. 10 10:23 /var/mail/plejuste
  2493018      0 -rw-rw----   1 sberanger mail            0 déc. 10 10:23 /var/mail/sberanger
  2493310      0 -rw-rw----   1 alemoine  mail            0 déc. 10 10:23 /var/mail/alemoine
  2493202      0 -rw-rw----   1 lbenelli  mail            0 déc. 10 10:23 /var/mail/lbenelli
  2493237      0 -rw-rw----   1 igauthier mail            0 déc. 10 10:23 /var/mail/igauthier
  2493204      0 -rw-rw----   1 bhernandez mail            0 déc. 10 10:23 /var/mail/bhernandez
  2493154      0 -rw-rw----   1 svilledieu mail            0 déc. 10 10:23 /var/mail/svilledieu
  2493088      0 -rw-rw----   1 bcolin     mail            0 déc. 10 10:23 /var/mail/bcolin
  2493177      0 -rw-rw----   1 lbernard   mail            0 déc. 10 10:23 /var/mail/lbernard
  2493123      0 -rw-rw----   1 ylanglois  mail            0 déc. 10 10:23 /var/mail/ylanglois
  2493016      0 -rw-rw----   1 mchevreau  mail            0 déc. 10 10:23 /var/mail/mchevreau
  2493380      0 -rw-rw----   1 mbourdon   mail            0 déc. 10 10:23 /var/mail/mbourdon
  2491708      8 -rw-rw----   1 www-data   mail         5307 déc.  2 13:32 /var/mail/www-data
  2493120      0 -rw-rw----   1 jmorel     mail            0 déc. 10 10:23 /var/mail/jmorel
  2493178      0 -rw-rw----   1 kdelaunay  mail            0 déc. 10 10:23 /var/mail/kdelaunay
  2493376      0 -rw-rw----   1 ebaron     mail            0 déc. 10 10:23 /var/mail/ebaron
  2493329      0 -rw-rw----   1 rlefort    mail            0 déc. 10 10:23 /var/mail/rlefort
  2493187    620 -rw-rw----   1 gporte     mail       634114 févr.  5 11:48 /var/mail/gporte
  2492917      4 -rw-rw----   1 emoreau    mail          885 févr.  5 11:48 /var/spool/mail/emoreau
  2493121      0 -rw-rw----   1 croche     mail            0 déc. 10 10:23 /var/spool/mail/croche
  2493258      0 -rw-rw----   1 vrenard    mail            0 déc. 10 10:23 /var/spool/mail/vrenard
  2493179      0 -rw-rw----   1 jcaron     mail            0 déc. 10 10:23 /var/spool/mail/jcaron
  2493211      0 -rw-rw----   1 ncharlier  mail            0 déc. 10 10:23 /var/spool/mail/ncharlier
  2493194      0 -rw-rw----   1 aduval     mail            0 déc. 10 10:23 /var/spool/mail/aduval
  2493091      0 -rw-rw----   1 nlefevre   mail            0 déc. 10 10:23 /var/spool/mail/nlefevre
  2491543      4 -rw-rw----   1 guillaume  mail         2494 déc.  3 17:43 /var/spool/mail/guillaume
  2492331      4 -rw-------   1 root       mail         2790 févr.  5 23:02 /var/spool/mail/root
  2490953      0 -rw-rw----   1 sophie     mail            0 déc.  9 10:54 /var/spool/mail/sophie
  2490963      4 -rw-rw----   1 service    mail         2240 déc.  3 17:43 /var/spool/mail/service
  2493010      0 -rw-rw----   1 troussel   mail            0 déc. 10 10:23 /var/spool/mail/troussel
  2492621     12 -rw-rw----   1 pierre     mail         8291 déc.  9 23:10 /var/spool/mail/pierre
  2493206      0 -rw-rw----   1 plejuste   mail            0 déc. 10 10:23 /var/spool/mail/plejuste
  2493018      0 -rw-rw----   1 sberanger  mail            0 déc. 10 10:23 /var/spool/mail/sberanger
  2493310      0 -rw-rw----   1 alemoine   mail            0 déc. 10 10:23 /var/spool/mail/alemoine
  2493202      0 -rw-rw----   1 lbenelli   mail            0 déc. 10 10:23 /var/spool/mail/lbenelli
  2493237      0 -rw-rw----   1 igauthier  mail            0 déc. 10 10:23 /var/spool/mail/igauthier
  2493204      0 -rw-rw----   1 bhernandez mail            0 déc. 10 10:23 /var/spool/mail/bhernandez

╔══════════╣ Backup folders
drwxr-xr-x 3 10777 10777 4096 juil. 28  2022 /opt/splunk/lib/python3.7/site-packages/botocore/data/backup                                                 
total 4
drwxr-xr-x 2 10777 10777 4096 juil. 28  2022 2018-11-15

drwxr-xr-x 2 root root 3 avril 18  2022 /snap/core22/2216/var/backups
total 0

drwxr-xr-x 2 root root 3 avril 18  2022 /snap/core22/2292/var/backups
total 0

drwxr-xr-x 2 root root 4096 févr.  5 00:00 /var/backups
total 4492
-rw-r--r-- 1 root root   61440 févr.  5 00:00 alternatives.tar.0
-rw-r--r-- 1 root root    3442 févr.  3 00:00 alternatives.tar.1.gz
-rw-r--r-- 1 root root    3442 janv. 29 00:00 alternatives.tar.2.gz
-rw-r--r-- 1 root root    3441 janv. 23 00:00 alternatives.tar.3.gz
-rw-r--r-- 1 root root    3372 janv. 22 00:00 alternatives.tar.4.gz
-rw-r--r-- 1 root root    3091 janv. 14 00:00 alternatives.tar.5.gz
-rw-r--r-- 1 root root    3081 déc.   3 00:00 alternatives.tar.6.gz
-rw-r--r-- 1 root root   98740 janv. 22 16:58 apt.extended_states.0
-rw-r--r-- 1 root root   10878 janv. 21 22:23 apt.extended_states.1.gz
-rw-r--r-- 1 root root   10902 janv. 21 09:32 apt.extended_states.2.gz
-rw-r--r-- 1 root root   10961 janv. 20 09:26 apt.extended_states.3.gz
-rw-r--r-- 1 root root   10881 janv. 20 00:32 apt.extended_states.4.gz
-rw-r--r-- 1 root root   10663 déc.  11 06:25 apt.extended_states.5.gz
-rw-r--r-- 1 root root   10657 déc.  10 13:36 apt.extended_states.6.gz
-rw-r--r-- 1 root root       0 févr.  5 00:00 dpkg.arch.0
-rw-r--r-- 1 root root      32 févr.  3 00:00 dpkg.arch.1.gz
-rw-r--r-- 1 root root      32 janv. 31 00:00 dpkg.arch.2.gz
-rw-r--r-- 1 root root      32 janv. 30 00:00 dpkg.arch.3.gz
-rw-r--r-- 1 root root      32 janv. 24 00:00 dpkg.arch.4.gz
-rw-r--r-- 1 root root      32 janv. 23 00:00 dpkg.arch.5.gz
-rw-r--r-- 1 root root      32 janv. 22 00:00 dpkg.arch.6.gz
-rw-r--r-- 1 root root    1606 déc.   2 15:29 dpkg.diversions.0
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.1.gz
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.2.gz
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.3.gz
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.4.gz
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.5.gz
-rw-r--r-- 1 root root     340 déc.   2 15:29 dpkg.diversions.6.gz
-rw-r--r-- 1 root root     397 nov.  27 13:06 dpkg.statoverride.0
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.1.gz
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.2.gz
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.3.gz
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.4.gz
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.5.gz
-rw-r--r-- 1 root root     242 nov.  27 13:06 dpkg.statoverride.6.gz
-rw-r--r-- 1 root root 1775633 févr.  4 06:11 dpkg.status.0
-rw-r--r-- 1 root root  410188 févr.  2 22:51 dpkg.status.1.gz
-rw-r--r-- 1 root root  409737 janv. 30 06:31 dpkg.status.2.gz
-rw-r--r-- 1 root root  409736 janv. 29 06:50 dpkg.status.3.gz
-rw-r--r-- 1 root root  409732 janv. 23 06:31 dpkg.status.4.gz
-rw-r--r-- 1 root root  409742 janv. 22 16:59 dpkg.status.5.gz
-rw-r--r-- 1 root root  407680 janv. 21 22:23 dpkg.status.6.gz


╔══════════╣ Backup files (limited 100)
-rwxr-xr-x 1 root root 4125 janv. 21 10:17 /var/www/html/webmail/config/config.inc.php.bak                                                                
-rw-r--r-- 1 www-data www-data 1588 janv. 20 08:53 /var/www/html/backup.php
-rwxr-xr-x 1 www-data www-data 21475 déc.  18  2019 /var/www/html/glpi/front/backup.php
-rwxr-xr-x 1 www-data www-data 2735 déc.  18  2019 /var/www/html/glpi/front/rule.backup.php
-rwxr-xr-x 1 www-data www-data 2021 déc.  18  2019 /var/www/html/glpi/inc/backup.class.php
-rw-r--r-- 1 root root 0 févr. 15  2025 /var/lib/systemd/deb-systemd-helper-enabled/timers.target.wants/dpkg-db-backup.timer
-rw-r--r-- 1 root root 61 nov.  26 17:03 /var/lib/systemd/deb-systemd-helper-enabled/dpkg-db-backup.timer.dsh-also
-rw-r--r-- 1 root root 0 févr.  5 00:00 /var/lib/systemd/timers/stamp-dpkg-db-backup.timer
-rw-r--r-- 1 root root 191 févr. 15  2025 /var/lib/sgml-base/supercatalog.old
-rw-r--r-- 1 root root 3493 févr. 15  2025 /etc/xml/catalog.old
-rw-r--r-- 1 root root 1219 févr. 15  2025 /etc/xml/sgml-data.xml.old
-rw-r--r-- 1 root root 10151 févr. 15  2025 /etc/xml/docbook-xml.xml.old
-rw-r--r-- 1 root root 673 févr. 15  2025 /etc/xml/xml-core.xml.old
-rw-r--r-- 1 root root 365 févr. 15  2025 /etc/xml/polkitd.xml.old
-rw-r--r-- 1 root root 1301 févr.  2 22:39 /etc/pam.d/common-auth.backup.1770068386
-rw-r--r-- 1 root root 1301 févr.  2 22:07 /etc/pam.d/common-auth.backup.1770066425
-rw-r--r-- 1 root root 1301 févr.  2 22:38 /etc/pam.d/common-auth.backup.1770068294
-rw-r--r-- 1 root root 865 févr.  2 23:01 /etc/ssh/sshd_config.backup.pwd.1770069717
-rw-r--r-- 1 root root 763 févr.  2 22:39 /etc/ssh/sshd_config.backup.1770068386
-rw-r--r-- 1 root root 763 févr.  2 22:07 /etc/ssh/sshd_config.backup.1770066425
-rw-r--r-- 1 root root 763 févr.  2 22:38 /etc/ssh/sshd_config.backup.1770068294
-rw-r--r-- 1 root root 601 févr.  2 14:42 /etc/ssh/sshd_config.backup.1770039724
-rw-r--r-- 1 root root 3532 févr.  2 14:27 /etc/ssh/sshd_config.backup
-rw-r--r-- 1 root root 763 févr.  2 22:57 /etc/ssh/sshd_config.backup.force.1770069429
-rw-r--r-- 1 root root 763 févr.  2 22:51 /etc/ssh/sshd_config.backup.pwd.1770069061
-rw-r--r-- 1 root root 1286 déc.  10 10:23 /etc/postfix/virtual.backup.20251210_102341
-rw-r--r-- 1 root root 862 févr. 15  2025 /etc/.resolv.conf.systemd-resolved.bak
-rw-r--r-- 1 root root 4096 févr.  5 23:20 /sys/devices/virtual/net/vethacc100f/brport/backup_port

╔══════════╣ Searching tables inside readable .db/.sql/.sqlite files (limit 100)
Found /etc/aliases.db: Berkeley DB (Hash, version 9, native byte-order)                                                                                   
Found /etc/apparmor/severity.db: magic text fragment for file(1) cmd, 1st line "# ------------------------------------------------------------------", 2nd line "#"
Found /etc/postfix/virtual.db: Berkeley DB (Hash, version 9, native byte-order)
Found /var/lib/colord/mapping.db: SQLite 3.x database, last written using SQLite version 3045001, file counter 3, database pages 4, cookie 0x2, schema 4, UTF-8, version-valid-for 3
Found /var/lib/colord/storage.db: SQLite 3.x database, last written using SQLite version 3045001, file counter 3, database pages 7, cookie 0x3, schema 4, UTF-8, version-valid-for 3
Found /var/lib/command-not-found/commands.db: SQLite 3.x database, last written using SQLite version 3045001, file counter 5, database pages 980, cookie 0x4, schema 4, UTF-8, version-valid-for 5
Found /var/lib/fwupd/pending.db: SQLite 3.x database, last written using SQLite version 3045001, file counter 3, database pages 8, cookie 0x5, schema 4, UTF-8, version-valid-for 3
Found /var/lib/PackageKit/transactions.db: SQLite 3.x database, last written using SQLite version 3045001, file counter 7, database pages 8, cookie 0x4, schema 4, UTF-8, version-valid-for 7
Found /var/lib/postfix/smtp_scache.db: regular file, no read permission

 -> Extracting tables from /var/lib/colord/mapping.db (limit 20)
 -> Extracting tables from /var/lib/colord/storage.db (limit 20)                                                                                          
 -> Extracting tables from /var/lib/command-not-found/commands.db (limit 20)                                                                              
 -> Extracting tables from /var/lib/fwupd/pending.db (limit 20)                                                                                           
 -> Extracting tables from /var/lib/PackageKit/transactions.db (limit 20)                                                                                 
                                                                                                                                                          
╔══════════╣ Web files?(output limit)
/var/www/:                                                                                                                                                
total 16K
drwxr-xr-x  3 root     root     4,0K nov.  27 12:20 .
drwxr-xr-x 15 root     root     4,0K nov.  26 18:04 ..
drwxr-xr-x  6 www-data www-data 4,0K janv. 22 09:17 html
-rw-r--r--  1 root     root       20 nov.  27 12:20 html.test.php

/var/www/html:
total 52K
drwxr-xr-x  6 www-data www-data 4,0K janv. 22 09:17 .

╔══════════╣ All relevant hidden files (not in /sys/ or the ones listed in the previous check) (limit 70)
-rw------- 1 root root 0 févr.  5 11:41 /run/snapd/lock/.lock                                                                                             
-rw-r--r-- 1 root root 2 févr.  5 11:41 /run/cloud-init/.ds-identify.result
-r--r--r-- 1 user user 11 févr.  5 11:41 /tmp/.X1-lock
-r--r--r-- 1 gdm gdm 11 févr.  5 11:41 /tmp/.X1025-lock
-r--r--r-- 1 user user 11 févr.  5 11:41 /tmp/.X0-lock
-r--r--r-- 1 gdm gdm 11 févr.  5 11:41 /tmp/.X1024-lock
-r--r--r-- 1 10777 10777 29 juil. 28  2022 /opt/splunk/lib/python3.7/site-packages/slim/.pep8
-r--r--r-- 1 10777 10777 2000 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.eslintrc.js
-r--r--r-- 1 10777 10777 57 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.npmrc
-r--r--r-- 1 10777 10777 2349 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.jshintrc
-r--r--r-- 1 10777 10777 65 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.prettierrc
-r--r--r-- 1 10777 10777 42 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.eslintignore
-r--r--r-- 1 10777 10777 121 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/default/.jshintignore
-r--r--r-- 1 10777 10777 54 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/src/.eslintrc.js
-r--r--r-- 1 10777 10777 17 juil. 28  2022 /opt/splunk/etc/apps/splunk_monitoring_console/src/visualizations/heatmap/node_modules/d3/.spmignore
-r--r--r-- 1 10777 10777 57 juil. 28  2022 /opt/splunk/share/splunk/pdf/.npmrc
-rwxrwxrwx 1 www-data www-data 164 sept.  1  2024 /var/www/html/webmail/temp/.htaccess
-rwxrwxrwx 1 www-data www-data 164 sept.  1  2024 /var/www/html/webmail/config/.htaccess
-rwxrwxrwx 1 www-data www-data 164 sept.  1  2024 /var/www/html/webmail/logs/.htaccess
-rwxrwxrwx 1 www-data www-data 2553 sept.  1  2024 /var/www/html/webmail/.htaccess
-rwxrwxrwx 1 www-data www-data 2085 août  21  2024 /var/www/html/webmail/vendor/roundcube/plugin-installer/.php-cs-fixer.dist.php
-rwxrwxrwx 1 www-data www-data 51 sept.  1  2024 /var/www/html/webmail/vendor/kolab/net_ldap3/.arcconfig
-rwxr-xr-x 1 www-data www-data 114 déc.  18  2019 /var/www/html/glpi/scripts/.htaccess
-rwxrwxr-x 1 www-data www-data 115 déc.  18  2019 /var/www/html/glpi/config/.htaccess
-rwxr-xr-x 1 www-data www-data 114 déc.  18  2019 /var/www/html/glpi/locales/.htaccess
-rwxrwxr-x 1 www-data www-data 114 déc.  18  2019 /var/www/html/glpi/files/.htaccess
-rwxr-xr-x 1 www-data www-data 982 déc.  18  2019 /var/www/html/glpi/.htaccess
-rwxr-xr-x 1 www-data www-data 2974 mai   22  2017 /var/www/html/glpi/vendor/sebastian/diff/.php_cs
-rwxr-xr-x 1 www-data www-data 14 oct.  16  2018 /var/www/html/glpi/vendor/tecnickcom/tcpdf/tools/.htaccess
-rwxr-xr-x 1 www-data www-data 0 janv.  9  2019 /var/www/html/glpi/vendor/sabre/xml/bin/.empty
-rwxr-xr-x 1 www-data www-data 193 févr. 19  2019 /var/www/html/glpi/vendor/sabre/vobject/.php_cs.dist
-rwxr-xr-x 1 www-data www-data 1868 nov.   5  2018 /var/www/html/glpi/vendor/monolog/monolog/.php_cs
-rwxr-xr-x 1 www-data www-data 271 oct.  23  2017 /var/www/html/glpi/vendor/psr/simple-cache/.editorconfig
-rwxr-xr-x 1 www-data www-data 114 déc.  18  2019 /var/www/html/glpi/install/mysql/.htaccess
-rw-r--r-- 1 root root 208 févr. 15  2025 /var/.updated
-rw-r--r-- 1 root root 220 mars  31  2024 /etc/skel/.bash_logout
-rw-r--r-- 1 root root 862 févr. 15  2025 /etc/.resolv.conf.systemd-resolved.bak
-rw------- 1 root root 0 févr. 15  2025 /etc/.pwd.lock
-rw-r--r-- 1 root root 208 févr. 15  2025 /etc/.updated
-rw-rw-r-- 1 pierre pierre 215 févr.  5 22:06 /home/pierre/.wget-hsts
-rw-rw-r-- 1 pierre pierre 31 févr.  2 23:09 /home/pierre/snap/snapd-desktop-integration/343/.last_revision
-rw-rw-r-- 1 pierre pierre 31 févr.  5 18:00 /home/pierre/snap/firmware-updater/210/.last_revision
-rw------- 1 root root 0 déc.   2 05:54 /snap/core22/2216/etc/.pwd.lock
-rw-r--r-- 1 root root 220 janv.  6  2022 /snap/core22/2216/etc/skel/.bash_logout
-rw------- 1 root root 0 janv. 12 05:54 /snap/core22/2292/etc/.pwd.lock
-rw-r--r-- 1 root root 220 janv.  6  2022 /snap/core22/2292/etc/skel/.bash_logout
-rw-r--r-- 1 root root 0 déc.   2  2021 /snap/gnome-42-2204/226/usr/share/dictionaries-common/site-elisp/.nosearch
-rw-r--r-- 1 root root 0 déc.   2  2021 /snap/gnome-42-2204/247/usr/share/dictionaries-common/site-elisp/.nosearch
-rw-r--r-- 1 root root 414 sept.  5 21:44 /usr/share/vim/vim91/pack/dist/opt/editorconfig/.editorconfig
-rw-r--r-- 1 root root 11 août  27  2022 /usr/share/ieee-data/.lastupdate
-rw-r--r-- 1 root root 0 sept.  7  2023 /usr/share/dictionaries-common/site-elisp/.nosearch

╔══════════╣ Readable files inside /tmp, /var/tmp, /private/tmp, /private/var/at/tmp, /private/var/tmp, and backup folders (limit 70)
-rw-rw-r-- 1 pierre pierre 24 févr.  5 16:45 /tmp/pentest_workspace_path.txt                                                                              
-r--r--r-- 1 user user 11 févr.  5 11:41 /tmp/.X1-lock
-r--r--r-- 1 gdm gdm 11 févr.  5 11:41 /tmp/.X1025-lock
-r--r--r-- 1 user user 11 févr.  5 11:41 /tmp/.X0-lock
-r--r--r-- 1 gdm gdm 11 févr.  5 11:41 /tmp/.X1024-lock
-r--r--r-- 1 10777 10777 23 juil. 27  2022 /opt/splunk/lib/python3.7/site-packages/botocore/data/backup/2018-11-15/paginators-1.json
-r--r--r-- 1 10777 10777 182744 juil. 27  2022 /opt/splunk/lib/python3.7/site-packages/botocore/data/backup/2018-11-15/service-2.json
-rw-r--r-- 1 root root 32 janv. 23 00:00 /var/backups/dpkg.arch.5.gz
-rw-r--r-- 1 root root 32 févr.  3 00:00 /var/backups/dpkg.arch.1.gz
-rw-r--r-- 1 root root 32 janv. 24 00:00 /var/backups/dpkg.arch.4.gz
-rw-r--r-- 1 root root 61440 févr.  5 00:00 /var/backups/alternatives.tar.0
-rw-r--r-- 1 root root 32 janv. 22 00:00 /var/backups/dpkg.arch.6.gz
-rw-r--r-- 1 root root 3441 janv. 23 00:00 /var/backups/alternatives.tar.3.gz
-rw-r--r-- 1 root root 0 févr.  5 00:00 /var/backups/dpkg.arch.0
-rw-r--r-- 1 root root 3372 janv. 22 00:00 /var/backups/alternatives.tar.4.gz
-rw-r--r-- 1 root root 32 janv. 31 00:00 /var/backups/dpkg.arch.2.gz
-rw-r--r-- 1 root root 3442 janv. 29 00:00 /var/backups/alternatives.tar.2.gz
-rw-r--r-- 1 root root 3081 déc.   3 00:00 /var/backups/alternatives.tar.6.gz
-rw-r--r-- 1 root root 32 janv. 30 00:00 /var/backups/dpkg.arch.3.gz
-rw-r--r-- 1 root root 3442 févr.  3 00:00 /var/backups/alternatives.tar.1.gz
-rw-r--r-- 1 root root 3091 janv. 14 00:00 /var/backups/alternatives.tar.5.gz

╔══════════╣ Searching passwords in config PHP files
/var/www/html/glpi/config/config_db.php:   public $dbpassword = 'GlpiPass2024%21';                                                                        
/var/www/html/glpi/config/config_db.php:   public $dbuser     = 'glpi_user';
/var/www/html/glpi/inc/config.class.php:         $input['proxy_passwd'] = '';
/var/www/html/glpi/inc/config.class.php:            $input["proxy_passwd"] = Toolbox::encrypt(stripslashes($input["proxy_passwd"]),
/var/www/html/glpi/inc/config.class.php:         $input['smtp_passwd'] = '';
/var/www/html/glpi/inc/config.class.php:            $input["smtp_passwd"] = Toolbox::encrypt(stripslashes($input["smtp_passwd"]), GLPIKEY);
/var/www/html/glpi/inc/config.class.php:            $needs[] = "<span id='password_need_caps' class='red'>".__('Uppercase')."</span>";
/var/www/html/glpi/inc/config.class.php:            $needs[] = "<span id='password_need_letter' class='red'>".__('Lowercase')."</span>";
/var/www/html/glpi/inc/config.class.php:            $needs[] = "<span id='password_need_number' class='red'>".__('Digit')."</span>";
/var/www/html/glpi/inc/config.class.php:            $needs[] = "<span id='password_need_symbol' class='red'>".__('Symbol')."</span>";
/var/www/html/glpi/inc/config.class.php:      Dropdown::showNumber('password_min_length', ['value' => $CFG_GLPI["password_min_length"],
/var/www/html/glpi/inc/config.class.php:      Dropdown::showYesNo("password_need_caps", $CFG_GLPI["password_need_caps"], -1, ['rand' => $rand]);
/var/www/html/glpi/inc/config.class.php:      Dropdown::showYesNo("password_need_letter", $CFG_GLPI["password_need_letter"], -1, ['rand' => $rand]);
/var/www/html/glpi/inc/config.class.php:      Dropdown::showYesNo("password_need_number", $CFG_GLPI["password_need_number"], -1, ['rand' => $rand]);
/var/www/html/glpi/inc/config.class.php:      Dropdown::showYesNo("password_need_symbol", $CFG_GLPI["password_need_symbol"], -1, ['rand' => $rand]);
/var/www/html/glpi/inc/config.class.php:      Dropdown::showYesNo("use_password_security", $CFG_GLPI["use_password_security"], -1, ['rand' => $rand]);
/var/www/html/glpi/inc/config.class.php:      echo "<td><input type='password' name='_dbreplicate_dbpassword' value='".
/var/www/html/glpi/inc/config.class.php:      echo "<td><input type='text' name='_dbreplicate_dbuser' value='".$DBslave->dbuser."'></td>";
/var/www/html/glpi/inc/config.class.php:         echo "var pwd = ".Html::jsGetElementbyID($field).";";
/var/www/html/glpi/inc/config.class.php:                   "<span id='password_min_length' class='red'>".$CFG_GLPI['password_min_length'].

╔══════════╣ Searching *password* or *credential* files in home (limit 70)
/etc/apparmor.d/1password                                                                                                                                 
/etc/brlapi.key
/etc/credstore
/etc/credstore.encrypted
/etc/dovecot/conf.d/auth-checkpassword.conf.ext
/etc/pam.d/common-password
/etc/pam.d/gdm-password
/etc/pam.d/gdm-smartcard-sssd-or-password
/opt/splunk/etc/apps/search/default/data/ui/manager/authentication_change_user_password.prod_lite.xml
/opt/splunk/etc/apps/search/default/data/ui/manager/authentication_change_user_password.xml
/opt/splunk/etc/apps/search/default/data/ui/manager/password_management.xml
/opt/splunk/etc/apps/splunk_secure_gateway/bin/spacebridgeapp/rest/sign_credentials_endpoint.py
/opt/splunk/etc/apps/splunk_secure_gateway/lib/solnlib/credentials.py
/opt/splunk/etc/system/README/passwords.conf.example
/opt/splunk/etc/system/README/passwords.conf.spec
/opt/splunkforwarder/etc/system/README/passwords.conf.example
/opt/splunkforwarder/etc/system/README/passwords.conf.spec
/opt/splunk/lib/python3.7/site-packages/botocore/credentials.py
/opt/splunk/lib/python3.7/site-packages/slim/config/conf-specs/passwords.conf.spec
/opt/splunk/share/splunk/search_mrsparkle/exposed/build/pages/enterprise/authentication_changepassword.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/build/pages/enterprise/password_management.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/build/pages/lite/authentication_changepassword.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/build/pages/lite/password_management.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/js/pages/authentication_changepassword.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/js/pages/password_management.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/js/routers/Changepassword.js
/opt/splunk/share/splunk/search_mrsparkle/exposed/js/views/account/passwordchange
/opt/splunk/share/splunk/search_mrsparkle/exposed/js/views/changepassword
/opt/splunk/share/splunk/search_mrsparkle/templates/admin/widgets/password.html
/opt/splunk/share/splunk/search_mrsparkle/templates/admin/widgets/simplepassword.html

╔══════════╣ Checking for TTY (sudo/su) passwords in audit logs
                                                                                                                                                          
╔══════════╣ Checking for TTY (sudo/su) passwords in audit logs
                                                                                                                                                          
╔══════════╣ Searching emails inside logs (limit 70)
      2 ftpmaster@ubuntu.com                                                                                                                              

╔══════════╣ Searching passwords inside logs (limit 70)
/var/log/bootstrap.log: base-passwd depends on libc6 (>= 2.34); however:                                                                                  
/var/log/bootstrap.log: base-passwd depends on libdebconfclient0 (>= 0.145); however:
/var/log/bootstrap.log: base-passwd depends on libselinux1 (>= 3.1~); however:
/var/log/bootstrap.log:dpkg: base-passwd: dependency problems, but configuring anyway as you requested:
/var/log/bootstrap.log:Preparing to unpack .../base-passwd_3.6.3build1_amd64.deb ...
/var/log/bootstrap.log:Preparing to unpack .../passwd_1%3a4.13+dfsg1-4ubuntu3_amd64.deb ...
/var/log/bootstrap.log:Selecting previously unselected package base-passwd.
/var/log/bootstrap.log:Selecting previously unselected package passwd.
/var/log/bootstrap.log:Setting up base-passwd (3.6.3build1) ...
/var/log/bootstrap.log:Setting up passwd (1:4.13+dfsg1-4ubuntu3) ...
/var/log/bootstrap.log:Shadow passwords are now on.
/var/log/bootstrap.log:Unpacking base-passwd (3.6.3build1) ...
/var/log/bootstrap.log:Unpacking base-passwd (3.6.3build1) over (3.6.3build1) ...
/var/log/bootstrap.log:Unpacking passwd (1:4.13+dfsg1-4ubuntu3) ...

╔══════════╣ Searching possible password variables inside key folders (limit 140)
/var/www/html/glpi/inc/api.class.php:153:      $app_tokens = array_column($found_clients, 'app_token');                                                   
/var/www/html/glpi/inc/api.class.php:155:      $this->app_tokens = array_combine($apiclients_id, $app_tokens);
/var/www/html/glpi/inc/api.class.php:2115:         $this->parameters['app_token'] = "";
/var/www/html/glpi/inc/api.class.php:2118:         if ($this->parameters['app_token'] != "") {
/var/www/html/glpi/inc/api.class.php:50:   protected $app_tokens    = [];
/var/www/html/glpi/inc/apiclient.class.php:243:      echo "<br><input type='checkbox' name='_reset_app_token' id='app_token'>&nbsp;";
/var/www/html/glpi/inc/apiclient.class.php:286:         $input['app_token']      = self::getUniqueAppToken();
/var/www/html/glpi/inc/apiclient.class.php:287:         $input['app_token_date'] = $_SESSION['glpi_currenttime'];
/var/www/html/glpi/inc/apiclient.class.php:316:         if (countElementsInTable(self::getTable(), ['app_token' => $key]) == 0) {
/var/www/html/glpi/inc/apirest.class.php:505:         $parameters['app_token'] = $headers['App-Token'];
/var/www/html/glpi/inc/console/database/installcommand.class.php:180:      $db_host     = $input->getOption('db-host');
/var/www/html/glpi/inc/console/database/installcommand.class.php:182:      $db_port     = $input->getOption('db-port');
/var/www/html/glpi/inc/console/database/installcommand.class.php:183:      $db_user     = $input->getOption('db-user');
/var/www/html/glpi/inc/console/database/installcommand.class.php:184:      $db_hostport = $db_host . (!empty($db_port) ? ':' . $db_port : '');
/var/www/html/glpi/inc/console/database/installcommand.class.php:61:   const ERROR_DB_CONNECTION_FAILED = 1;
/var/www/html/glpi/inc/html.class.php:1572:                      ['accesskey' => '1',
/var/www/html/glpi/inc/html.class.php:1729:      echo "<a href='".$CFG_GLPI["root_doc"]."/' accesskey='1' title=\"".__s('Home')."\">".
/var/www/html/glpi/inc/html.class.php:1802:      echo "<a href='".$CFG_GLPI["root_doc"]."/front/helpdesk.public.php' accesskey='1' title=\"".
/var/www/html/glpi/inc/html.class.php:1999:                     echo " accesskey='".$val['shortcut']."'";
/var/www/html/glpi/inc/html.class.php:6427:                           echo " accesskey='".$val['shortcut']."'";
/var/www/html/glpi/install/install.php:358:      echo "<input type='hidden' name='db_host' value='". $host ."'>";
/var/www/html/glpi/install/install.php:359:      echo "<input type='hidden' name='db_user' value='". $user ."'>";
/var/www/html/glpi/install/update_0905_91.php:444:            'app_token'          => "",
/var/www/html/glpi/install/update_0905_91.php:445:            'app_token_date'     => null,
/var/www/html/glpi/vendor/monolog/monolog/src/Monolog/Handler/IFTTTHandler.php:41:        $this->secretKey = $secretKey;
/var/www/html/glpi/vendor/phpmailer/phpmailer/src/OAuth.php:114:            ['refresh_token' => $this->oauthRefreshToken]
/var/www/html/glpi/vendor/phpmailer/phpmailer/src/SMTP.php:163:        'SendGrid' => '/[\d]{3} Ok: queued as (.*)/',
/var/www/html/webmail/config/defaults.inc.php:335:$config['oauth_client_id'] = null;
/var/www/html/webmail/config/defaults.inc.php:338:$config['oauth_client_secret'] = null;
/var/www/html/webmail/config/defaults.inc.php:344:$config['oauth_token_uri'] = null;
/var/www/html/webmail/config/defaults.inc.php:373:// $config['oauth_client_id'] = "<your-credentials-client-id>";
/var/www/html/webmail/config/defaults.inc.php:374:// $config['oauth_client_secret'] = "<your-credentials-client-secret>";
/var/www/html/webmail/config/defaults.inc.php:376:// $config['oauth_token_uri'] = "https://oauth2.googleapis.com/token";
/var/www/html/webmail/config/defaults.inc.php:392:// $config['oauth_client_id'] = "<your-credentials-client-id>";
/var/www/html/webmail/config/defaults.inc.php:393:// $config['oauth_client_secret'] = "<your-credentials-client-secret>";
/var/www/html/webmail/config/defaults.inc.php:395:// $config['oauth_token_uri'] = "https://login.microsoftonline.com/common/oauth2/v2.0/token";
/var/www/html/webmail/plugins/example_addressbook/example_addressbook_backend.php:31:    private $db_users = [
/var/www/html/webmail/program/actions/login/oauth.php:56:                    $_SESSION['oauth_token'] = $auth['token'];
/var/www/html/webmail/program/include/rcmail_oauth.php:182:                'client_id'     => $this->options['client_id'],
/var/www/html/webmail/program/include/rcmail_oauth.php:211:    public function request_access_token($auth_code, $state = null)
/var/www/html/webmail/program/include/rcmail_oauth.php:213:        $oauth_token_uri     = $this->options['token_uri'];
/var/www/html/webmail/program/include/rcmail_oauth.php:214:        $oauth_client_id     = $this->options['client_id'];
/var/www/html/webmail/program/include/rcmail_oauth.php:215:        $oauth_client_secret = $this->options['client_secret'];
/var/www/html/webmail/program/include/rcmail_oauth.php:234:                            'client_id'     => $oauth_client_id,
/var/www/html/webmail/program/include/rcmail_oauth.php:235:                            'client_secret' => $oauth_client_secret,
/var/www/html/webmail/program/include/rcmail_oauth.php:366:        $oauth_token_uri     = $this->options['token_uri'];
/var/www/html/webmail/program/include/rcmail_oauth.php:367:        $oauth_client_id     = $this->options['client_id'];
/var/www/html/webmail/program/include/rcmail_oauth.php:368:        $oauth_client_secret = $this->options['client_secret'];
/var/www/html/webmail/program/include/rcmail_oauth.php:378:                        'client_id'     => $oauth_client_id,
/var/www/html/webmail/program/include/rcmail_oauth.php:379:                        'client_secret' => $oauth_client_secret,
/var/www/html/webmail/program/include/rcmail_oauth.php:380:                        'refresh_token' => $this->rcmail->decrypt($token['refresh_token']),
/var/www/html/webmail/program/include/rcmail_oauth.php:395:                $_SESSION['oauth_token'] = array_merge($token, $data);
/var/www/html/webmail/program/include/rcmail_oauth.php:448:            $data['refresh_token'] = $this->rcmail->encrypt($data['refresh_token']);
/var/www/html/webmail/program/include/rcmail_oauth.php:463:            return $this->refresh_access_token($token) !== false;
/var/www/html/webmail/program/include/rcmail_oauth.php:476:        if (isset($_SESSION['oauth_token']) && $options['driver'] === 'imap') {
/var/www/html/webmail/program/include/rcmail_oauth.php:74:            'client_id'       => $this->rcmail->config->get('oauth_client_id'),
/var/www/html/webmail/program/include/rcmail_oauth.php:75:            'client_secret'   => $this->rcmail->config->get('oauth_client_secret'),
/var/www/html/webmail/public_html/plugins/example_addressbook/example_addressbook_backend.php:31:    private $db_users = [
/var/www/html/glpi/inc/api.class.php:153:      $app_tokens = array_column($found_clients, 'app_token');
/var/www/html/glpi/inc/api.class.php:155:      $this->app_tokens = array_combine($apiclients_id, $app_tokens);
/var/www/html/glpi/inc/api.class.php:2115:         $this->parameters['app_token'] = "";
/var/www/html/glpi/inc/api.class.php:2118:         if ($this->parameters['app_token'] != "") {
/var/www/html/glpi/inc/api.class.php:50:   protected $app_tokens    = [];
/var/www/html/glpi/inc/apiclient.class.php:243:      echo "<br><input type='checkbox' name='_reset_app_token' id='app_token'>&nbsp;";
/var/www/html/glpi/inc/apiclient.class.php:286:         $input['app_token']      = self::getUniqueAppToken();
/var/www/html/glpi/inc/apiclient.class.php:287:         $input['app_token_date'] = $_SESSION['glpi_currenttime'];
/var/www/html/glpi/inc/apiclient.class.php:316:         if (countElementsInTable(self::getTable(), ['app_token' => $key]) == 0) {
/var/www/html/glpi/inc/apirest.class.php:505:         $parameters['app_token'] = $headers['App-Token'];
/var/www/html/glpi/inc/console/database/installcommand.class.php:180:      $db_host     = $input->getOption('db-host');
/var/www/html/glpi/inc/console/database/installcommand.class.php:182:      $db_port     = $input->getOption('db-port');
/var/www/html/glpi/inc/console/database/installcommand.class.php:183:      $db_user     = $input->getOption('db-user');
/var/www/html/glpi/inc/console/database/installcommand.class.php:184:      $db_hostport = $db_host . (!empty($db_port) ? ':' . $db_port : '');
/var/www/html/glpi/inc/console/database/installcommand.class.php:61:   const ERROR_DB_CONNECTION_FAILED = 1;
/var/www/html/glpi/inc/html.class.php:1572:                      ['accesskey' => '1',
/var/www/html/glpi/inc/html.class.php:1729:      echo "<a href='".$CFG_GLPI["root_doc"]."/' accesskey='1' title=\"".__s('Home')."\">".
/var/www/html/glpi/inc/html.class.php:1802:      echo "<a href='".$CFG_GLPI["root_doc"]."/front/helpdesk.public.php' accesskey='1' title=\"".
/var/www/html/glpi/inc/html.class.php:1999:                     echo " accesskey='".$val['shortcut']."'";
/var/www/html/glpi/inc/html.class.php:6427:                           echo " accesskey='".$val['shortcut']."'";
/var/www/html/glpi/install/install.php:358:      echo "<input type='hidden' name='db_host' value='". $host ."'>";
/var/www/html/glpi/install/install.php:359:      echo "<input type='hidden' name='db_user' value='". $user ."'>";
/var/www/html/glpi/install/update_0905_91.php:444:            'app_token'          => "",
/var/www/html/glpi/install/update_0905_91.php:445:            'app_token_date'     => null,
/var/www/html/glpi/vendor/monolog/monolog/src/Monolog/Handler/IFTTTHandler.php:41:        $this->secretKey = $secretKey;
/var/www/html/glpi/vendor/phpmailer/phpmailer/src/OAuth.php:114:            ['refresh_token' => $this->oauthRefreshToken]
/var/www/html/glpi/vendor/phpmailer/phpmailer/src/SMTP.php:163:        'SendGrid' => '/[\d]{3} Ok: queued as (.*)/',
/var/www/html/webmail/config/defaults.inc.php:335:$config['oauth_client_id'] = null;
/var/www/html/webmail/config/defaults.inc.php:338:$config['oauth_client_secret'] = null;
/var/www/html/webmail/config/defaults.inc.php:344:$config['oauth_token_uri'] = null;
/var/www/html/webmail/config/defaults.inc.php:373:// $config['oauth_client_id'] = "<your-credentials-client-id>";
/var/www/html/webmail/config/defaults.inc.php:374:// $config['oauth_client_secret'] = "<your-credentials-client-secret>";
/var/www/html/webmail/config/defaults.inc.php:376:// $config['oauth_token_uri'] = "https://oauth2.googleapis.com/token";
/var/www/html/webmail/config/defaults.inc.php:392:// $config['oauth_client_id'] = "<your-credentials-client-id>";
/var/www/html/webmail/config/defaults.inc.php:393:// $config['oauth_client_secret'] = "<your-credentials-client-secret>";
/var/www/html/webmail/config/defaults.inc.php:395:// $config['oauth_token_uri'] = "https://login.microsoftonline.com/common/oauth2/v2.0/token";
/var/www/html/webmail/plugins/example_addressbook/example_addressbook_backend.php:31:    private $db_users = [
/var/www/html/webmail/program/actions/login/oauth.php:56:                    $_SESSION['oauth_token'] = $auth['token'];
/var/www/html/webmail/program/include/rcmail_oauth.php:182:                'client_id'     => $this->options['client_id'],
/var/www/html/webmail/program/include/rcmail_oauth.php:211:    public function request_access_token($auth_code, $state = null)
/var/www/html/webmail/program/include/rcmail_oauth.php:213:        $oauth_token_uri     = $this->options['token_uri'];
/var/www/html/webmail/program/include/rcmail_oauth.php:214:        $oauth_client_id     = $this->options['client_id'];
/var/www/html/webmail/program/include/rcmail_oauth.php:215:        $oauth_client_secret = $this->options['client_secret'];
/var/www/html/webmail/program/include/rcmail_oauth.php:234:                            'client_id'     => $oauth_client_id,
/var/www/html/webmail/program/include/rcmail_oauth.php:235:                            'client_secret' => $oauth_client_secret,
/var/www/html/webmail/program/include/rcmail_oauth.php:366:        $oauth_token_uri     = $this->options['token_uri'];
/var/www/html/webmail/program/include/rcmail_oauth.php:367:        $oauth_client_id     = $this->options['client_id'];
/var/www/html/webmail/program/include/rcmail_oauth.php:368:        $oauth_client_secret = $this->options['client_secret'];
/var/www/html/webmail/program/include/rcmail_oauth.php:378:                        'client_id'     => $oauth_client_id,
/var/www/html/webmail/program/include/rcmail_oauth.php:379:                        'client_secret' => $oauth_client_secret,
/var/www/html/webmail/program/include/rcmail_oauth.php:380:                        'refresh_token' => $this->rcmail->decrypt($token['refresh_token']),
/var/www/html/webmail/program/include/rcmail_oauth.php:395:                $_SESSION['oauth_token'] = array_merge($token, $data);
/var/www/html/webmail/program/include/rcmail_oauth.php:448:            $data['refresh_token'] = $this->rcmail->encrypt($data['refresh_token']);
/var/www/html/webmail/program/include/rcmail_oauth.php:463:            return $this->refresh_access_token($token) !== false;
/var/www/html/webmail/program/include/rcmail_oauth.php:476:        if (isset($_SESSION['oauth_token']) && $options['driver'] === 'imap') {
/var/www/html/webmail/program/include/rcmail_oauth.php:74:            'client_id'       => $this->rcmail->config->get('oauth_client_id'),
/var/www/html/webmail/program/include/rcmail_oauth.php:75:            'client_secret'   => $this->rcmail->config->get('oauth_client_secret'),
/var/www/html/webmail/public_html/plugins/example_addressbook/example_addressbook_backend.php:31:    private $db_users = [

╔══════════╣ Searching possible password in config files (if k8s secrets are found you need to read the file)
 /var/www/html/glpi/vendor/sabre/vobject/.travis.yml                                                                                                      
/var/www/html/glpi/vendor/sabre/vobject/.travis.yml:19: env:
 /opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf
/opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf:9:$ENV:
/opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf:12:$ENV:
 /opt/splunkforwarder/etc/system/default/inputs.conf
/opt/splunkforwarder/etc/system/default/inputs.conf:24:passwd]
 /opt/splunkforwarder/etc/system/default/server.conf
/opt/splunkforwarder/etc/system/default/server.conf:62:passwd = false
/opt/splunkforwarder/etc/system/default/server.conf:85:credential:password", "app:credential:sslPassword", "passwords:credential:password", "passwords:credential:sslPassword", "authentication: :bindDNpassword", "authentication: :sslKeysfilePassword", "authentication: :attributeQuerySoapPassword", "authentication: :scriptSecureArguments", "authentication: :sslPassword", "authentication: :accessKey", "web:settings:privKeyPassword", "web:settings:sslPassword", "server:indexer_discovery:pass4SymmKey", "server:clustermanager:pass4SymmKey", "server:dmc:pass4SymmKey", "server:kvstore:sslKeysPassword", "indexes: :remote.s3.access_key", "indexes: :remote.s3.secret_key", "indexes: :remote.s3.kms.key_id", "indexes: :remote.azure.access_key", "indexes: :remote.azure.secret_key", "indexes: :remote.azure.client_secret", "indexes: :remote.azure.azure_kv.key_vault_client_secret", "indexes: :remote.azure.azure_kv.key_name", "indexes: :remote.azure.azure_kv.endpoint", "outputs: :remote.s3.access_key", "outputs: :remote.s3.secret_key", "outputs: :remote.s3.kms.key_id", "outputs: :remote.azure.access_key", "outputs: :remote.azure.secret_key", "outputs: :remote.azure.client_secret", "outputs: :remote.azure.azure_kv.key_vault_client_secret", "outputs: :remote.azure.azure_kv.key_name", "outputs: :remote.azure.azure_kv.endpoint", "server:scs:kvservice.principal.client.secret", "federated: :password", "inputs: :remote_queue.sqs_smartbus.access_key", "inputs: :remote_queue.sqs_smartbus.secret_key", "inputs: :remote_queue.asq.access_key", "inputs: :remote_queue.asq.secret_key", "outputs: :remote_queue.sqs_smartbus.access_key", "outputs: :remote_queue.sqs_smartbus.secret_key", "outputs: :remote_queue.asq.access_key", "outputs: :remote_queue.asq.secret_key"
/opt/splunkforwarder/etc/system/default/server.conf:483:passwd = true
/opt/splunkforwarder/etc/system/default/server.conf:509:passwd = passwd
 /opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf
/opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf:23:$ENV:
/opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf:51:$ENV:
 /opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf
/opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf:23:$ENV:
/opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf:51:$ENV:
 /opt/splunkforwarder/share/openssl3/openssl.cnf
/opt/splunkforwarder/share/openssl3/openssl.cnf:23:$ENV:
 /var/www/html/glpi/vendor/sabre/vobject/.travis.yml
/var/www/html/glpi/vendor/sabre/vobject/.travis.yml:19: env:
 /etc/security/pwhistory.conf
/etc/security/pwhistory.conf:20:passwd.
/etc/security/pwhistory.conf:21:passwd
 /etc/security/faillock.conf
/etc/security/faillock.conf:21:passwd and ignore centralized (AD, IdM, LDAP, etc.) users.
 /etc/security/pwquality.conf
/etc/security/pwquality.conf:45:passwd entry GECOS string of the user.
/etc/security/pwquality.conf:77:passwd file.
 /etc/sysctl.d/10-ptrace.conf
/etc/sysctl.d/10-ptrace.conf:4:credentials that exist in memory (re-using existing SSH connections,
 /etc/apache2/apache2.conf
/etc/apache2/apache2.conf:192:passwd files from being
 /etc/nsswitch.conf
/etc/nsswitch.conf:7:passwd:         files systemd sss
 /etc/ipp-usb/ipp-usb.conf
/etc/ipp-usb/ipp-usb.conf:46:passwd and /etc/group
 /etc/samba/smb.conf
/etc/samba/smb.conf:89:passwd program in Debian Sarge).
/etc/samba/smb.conf:90:passwd program = /usr/bin/passwd %u
/etc/samba/smb.conf:91:passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .
/etc/samba/smb.conf:95:passwd program'. The default is 'no'.
 /etc/cups/cups-files.conf
/etc/cups/cups-files.conf:22:credentials used for authorization?
 /etc/dovecot/conf.d/10-auth.conf
/etc/dovecot/conf.d/10-auth.conf:109:passwd) and virtual users to login without
/etc/dovecot/conf.d/10-auth.conf:125:passwdfile.conf.ext
 /etc/ssl/openssl.cnf
/etc/ssl/openssl.cnf:23:$ENV:
 /etc/debconf.conf
/etc/debconf.conf:69:Passwd: secret
 /opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf
/opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf:9:$ENV:
/opt/splunkforwarder/opt/openssl1/openssl/openssl.cnf:12:$ENV:
 /opt/splunkforwarder/etc/system/default/inputs.conf
/opt/splunkforwarder/etc/system/default/inputs.conf:24:passwd]
 /opt/splunkforwarder/etc/system/default/server.conf
/opt/splunkforwarder/etc/system/default/server.conf:62:passwd = false
/opt/splunkforwarder/etc/system/default/server.conf:85:credential:password", "app:credential:sslPassword", "passwords:credential:password", "passwords:credential:sslPassword", "authentication: :bindDNpassword", "authentication: :sslKeysfilePassword", "authentication: :attributeQuerySoapPassword", "authentication: :scriptSecureArguments", "authentication: :sslPassword", "authentication: :accessKey", "web:settings:privKeyPassword", "web:settings:sslPassword", "server:indexer_discovery:pass4SymmKey", "server:clustermanager:pass4SymmKey", "server:dmc:pass4SymmKey", "server:kvstore:sslKeysPassword", "indexes: :remote.s3.access_key", "indexes: :remote.s3.secret_key", "indexes: :remote.s3.kms.key_id", "indexes: :remote.azure.access_key", "indexes: :remote.azure.secret_key", "indexes: :remote.azure.client_secret", "indexes: :remote.azure.azure_kv.key_vault_client_secret", "indexes: :remote.azure.azure_kv.key_name", "indexes: :remote.azure.azure_kv.endpoint", "outputs: :remote.s3.access_key", "outputs: :remote.s3.secret_key", "outputs: :remote.s3.kms.key_id", "outputs: :remote.azure.access_key", "outputs: :remote.azure.secret_key", "outputs: :remote.azure.client_secret", "outputs: :remote.azure.azure_kv.key_vault_client_secret", "outputs: :remote.azure.azure_kv.key_name", "outputs: :remote.azure.azure_kv.endpoint", "server:scs:kvservice.principal.client.secret", "federated: :password", "inputs: :remote_queue.sqs_smartbus.access_key", "inputs: :remote_queue.sqs_smartbus.secret_key", "inputs: :remote_queue.asq.access_key", "inputs: :remote_queue.asq.secret_key", "outputs: :remote_queue.sqs_smartbus.access_key", "outputs: :remote_queue.sqs_smartbus.secret_key", "outputs: :remote_queue.asq.access_key", "outputs: :remote_queue.asq.secret_key"
/opt/splunkforwarder/etc/system/default/server.conf:483:passwd = true
/opt/splunkforwarder/etc/system/default/server.conf:509:passwd = passwd
 /opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf
/opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf:23:$ENV:
/opt/splunkforwarder/share/openssl3/fips140-2/openssl.cnf:51:$ENV:
 /opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf
/opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf:23:$ENV:
/opt/splunkforwarder/share/openssl3/fips140-3/openssl.cnf:51:$ENV:
 /opt/splunkforwarder/share/openssl3/openssl.cnf
/opt/splunkforwarder/share/openssl3/openssl.cnf:23:$ENV:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:102:credentials made the request. This is an asynchronous request that AWS performs in the background. Because <code>CreateAccount</code> operates asynchronously, it can return a successful completion message even though account initialization might still be in progress. You might need to wait a few minutes before you can successfully access the account. To check the status of the request, do one of the following:</p> <ul> <li> <p>Use the <code>Id</code> member of the <code>CreateAccountStatus</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> </li> <li> <p>Check the AWS CloudTrail log for the <code>CreateAccountResult</code> event. For information on using AWS CloudTrail with AWS Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration\">Logging and monitoring in AWS Organizations</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <p>The user who calls the API to create an account must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, AWS Organizations creates the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs\">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>If the request includes tags, then the requester must have the <code>organizations:TagResource</code> permission.</p> <p>AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the management account administrator permissions in the new member account. Principals in the management account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's management account.</p> <p>This operation can be called only from the organization's management account.</p> <p>For more information about creating accounts, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html\">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> <important> <ul> <li> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the end user license agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization as a member account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>If you get an exception that indicates that you exceeded your account limits for the organization, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>If you get an exception that indicates that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>Using <code>CreateAccount</code> to create multiple temporary accounts isn't recommended. You can only close an account from the Billing and Cost Management Console, and you must be signed in as the root user. For information on the requirements and process for closing an account, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html\">Closing an AWS Account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable it, only the account root user can access billing information. For information about how to disable this switch for an account, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html\">Granting Access to Your Billing Information and Tools</a>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:123:credentials made the request. Both accounts are associated with the same email address.</p> <p>A role is created in the new account in the commercial Region that allows the management account in the organization in the commercial Region to assume it. An AWS GovCloud (US) account is then created and associated with the commercial account that you just created. A role is also created in the new AWS GovCloud (US) account that can be assumed by the AWS GovCloud (US) account that is associated with the management account of the commercial organization. For more information and to view a diagram that explains how account access works, see <a href=\"http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html\">AWS Organizations</a> in the <i>AWS GovCloud User Guide.</i> </p> <p>For more information about creating accounts, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html\">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> <important> <ul> <li> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account is <i>not</i> automatically collected. This includes a payment method and signing the end user license agreement (EULA). If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization as a member account</a> in the <i>AWS Organizations User Guide.</i> </p> </li> <li> <p>If you get an exception that indicates that you exceeded your account limits for the organization, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>If you get an exception that indicates that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>Using <code>CreateGovCloudAccount</code> to create multiple temporary accounts isn't recommended. You can only close an account from the AWS Billing and Cost Management console, and you must be signed in as the root user. For information on the requirements and process for closing an account, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html\">Closing an AWS Account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable it, only the account root user can access billing information. For information about how to disable this switch for an account, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html\">Granting Access to Your Billing Information and Tools</a>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:143:credentials from the account that is to become the new organization's management account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING\"</code>, no policy types are enabled by default, and you can't use organization policies</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:224:credentials from the management account. The organization must be empty of member accounts.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:1027:credentials of an account that belongs to an organization.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/service-2.json:1140:credentials you used to make this request isn't a member of an organization.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/examples-1.json:209:credentials from account 111111111111. The following example shows that the account becomes the master account in the new organization. Because he does not specify a feature set, the new organization defaults to all features enabled and service control policies enabled on the root:\n\n",
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/examples-1.json:236:credentials from account 111111111111, and configures the organization to support only the consolidated billing feature set:\n\n",
/opt/splunk/lib/python3.7/site-packages/botocore/data/organizations/2016-11-28/examples-1.json:990:credentials used to call the operation:",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:796:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:826:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:936:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1107:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1163:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1196:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1238:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1330:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1390:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1414:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1444:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1485:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1503:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1521:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1545:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1595:credentials.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1612:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1694:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1743:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1798:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1869:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:1955:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2040:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2421:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2466:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2506:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2555:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2600:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2636:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2642:credentials.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2740:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:2989:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:3010:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:3393:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:3426:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:3454:credentials to access the API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/workdocs/2016-05-01/service-2.json:3484:credentials to access the API.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/guardduty/2017-11-28/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/guardduty/2017-11-28/service-2.json:4948:credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances that serve malware or mine bitcoin. </p> <p>GuardDuty also monitors AWS account access behavior for signs of compromise. Some examples of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region that has never been used, or unusual API calls like a password policy change to reduce password strength. </p> <p>GuardDuty informs you of the status of your AWS environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see the <i> <a href=\"https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html\">Amazon GuardDuty User Guide</a> </i>. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/kinesis-video-archived-media/2017-09-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/kinesis-video-archived-media/2017-09-30/service-2.json:53:credentials.</p> </note> <p>The media that is made available through the manifest consists only of the requested stream, time range, and format. No other media data (such as frames outside the requested window or alternate bitrates) is made available.</p> </li> <li> <p>Provide the URL (containing the encrypted session token) for the MPEG-DASH manifest to a media player that supports the MPEG-DASH protocol. Kinesis Video Streams makes the initialization fragment and media fragments available through the manifest URL. The initialization fragment contains the codec private data for the stream, and other data needed to set up the video or audio decoder and renderer. The media fragments contain encoded video frames or encoded audio samples.</p> </li> <li> <p>The media player receives the authenticated URL and requests stream metadata and media data normally. When the media player requests data, it calls the following actions:</p> <ul> <li> <p> <b>GetDASHManifest:</b> Retrieves an MPEG DASH manifest, which contains the metadata for the media that you want to playback.</p> </li> <li> <p> <b>GetMP4InitFragment:</b> Retrieves the MP4 initialization fragment. The media player typically loads the initialization fragment before loading any media fragments. This fragment contains the \"<code>fytp</code>\" and \"<code>moov</code>\" MP4 atoms, and the child atoms that are needed to initialize the media player decoder.</p> <p>The initialization fragment does not correspond to a fragment in a Kinesis video stream. It contains only the codec private data for the stream and respective track, which the media player needs to decode the media frames.</p> </li> <li> <p> <b>GetMP4MediaFragment:</b> Retrieves MP4 media fragments. These fragments contain the \"<code>moof</code>\" and \"<code>mdat</code>\" MP4 atoms and their child atoms, containing the encoded fragment's media frames and their timestamps. </p> <note> <p>After the first media fragment is made available in a streaming session, any fragments that don't contain the same codec private data cause an error to be returned when those different media fragments are loaded. Therefore, the codec private data should not change between fragments in a session. This also means that the session fails if the fragments in a stream change from having only video to having both audio and video.</p> </note> <p>Data retrieved with this action is billable. See <a href=\"https://aws.amazon.com/kinesis/video-streams/pricing/\">Pricing</a> for details.</p> </li> </ul> </li> </ol> <note> <p>For restrictions that apply to MPEG-DASH sessions, see <a href=\"http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html\">Kinesis Video Streams Limits</a>.</p> </note> <p>You can monitor the amount of data that the media player consumes by monitoring the <code>GetMP4MediaFragment.OutgoingBytes</code> Amazon CloudWatch metric. For information about using CloudWatch to monitor Kinesis Video Streams, see <a href=\"http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html\">Monitoring Kinesis Video Streams</a>. For pricing information, see <a href=\"https://aws.amazon.com/kinesis/video-streams/pricing/\">Amazon Kinesis Video Streams Pricing</a> and <a href=\"https://aws.amazon.com/pricing/\">AWS Pricing</a>. Charges for both HLS sessions and outgoing AWS data apply.</p> <p>For more information about HLS, see <a href=\"https://developer.apple.com/streaming/\">HTTP Live Streaming</a> on the <a href=\"https://developer.apple.com\">Apple Developer site</a>.</p> <important> <p>If an error is thrown after invoking a Kinesis Video Streams archived media API, in addition to the HTTP status code and the response body, it includes the following pieces of information: </p> <ul> <li> <p> <code>x-amz-ErrorType</code> HTTP header – contains a more specific error type in addition to what the HTTP status code provides. </p> </li> <li> <p> <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to AWS, the support team can better diagnose the problem if given the Request Id.</p> </li> </ul> <p>Both the HTTP status code and the ErrorType header can be utilized to make programmatic decisions about whether errors are retry-able and under what conditions, as well as provide information on what actions the client programmer might need to take in order to successfully try again.</p> <p>For more information, see the <b>Errors</b> section at the bottom of this topic, as well as <a href=\"https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html\">Common Errors</a>. </p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kinesis-video-archived-media/2017-09-30/service-2.json:73:credentials.</p> </note> <p>The media that is made available through the playlist consists only of the requested stream, time range, and format. No other media data (such as frames outside the requested window or alternate bitrates) is made available.</p> </li> <li> <p>Provide the URL (containing the encrypted session token) for the HLS master playlist to a media player that supports the HLS protocol. Kinesis Video Streams makes the HLS media playlist, initialization fragment, and media fragments available through the master playlist URL. The initialization fragment contains the codec private data for the stream, and other data needed to set up the video or audio decoder and renderer. The media fragments contain H.264-encoded video frames or AAC-encoded audio samples.</p> </li> <li> <p>The media player receives the authenticated URL and requests stream metadata and media data normally. When the media player requests data, it calls the following actions:</p> <ul> <li> <p> <b>GetHLSMasterPlaylist:</b> Retrieves an HLS master playlist, which contains a URL for the <code>GetHLSMediaPlaylist</code> action for each track, and additional metadata for the media player, including estimated bitrate and resolution.</p> </li> <li> <p> <b>GetHLSMediaPlaylist:</b> Retrieves an HLS media playlist, which contains a URL to access the MP4 initialization fragment with the <code>GetMP4InitFragment</code> action, and URLs to access the MP4 media fragments with the <code>GetMP4MediaFragment</code> actions. The HLS media playlist also contains metadata about the stream that the player needs to play it, such as whether the <code>PlaybackMode</code> is <code>LIVE</code> or <code>ON_DEMAND</code>. The HLS media playlist is typically static for sessions with a <code>PlaybackType</code> of <code>ON_DEMAND</code>. The HLS media playlist is continually updated with new fragments for sessions with a <code>PlaybackType</code> of <code>LIVE</code>. There is a distinct HLS media playlist for the video track and the audio track (if applicable) that contains MP4 media URLs for the specific track. </p> </li> <li> <p> <b>GetMP4InitFragment:</b> Retrieves the MP4 initialization fragment. The media player typically loads the initialization fragment before loading any media fragments. This fragment contains the \"<code>fytp</code>\" and \"<code>moov</code>\" MP4 atoms, and the child atoms that are needed to initialize the media player decoder.</p> <p>The initialization fragment does not correspond to a fragment in a Kinesis video stream. It contains only the codec private data for the stream and respective track, which the media player needs to decode the media frames.</p> </li> <li> <p> <b>GetMP4MediaFragment:</b> Retrieves MP4 media fragments. These fragments contain the \"<code>moof</code>\" and \"<code>mdat</code>\" MP4 atoms and their child atoms, containing the encoded fragment's media frames and their timestamps. </p> <note> <p>After the first media fragment is made available in a streaming session, any fragments that don't contain the same codec private data cause an error to be returned when those different media fragments are loaded. Therefore, the codec private data should not change between fragments in a session. This also means that the session fails if the fragments in a stream change from having only video to having both audio and video.</p> </note> <p>Data retrieved with this action is billable. See <a href=\"https://aws.amazon.com/kinesis/video-streams/pricing/\">Pricing</a> for details.</p> </li> <li> <p> <b>GetTSFragment:</b> Retrieves MPEG TS fragments containing both initialization and media data for all tracks in the stream.</p> <note> <p>If the <code>ContainerFormat</code> is <code>MPEG_TS</code>, this API is used instead of <code>GetMP4InitFragment</code> and <code>GetMP4MediaFragment</code> to retrieve stream media.</p> </note> <p>Data retrieved with this action is billable. For more information, see <a href=\"https://aws.amazon.com/kinesis/video-streams/pricing/\">Kinesis Video Streams pricing</a>.</p> </li> </ul> </li> </ol> <p>A streaming session URL must not be shared between players. The service might throttle a session if multiple media players are sharing it. For connection limits, see <a href=\"http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html\">Kinesis Video Streams Limits</a>.</p> <p>You can monitor the amount of data that the media player consumes by monitoring the <code>GetMP4MediaFragment.OutgoingBytes</code> Amazon CloudWatch metric. For information about using CloudWatch to monitor Kinesis Video Streams, see <a href=\"http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html\">Monitoring Kinesis Video Streams</a>. For pricing information, see <a href=\"https://aws.amazon.com/kinesis/video-streams/pricing/\">Amazon Kinesis Video Streams Pricing</a> and <a href=\"https://aws.amazon.com/pricing/\">AWS Pricing</a>. Charges for both HLS sessions and outgoing AWS data apply.</p> <p>For more information about HLS, see <a href=\"https://developer.apple.com/streaming/\">HTTP Live Streaming</a> on the <a href=\"https://developer.apple.com\">Apple Developer site</a>.</p> <important> <p>If an error is thrown after invoking a Kinesis Video Streams archived media API, in addition to the HTTP status code and the response body, it includes the following pieces of information: </p> <ul> <li> <p> <code>x-amz-ErrorType</code> HTTP header – contains a more specific error type in addition to what the HTTP status code provides. </p> </li> <li> <p> <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to AWS, the support team can better diagnose the problem if given the Request Id.</p> </li> </ul> <p>Both the HTTP status code and the ErrorType header can be utilized to make programmatic decisions about whether errors are retry-able and under what conditions, as well as provide information on what actions the client programmer might need to take in order to successfully try again.</p> <p>For more information, see the <b>Errors</b> section at the bottom of this topic, as well as <a href=\"https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html\">Common Errors</a>. </p> </important>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/lexv2-runtime/2020-08-07/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/lexv2-runtime/2020-08-07/service-2.json:1318:credentials passed with the request are invalid or expired. Also thrown when the credentials in the request do not have permission to access the <code>StartConversation</code> operation.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/worklink/2018-09-25/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/worklink/2018-09-25/service-2.json:438:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:464:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:466:Credentials instead",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:467:Credentials instead",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:490:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:494:CredentialsRequest"
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:496:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:499:CredentialsResponse"
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:502:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:526:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:530:CredentialsRequest"
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:532:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:535:CredentialsResponse"
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:663:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:2425:CredentialsRequest": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:2440:CredentialsResponse": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:2477:CredentialsRequest": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:2486:credentials should be rotated",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage/2017-10-12/service-2.json:2498:CredentialsResponse": {
 /opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2043:CredentialsType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2045:credentials AWS CodeBuild uses to pull images in your build.</p> <p>Valid values:</p> <ul> <li> <p> <code>CODEBUILD</code> specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust the AWS CodeBuild service principal.</p> </li> <li> <p> <code>SERVICE_ROLE</code> specifies that AWS CodeBuild uses your build project's service role.</p> </li> </ul> <p>When you use a cross-account or private registry image, you must use <code>SERVICE_ROLE</code> credentials. When you use an AWS CodeBuild curated image, you must use <code>CODEBUILD</code> credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2047:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2048:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2049:credentials for access to a private registry.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2058:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2061:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2063:credentials created using AWS Secrets Manager.</p> <note> <p>The credential can use the name of the credentials only if they exist in your current AWS Region. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2065:CredentialProvider":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2067:credentials to access a private Docker registry.</p> <p>The valid value,<code> SECRETS_MANAGER</code>, is for AWS Secrets Manager.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2070:credentials for access to a private registry.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2119:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:2121:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:4786:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:5185:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/securityhub/2018-10-26/service-2.json:9417:credentials, financial information, or personal information.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/license-manager/2018-08-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/license-manager/2018-08-01/service-2.json:229:credentials that you can use to call License Manager to manage the specified license.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:5075:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:5236:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:5443:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:5538:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:5633:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:6087:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:6095:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:6126:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:6533:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:7928:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:8890:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:8898:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:8929:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:12224:Credential": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/pinpoint/2016-12-01/service-2.json:14171:Credential": {
 /opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:125:Credentials</b> page in the AWS Management Console. The AWS account root user password is not affected by this operation.</p> <p>Use <a>UpdateLoginProfile</a> to use the AWS CLI, the AWS API, or the <b>Users</b> page in the IAM console to change the password for any IAM user. For more information about modifying passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing passwords</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:143:credentials. This is true even if the AWS account has no associated users.</p> <p> For information about quotas on the number of keys you can create, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:216:Credentials</b> page in the AWS Management Console.</p> <p>For more information about managing passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing passwords</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:339:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:340:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:345:CredentialRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:347:CredentialResponse",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:348:CredentialResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:355:credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>You can create service-specific credentials for AWS CodeCommit and Amazon Keyspaces (for Apache Cassandra).</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html\">Using IAM with AWS CodeCommit: Git credentials, SSH keys, and AWS access keys</a> in the <i>IAM User Guide</i>.</p>"              
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:425:credentials even if the AWS account has no associated users.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:511:Credentials</b> page in the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access, you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:630:credentials-ssh.html\">Set up AWS CodeCommit for SSH connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:645:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, see <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html\">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:665:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:666:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:671:CredentialRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:675:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:689:credentials even if the AWS account has no associated IAM users.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:705:credentials (<a>DeleteServiceSpecificCredential</a>)</p> </li> <li> <p>Multi-factor authentication (MFA) device (<a>DeactivateMFADevice</a>, <a>DeleteVirtualMFADevice</a>)</p> </li> <li> <p>Inline policies (<a>DeleteUserPolicy</a>)</p> </li> <li> <p>Attached managed policies (<a>DetachUserPolicy</a>)</p> </li> <li> <p>Group memberships (<a>RemoveUserFromGroup</a>)</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:812:CredentialReport":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:813:CredentialReport",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:819:CredentialReportResponse",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:820:CredentialReportResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:826:credential report for the AWS account. For more information about the credential report, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Getting credential reports</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:842:credentials. You can use your long-term IAM user or root user credentials, or temporary credentials from assuming an IAM role. SCPs must be enabled for your organization root. You must have the required IAM and AWS Organizations permissions. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Refining permissions using service last accessed data</a> in the <i>IAM User Guide</i>.</p> <p>You can generate a service last accessed data report for entities by specifying only the entity's path. This data includes a list of services that are allowed by any service control policies (SCPs) that apply to the entity.</p> <p>You can generate a service last accessed data report for a policy by specifying an entity's path and an optional AWS Organizations policy ID. This data includes a list of services that are allowed by the specified SCP.</p> <p>For each service in both report types, the data includes the most recent account activity that the policy allows to account principals in the entity or the entity's children. For important information about the data, reporting period, permissions required, troubleshooting, and supported Regions see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing permissions using service last accessed data</a> in the <i>IAM User Guide</i>.</p> <important> <p>The data includes all attempts to access AWS, not just the successful ones. This includes all attempts that were made using the AWS Management Console, the AWS API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that an account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html\">Logging IAM events with CloudTrail</a> in the <i>IAM User Guide</i>.</p> </important> <p>This operation returns a <code>JobId</code>. Use this parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation to check the status of the report generation. To check the status of this request, use the <code>JobId</code> parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation and test the <code>JobStatus</code> response parameter. When the job is complete, you can retrieve the report.</p> <p>To generate a service last accessed data report for entities, specify an entity path without specifying the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned in the report.</p> <ul> <li> <p> <b>Root</b> – When you specify the organizations root as the entity, the resulting report lists all of the services allowed by SCPs that are attached to your root. For each service, the report includes data for all accounts in your organization except the management account, because the management account is not limited by SCPs.</p> </li> <li> <p> <b>OU</b> – When you specify an organizational unit (OU) as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the OU and its parents. For each service, the report includes data for all accounts in the OU or its children. This data excludes the management account, because the management account is not limited by SCPs.</p> </li> <li> <p> <b>management account</b> – When you specify the management account, the resulting report lists all AWS services, because the management account is not limited by SCPs. For each service, the report includes data for only the management account.</p> </li> <li> <p> <b>Account</b> – When you specify another account as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the account and its parents. For each service, the report includes data for only the specified account.</p> </li> </ul> <p>To generate a service last accessed data report for policies, specify an entity path and the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned for each service.</p> <ul> <li> <p> <b>Root</b> – When you specify the root entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in your organization to which the SCP applies. This data excludes the management account, because the management account is not limited by SCPs. If the SCP is not attached to any entities in the organization, then the report will return a list of services with no data.</p> </li> <li> <p> <b>OU</b> – When you specify an OU entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in the OU or its children to which the SCP applies. This means that other accounts outside the OU that are affected by the SCP might not be included in the data. This data excludes the management account, because the management account is not limited by SCPs. If the SCP is not attached to the OU or one of its children, the report will return a list of services with no data.</p> </li> <li> <p> <b>management account</b> – When you specify the management account, the resulting report lists all AWS services, because the management account is not limited by SCPs. If you specify a policy ID in the CLI or API, the policy is ignored. For each service, the report includes data for only the management account.</p> </li> <li> <p> <b>Account</b> – When you specify another account entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for only the specified account. This means that other accounts in the organization that are affected by the SCP might not be included in the data. If the SCP is not attached to the account, the report will return a list of services with no data.</p> </li> </ul> <note> <p>Service last accessed data does not use other policy types when determining whether a principal could access a service. These other policy types include identity-based policies, resource-based policies, access control lists, IAM permissions boundaries, and STS assume role policies. It only applies SCP logic. For more about the evaluation of policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For more information about service last accessed data, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing policy scope by viewing user activity</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:957:CredentialReport":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:958:CredentialReport",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:964:CredentialReportResponse",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:965:CredentialReportResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:968:CredentialReportNotPresentException"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:969:CredentialReportExpiredException"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:970:CredentialReportNotReadyException"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:973:credential report for the AWS account. For more information about the credential report, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Getting credential reports</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1180:credentials-ssh.html\">Set up AWS CodeCommit for SSH connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1197:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1300:credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1726:credentials-ssh.html\">Set up AWS CodeCommit for SSH connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1743:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1759:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <note> <p>IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see <a>GetServerCertificate</a>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1761:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1762:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1767:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1769:CredentialsResponse",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1770:CredentialsResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1776:credentials associated with the specified IAM user. If none exists, the operation returns an empty list. The service-specific credentials returned by this operation are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html\">Set up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1793:credentials even if the AWS account has no associated users.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1978:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1979:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1984:CredentialRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1986:CredentialResponse",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1987:CredentialResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:1992:credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2034:credentials_temp_enable-regions.html\">Activating and deactivating STS in an AWS region</a> in the <i>IAM User Guide</i>.</p> <p>To view the current session token version, see the <code>GlobalEndpointTokenVersion</code> entry in the response of the <a>GetAccountSummary</a> operation.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2181:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>.</p> </note> <p>A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:</p> <ul> <li> <p> <b>Administrative grouping and discovery</b> - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name <i>Project</i> and the value <i>MyImportantProject</i>. Or search for all resources with the key name <i>Cost Center</i> and the value <i>41200</i>. </p> </li> <li> <p> <b>Access control</b> - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only a server certificate that has a specified tag attached. For examples of policies that show how to use tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Control access using IAM tags</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p> <b>Cost allocation</b> - Use tags to help track which individuals and teams are using which AWS resources.</p> </li> </ul> <note> <ul> <li> <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </li> </ul> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2301:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2329:credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html\">Managing keys and certificates</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2391:Credentials</b> page in the AWS Management Console.</p> <p>For more information about modifying passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing passwords</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2472:credentials-ssh.html\">Set up AWS CodeCommit for SSH connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2487:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts\">Renaming a server certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>The person making the request (the principal), must have permission to change the server certificate with the old name and the new name. For example, to change the certificate named <code>ProductionCert</code> to <code>ProdCert</code>, the principal must have a policy that allows them to update both certificates. If the principal has permission to update the <code>ProductionCert</code> group, but not the <code>ProdCert</code> certificate, then the update fails. For more information about permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html\">Access management</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2489:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2490:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2495:CredentialRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2499:credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This operation can be used to disable a user's service-specific credential as part of a credential rotation work flow.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2513:credentials even if the AWS account has no associated users.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2550:credentials-ssh.html\">Set up AWS CodeCommit for SSH connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2572:credentials_server-certs.html\">Working with server certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <p>For information about the number of server certificates you can upload, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html\">Signing AWS API requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html\">Calling the API by making HTTP query requests</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:2594:credentials_server-certs.html\">Managing server certificates in IAM</a> in the <i>IAM User Guide</i>.</p> <p>If the <code>UserName</code> is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html\">Signing AWS API requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html\">Making query requests</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3199:credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM roles</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3284:CredentialRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3293:credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3297:credentials. The service you specify here is the only service that can be accessed using these credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3301:CredentialResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3304:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3305:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3306:credential.</p> <important> <p>This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you must reset the password with <a>ResetServiceSpecificCredential</a>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3371:CredentialReportExpiredException":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3374:credentialReportExpiredExceptionMessage"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3376:credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Getting credential reports</a> in the <i>IAM User Guide</i>.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3384:CredentialReportNotPresentException":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3387:credentialReportNotPresentExceptionMessage"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3389:credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3397:CredentialReportNotReadyException":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3400:credentialReportNotReadyExceptionMessage"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3402:credential report is still being generated.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3642:CredentialRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3644:CredentialId"],
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3648:credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3650:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3651:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3652:credential. You can get this value by calling <a>ListServiceSpecificCredentials</a>.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3841:credentials_mfa_sync.html\">resync the device</a>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:3845:credentials_mfa_sync.html\">resync the device</a>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4007:CredentialReportResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4012:credential report.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4016:credential report.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4019:CredentialReport</a> request. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4193:CredentialReportResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4198:credential report. The report is Base64-encoded.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4202:credential report.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4206:credential report was created, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4209:CredentialReport</a> request. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:4834:credentials_finding-unused.html\">last sign-in</a> dates shown in the IAM console and password last used dates in the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html\">IAM credential report</a>, and returned by this operation. If users signed in during the affected time, the password last used date that is returned is the date the user last signed in before May 3, 2018. For users that signed in after May 23, 2018 14:08 PDT, the returned password last used date is accurate.</p> <p>You can use password last used information to identify unused credentials for deletion. For example, you might delete users who did not sign in to AWS in the last 90 days. In cases like this, we recommend that you adjust your evaluation window to include dates after May 23, 2018. Alternatively, if your users use access keys to access AWS programmatically you can refer to access key last used information because it is accurate for all dates. </p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6062:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6067:credentials you want information about. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6071:credentials for all services.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6075:CredentialsResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6078:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6079:CredentialsListType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6080:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6928:CredentialRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6930:CredentialId"],
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6934:credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6936:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6937:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6938:credential.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6942:CredentialResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6945:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6946:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:6947:credential, including the new password.</p> <important> <p>This is the <b>only</b> time that you can access the password. You cannot recover the password later, but you can reset it again.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7389:credentials.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7397:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7404:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7411:credential were created.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7415:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7419:credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in <code>jane-at-123456789012</code>, for example. This value cannot be configured by the user.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7423:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7425:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7426:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7427:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7431:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7435:credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7438:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7440:CredentialMetadata":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7447:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7453:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7457:credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7461:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7465:credential were created.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7467:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7468:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7469:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7473:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7476:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7478:CredentialsListType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7480:CredentialMetadata"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7509:credentials_temp_enable-regions.html\">Activating and deactivating STS in an AWS region</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:7554:credentials.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8214:credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM roles</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8290:CredentialRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8293:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8299:credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8301:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8302:CredentialId",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8303:credential.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8307:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8482:credential-reports.html\">Credential reports</a> topic in the <i>IAM User Guide</i>. If a password is used more than once in a five-minute span, only the first use is returned in this field. If the field is null (no value), then it indicates that they never signed in with a password. This can be because:</p> <ul> <li> <p>The user never had a password.</p> </li> <li> <p>A password exists but has not been used since IAM started tracking this information on October 20, 2014.</p> </li> </ul> <p>A null value does not mean that the user <i>never</i> had a password. Also, if the user does not currently have a password but had one in the past, then this field contains the date and time the most recent password was used.</p> <p>This value is returned only in the <a>GetUser</a> and <a>ListUsers</a> operations. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8656:credentialReportExpiredExceptionMessage":{"type":"string"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8657:credentialReportNotPresentExceptionMessage":{"type":"string"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8658:credentialReportNotReadyExceptionMessage":{"type":"string"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:8992:CredentialId":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iam/2010-05-08/service-2.json:9118:credentials such as access keys, and permissions that control which AWS resources users and applications can access. For more information about IAM, see <a href=\"http://aws.amazon.com/iam/\">AWS Identity and Access Management (IAM)</a> and the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/\">AWS Identity and Access Management User Guide</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:778:credentials, an error message similar to the following one appears: </p> <p> <code>Provided identity: Principal: .... User: .... cannot be used for federation with Amazon Connect</code> </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:1212:credentials from the <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html\">CreateParticipantConnection</a> API in the Amazon Connect Participant Service.</p> <p>When a new chat contact is successfully created, clients must subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html\">CreateParticipantConnection</a> with WEBSOCKET and CONNECTION_CREDENTIALS. </p> <p>A 429 error occurs in two situations:</p> <ul> <li> <p>API rate limit is exceeded. API TPS throttling returns a <code>TooManyRequests</code> exception.</p> </li> <li> <p>The <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html\">quota for concurrent active chats</a> is exceeded. Active chat throttling returns a <code>LimitExceededException</code>.</p> </li> </ul> <p>For more information about chat, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/chat.html\">Chat</a> in the <i>Amazon Connect Administrator Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:1670:credentials of other users by changing their email address. This poses a security risk to your organization. They can change the email address of a user to the attacker's email address, and then reset the password through email. For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html\">Best Practices for Security Profiles</a> in the <i>Amazon Connect Administrator Guide</i>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:2623:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:2643:credentials to use for federation.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:3567:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:3568:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:3569:credentials to use for federation.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connect/2017-08-08/service-2.json:7555:credentials was found in the Amazon Connect instance.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sso-oidc/2019-06-10/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso-oidc/2019-06-10/service-2.json:37:credentials for the assigned roles in the AWS account.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:181:credentials_temp_enable-regions.html\">Activating and deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> <p>File gateway does not support creating hard or symbolic links on a file share.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:195:credentials_temp_enable-regions.html\">Activating and deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> <p>File gateways don't support creating hard or symbolic links on a file share.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:311:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:312:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:317:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:318:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:323:credentials for a specified iSCSI target and initiator pair. This operation is supported in volume and tape gateway types.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:493:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:494:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:499:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:500:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:505:credentials information for a specified iSCSI target, one for each target-initiator pair. This operation is supported in the volume and tape gateway types.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1009:credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1109:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1110:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1115:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1116:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1121:credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it. This operation is supported in the volume and tape gateway types.</p> <important> <p>When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1205:credentials_temp_enable-regions.html\">Activating and deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> <p>File gateways don't support creating hard or symbolic links on a file share.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1465:credential that has permission to access the root share D$ of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1469:credential.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:1804:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2459:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2475:CredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2477:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2770:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2781:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2784:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2785:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:2786:credentials. Each object in the array contains CHAP credential information for one target-initiator pair. If no CHAP credentials are set, an empty array is returned. CHAP credential information is provided in a JSON object with the following fields:</p> <ul> <li> <p> <b>InitiatorName</b>: The iSCSI initiator that connects to the target.</p> </li> <li> <p> <b>SecretToAuthenticateInitiator</b>: The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> </li> <li> <p> <b>SecretToAuthenticateTarget</b>: The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> </li> <li> <p> <b>TargetARN</b>: The Amazon Resource Name (ARN) of the storage volume.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:3449:CredentialNotFound",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:5241:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:5266:CredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:5268:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:5292:credential that has permission to access the root share D$ of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/service-2.json:5296:credential.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:325:Credentials": [
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:341:credentials for a specified iSCSI target and initiator pair.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:342:credentials-1471375025612",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:343:credentials"
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:527:Credentials": [
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:533:Credentials": [
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:548:credentials information for a specified iSCSI target, one for each target-initiator pair.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:1252:Credentials": [
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:1270:credentials for a specified iSCSI target.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:1271:credentials-for-an-iscsi-target-1472151325795",
/opt/splunk/lib/python3.7/site-packages/botocore/data/storagegateway/2013-06-30/examples-1.json:1272:credentials for an iSCSI target"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:57:credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:72:credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:101:credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:115:credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:143:credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:354:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:358:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:362:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:366:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:436:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:440:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:444:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:588:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:592:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:596:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:634:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:638:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:642:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:646:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:732:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:736:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:740:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift-data/2019-12-20/service-2.json:744:credentials. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/workmail/2017-10-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/workmail/2017-10-01/service-2.json:2012:credentials supplied by WorkMail.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/docdb/2014-10-31/waiters-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/docdb/2014-10-31/waiters-2.json:82:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/docdb/2014-10-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/docdb/2014-10-31/service-2.json:4114:credentials for the instance.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:1571:credentials are passed in to your simulation job. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:1634:Credentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:2579:Credentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:4136:credentials are passed in to your simulation job. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:4240:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:4273:credentials are passed in to your simulation job. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/robomaker/2018-06-29/service-2.json:4572:Credentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/meteringmarketplace/2016-01-14/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/meteringmarketplace/2016-01-14/service-2.json:57:credentials from the EC2 instance, ECS task, or EKS pod.</p> <p>MeterUsage can optionally include multiple usage allocations, to provide customers with usage data split into buckets by tags that you define (or allow the customer to define).</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/kinesis-video-signaling/2019-12-04/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/kinesis-video-signaling/2019-12-04/service-2.json:89:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:791:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:975:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:1036:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:1090:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2042:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2099:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2145:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2256:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2301:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/firehose/2015-08-04/service-2.json:2339:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json:1623:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json:3281:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json:3583:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json:8647:credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>, provide the ID of the IAM certificate.</p> <p>If you specify an IAM certificate ID, you must also specify values for <code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2020-05-31/service-2.json:8672:credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>. You specify the location by setting a value in one of the following fields (not both):</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> </ul> </li> </ul> <p>All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use <code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use <code>CustomOriginConfig</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html\">Using HTTPS with CloudFront</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html\"> Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json:929:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json:1989:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json:2248:credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json:5407:credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>, provide the ID of the IAM certificate.</p> <p>If you specify an IAM certificate ID, you must also specify values for <code>MinimumProtocolVerison</code> and <code>SSLSupportMethod</code>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudfront/2019-03-26/service-2.json:5432:credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>. You specify the location by setting a value in one of the following fields (not both):</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> </ul> </li> </ul> <p>All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use <code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use <code>CustomOriginConfig</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html\">Using HTTPS with CloudFront</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html\"> Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/s3/2006-03-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/s3/2006-03-01/service-2.json:3133:CredentialsNotSupported</p> </li> <li> <p> <i>Description:</i> This request does not support credentials.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> CrossLocationLoggingProhibited</p> </li> <li> <p> <i>Description:</i> Cross-location logging not allowed. Buckets in one geographic location cannot log information to a bucket in another location.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> EntityTooSmall</p> </li> <li> <p> <i>Description:</i> Your proposed upload is smaller than the minimum allowed object size.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> EntityTooLarge</p> </li> <li> <p> <i>Description:</i> Your proposed upload exceeds the maximum allowed object size.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> ExpiredToken</p> </li> <li> <p> <i>Description:</i> The provided token has expired.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> IllegalVersioningConfigurationException </p> </li> <li> <p> <i>Description:</i> Indicates that the versioning configuration specified in the request is invalid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> IncompleteBody</p> </li> <li> <p> <i>Description:</i> You did not provide the number of bytes specified by the Content-Length HTTP header</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> IncorrectNumberOfFilesInPostRequest</p> </li> <li> <p> <i>Description:</i> POST requires exactly one file upload per request.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InlineDataTooLarge</p> </li> <li> <p> <i>Description:</i> Inline data exceeds the maximum allowed size.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InternalError</p> </li> <li> <p> <i>Description:</i> We encountered an internal error. Please try again.</p> </li> <li> <p> <i>HTTP Status Code:</i> 500 Internal Server Error</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Server</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidAccessKeyId</p> </li> <li> <p> <i>Description:</i> The AWS access key ID you provided does not exist in our records.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidAddressingHeader</p> </li> <li> <p> <i>Description:</i> You must specify the Anonymous role.</p> </li> <li> <p> <i>HTTP Status Code:</i> N/A</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidArgument</p> </li> <li> <p> <i>Description:</i> Invalid Argument</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidBucketName</p> </li> <li> <p> <i>Description:</i> The specified bucket is not valid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidBucketState</p> </li> <li> <p> <i>Description:</i> The request is not valid with the current state of the bucket.</p> </li> <li> <p> <i>HTTP Status Code:</i> 409 Conflict</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidDigest</p> </li> <li> <p> <i>Description:</i> The Content-MD5 you specified is not valid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidEncryptionAlgorithmError</p> </li> <li> <p> <i>Description:</i> The encryption request you specified is not valid. The valid value is AES256.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidLocationConstraint</p> </li> <li> <p> <i>Description:</i> The specified location constraint is not valid. For more information about Regions, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro\">How to Select a Region for Your Buckets</a>. </p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidObjectState</p> </li> <li> <p> <i>Description:</i> The action is not valid for the current state of the object.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidPart</p> </li> <li> <p> <i>Description:</i> One or more of the specified parts could not be found. The part might not have been uploaded, or the specified entity tag might not have matched the part's entity tag.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidPartOrder</p> </li> <li> <p> <i>Description:</i> The list of parts was not in ascending order. Parts list must be specified in order by part number.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidPayer</p> </li> <li> <p> <i>Description:</i> All access to this object has been disabled. Please contact AWS Support for further assistance.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidPolicyDocument</p> </li> <li> <p> <i>Description:</i> The content of the form does not meet the conditions specified in the policy document.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRange</p> </li> <li> <p> <i>Description:</i> The requested range cannot be satisfied.</p> </li> <li> <p> <i>HTTP Status Code:</i> 416 Requested Range Not Satisfiable</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Please use AWS4-HMAC-SHA256.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> SOAP requests must be made over an HTTPS connection.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Acceleration is not supported for buckets with non-DNS compliant names.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Acceleration is not supported for buckets with periods (.) in their names.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Accelerate endpoint only supports virtual style requests.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Accelerate is not configured on this bucket.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Accelerate is disabled on this bucket.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Acceleration is not supported on this bucket. Contact AWS Support for more information.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidRequest</p> </li> <li> <p> <i>Description:</i> Amazon S3 Transfer Acceleration cannot be enabled on this bucket. Contact AWS Support for more information.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>Code:</i> N/A</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidSecurity</p> </li> <li> <p> <i>Description:</i> The provided security credentials are not valid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidSOAPRequest</p> </li> <li> <p> <i>Description:</i> The SOAP request body is invalid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidStorageClass</p> </li> <li> <p> <i>Description:</i> The storage class you specified is not valid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidTargetBucketForLogging</p> </li> <li> <p> <i>Description:</i> The target bucket for logging does not exist, is not owned by you, or does not have the appropriate grants for the log-delivery group. </p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidToken</p> </li> <li> <p> <i>Description:</i> The provided token is malformed or otherwise invalid.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> InvalidURI</p> </li> <li> <p> <i>Description:</i> Couldn't parse the specified URI.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> KeyTooLongError</p> </li> <li> <p> <i>Description:</i> Your key is too long.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MalformedACLError</p> </li> <li> <p> <i>Description:</i> The XML you provided was not well-formed or did not validate against our published schema.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MalformedPOSTRequest </p> </li> <li> <p> <i>Description:</i> The body of your POST request is not well-formed multipart/form-data.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MalformedXML</p> </li> <li> <p> <i>Description:</i> This happens when the user sends malformed XML (XML that doesn't conform to the published XSD) for the configuration. The error message is, \"The XML you provided was not well-formed or did not validate against our published schema.\" </p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MaxMessageLengthExceeded</p> </li> <li> <p> <i>Description:</i> Your request was too big.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MaxPostPreDataLengthExceededError</p> </li> <li> <p> <i>Description:</i> Your POST request fields preceding the upload file were too large.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MetadataTooLarge</p> </li> <li> <p> <i>Description:</i> Your metadata headers exceed the maximum allowed metadata size.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MethodNotAllowed</p> </li> <li> <p> <i>Description:</i> The specified method is not allowed against this resource.</p> </li> <li> <p> <i>HTTP Status Code:</i> 405 Method Not Allowed</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MissingAttachment</p> </li> <li> <p> <i>Description:</i> A SOAP attachment was expected, but none were found.</p> </li> <li> <p> <i>HTTP Status Code:</i> N/A</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MissingContentLength</p> </li> <li> <p> <i>Description:</i> You must provide the Content-Length HTTP header.</p> </li> <li> <p> <i>HTTP Status Code:</i> 411 Length Required</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MissingRequestBodyError</p> </li> <li> <p> <i>Description:</i> This happens when the user sends an empty XML document as a request. The error message is, \"Request body is empty.\" </p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MissingSecurityElement</p> </li> <li> <p> <i>Description:</i> The SOAP 1.1 request is missing a security element.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> MissingSecurityHeader</p> </li> <li> <p> <i>Description:</i> Your request is missing a required header.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoLoggingStatusForKey</p> </li> <li> <p> <i>Description:</i> There is no such thing as a logging status subresource for a key.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchBucket</p> </li> <li> <p> <i>Description:</i> The specified bucket does not exist.</p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchBucketPolicy</p> </li> <li> <p> <i>Description:</i> The specified bucket does not have a bucket policy.</p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchKey</p> </li> <li> <p> <i>Description:</i> The specified key does not exist.</p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchLifecycleConfiguration</p> </li> <li> <p> <i>Description:</i> The lifecycle configuration does not exist. </p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchUpload</p> </li> <li> <p> <i>Description:</i> The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.</p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NoSuchVersion </p> </li> <li> <p> <i>Description:</i> Indicates that the version ID specified in the request does not match an existing version.</p> </li> <li> <p> <i>HTTP Status Code:</i> 404 Not Found</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NotImplemented</p> </li> <li> <p> <i>Description:</i> A header you provided implies functionality that is not implemented.</p> </li> <li> <p> <i>HTTP Status Code:</i> 501 Not Implemented</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Server</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> NotSignedUp</p> </li> <li> <p> <i>Description:</i> Your account is not signed up for the Amazon S3 service. You must sign up before you can use Amazon S3. You can sign up at the following URL: https://aws.amazon.com/s3</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> OperationAborted</p> </li> <li> <p> <i>Description:</i> A conflicting conditional action is currently in progress against this resource. Try again.</p> </li> <li> <p> <i>HTTP Status Code:</i> 409 Conflict</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> PermanentRedirect</p> </li> <li> <p> <i>Description:</i> The bucket you are attempting to access must be addressed using the specified endpoint. Send all future requests to this endpoint.</p> </li> <li> <p> <i>HTTP Status Code:</i> 301 Moved Permanently</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> PreconditionFailed</p> </li> <li> <p> <i>Description:</i> At least one of the preconditions you specified did not hold.</p> </li> <li> <p> <i>HTTP Status Code:</i> 412 Precondition Failed</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> Redirect</p> </li> <li> <p> <i>Description:</i> Temporary redirect.</p> </li> <li> <p> <i>HTTP Status Code:</i> 307 Moved Temporarily</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> RestoreAlreadyInProgress</p> </li> <li> <p> <i>Description:</i> Object restore is already in progress.</p> </li> <li> <p> <i>HTTP Status Code:</i> 409 Conflict</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> RequestIsNotMultiPartContent</p> </li> <li> <p> <i>Description:</i> Bucket POST must be of the enclosure-type multipart/form-data.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> RequestTimeout</p> </li> <li> <p> <i>Description:</i> Your socket connection to the server was not read from or written to within the timeout period.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> RequestTimeTooSkewed</p> </li> <li> <p> <i>Description:</i> The difference between the request time and the server's time is too large.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> RequestTorrentOfBucketError</p> </li> <li> <p> <i>Description:</i> Requesting the torrent file of a bucket is not permitted.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> SignatureDoesNotMatch</p> </li> <li> <p> <i>Description:</i> The request signature we calculated does not match the signature you provided. Check your AWS secret access key and signing method. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html\">REST Authentication</a> and <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html\">SOAP Authentication</a> for details.</p> </li> <li> <p> <i>HTTP Status Code:</i> 403 Forbidden</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> ServiceUnavailable</p> </li> <li> <p> <i>Description:</i> Reduce your request rate.</p> </li> <li> <p> <i>HTTP Status Code:</i> 503 Service Unavailable</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Server</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> SlowDown</p> </li> <li> <p> <i>Description:</i> Reduce your request rate.</p> </li> <li> <p> <i>HTTP Status Code:</i> 503 Slow Down</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Server</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> TemporaryRedirect</p> </li> <li> <p> <i>Description:</i> You are being redirected to the bucket while DNS updates.</p> </li> <li> <p> <i>HTTP Status Code:</i> 307 Moved Temporarily</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> TokenRefreshRequired</p> </li> <li> <p> <i>Description:</i> The provided token must be refreshed.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> TooManyBuckets</p> </li> <li> <p> <i>Description:</i> You have attempted to create more buckets than allowed.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> UnexpectedContent</p> </li> <li> <p> <i>Description:</i> This request does not support content.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> UnresolvableGrantByEmailAddress</p> </li> <li> <p> <i>Description:</i> The email address you provided does not match any account on record.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> <li> <ul> <li> <p> <i>Code:</i> UserKeyMustBeSpecified</p> </li> <li> <p> <i>Description:</i> The bucket POST must contain the specified field name. If it is specified, check the order of the fields.</p> </li> <li> <p> <i>HTTP Status Code:</i> 400 Bad Request</p> </li> <li> <p> <i>SOAP Fault Code Prefix:</i> Client</p> </li> </ul> </li> </ul> <p/>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:33:credentials that you can use to access AWS resources that you might not normally have access to. These temporary credentials consist of an access key ID, a secret access key, and a security token. Typically, you use <code>AssumeRole</code> within your account or for cross-account access. For a comparison of <code>AssumeRole</code> with other API operations that produce temporary credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html\">Requesting Temporary Security Credentials</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison\">Comparing the AWS STS API operations</a> in the <i>IAM User Guide</i>.</p> <p> <b>Permissions</b> </p> <p>The temporary security credentials created by <code>AssumeRole</code> can be used to make API calls to any AWS service with the following exception: You cannot call the AWS STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API operations.</p> <p>(Optional) You can pass inline or managed <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">session policies</a> to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policies to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p> <p>To assume a role from a different account, your AWS account must be trusted by the role. The trust relationship is defined in the role's trust policy when the role is created. That trust policy states which accounts are allowed to delegate that access to users in the account. </p> <p>A user who wants to access a role in a different account must also have permissions that are delegated from the user account administrator. The administrator must attach a policy that allows the user to call <code>AssumeRole</code> for the ARN of the role in the other account. If the user is in the same account as the role, then you can do either of the following:</p> <ul> <li> <p>Attach a policy to the user (identical to the previous user in a different account).</p> </li> <li> <p>Add the user as a principal directly in the role's trust policy.</p> </li> </ul> <p>In this case, the trust policy acts as an IAM resource-based policy. Users in the same account as the role do not need explicit permission to assume the role. For more information about trust policies and resource-based policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html\">IAM Policies</a> in the <i>IAM User Guide</i>.</p> <p> <b>Tags</b> </p> <p>(Optional) You can pass tag key-value pairs to your session. These tags are called session tags. For more information about session tags, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html\">Passing Session Tags in STS</a> in the <i>IAM User Guide</i>.</p> <p>An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html\">Tutorial: Using Tags for Attribute-Based Access Control</a> in the <i>IAM User Guide</i>.</p> <p>You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining\">Chaining Roles with Session Tags</a> in the <i>IAM User Guide</i>.</p> <p> <b>Using MFA with AssumeRole</b> </p> <p>(Optional) You can include multi-factor authentication (MFA) information when you call <code>AssumeRole</code>. This is useful for cross-account scenarios to ensure that the user that assumes the role has been authenticated with an AWS MFA device. In that scenario, the trust policy of the role being assumed includes a condition that tests for MFA authentication. If the caller does not include valid MFA information, the request to assume the role is denied. The condition in a trust policy that tests for MFA authentication might look like the following example.</p> <p> <code>\"Condition\": {\"Bool\": {\"aws:MultiFactorAuthPresent\": true}}</code> </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html\">Configuring MFA-Protected API Access</a> in the <i>IAM User Guide</i> guide.</p> <p>To use MFA with <code>AssumeRole</code>, you pass values for the <code>SerialNumber</code> and <code>TokenCode</code> parameters. The <code>SerialNumber</code> value identifies the user's hardware or virtual MFA device. The <code>TokenCode</code> is the time-based one-time password (TOTP) that the MFA device produces. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:54:credentials for users who have been authenticated via a SAML authentication response. This operation provides a mechanism for tying an enterprise identity store or directory to role-based AWS access without user-specific credentials or configuration. For a comparison of <code>AssumeRoleWithSAML</code> with the other API operations that produce temporary credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html\">Requesting Temporary Security Credentials</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison\">Comparing the AWS STS API operations</a> in the <i>IAM User Guide</i>.</p> <p>The temporary security credentials returned by this operation consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS services.</p> <p> <b>Session Duration</b> </p> <p>By default, the temporary security credentials created by <code>AssumeRoleWithSAML</code> last for one hour. However, you can use the optional <code>DurationSeconds</code> parameter to specify the duration of your session. Your role session lasts for the duration that you specify, or until the time specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value, whichever is shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session\">View the Maximum Session Duration Setting for a Role</a> in the <i>IAM User Guide</i>. The maximum session duration limit applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM Roles</a> in the <i>IAM User Guide</i>.</p> <note> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining\">Role chaining</a> limits your AWS CLI or AWS API role session to a maximum of one hour. When you use the <code>AssumeRole</code> API operation to assume a role, you can specify the duration of your role session with the <code>DurationSeconds</code> parameter. You can specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum session duration setting for your role. However, if you assume a role using role chaining and provide a <code>DurationSeconds</code> parameter value greater than one hour, the operation fails.</p> </note> <p> <b>Permissions</b> </p> <p>The temporary security credentials created by <code>AssumeRoleWithSAML</code> can be used to make API calls to any AWS service with the following exception: you cannot call the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API operations.</p> <p>(Optional) You can pass inline or managed <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">session policies</a> to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policies to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p> <p>Calling <code>AssumeRoleWithSAML</code> does not require the use of AWS security credentials. The identity of the caller is validated by using keys in the metadata document that is uploaded for the SAML provider entity for your identity provider. </p> <important> <p>Calling <code>AssumeRoleWithSAML</code> can result in an entry in your AWS CloudTrail logs. The entry includes the value in the <code>NameID</code> element of the SAML assertion. We recommend that you use a <code>NameIDType</code> that is not associated with any personally identifiable information (PII). For example, you could instead use the persistent identifier (<code>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</code>).</p> </important> <p> <b>Tags</b> </p> <p>(Optional) You can configure your IdP to pass attributes into your SAML assertion as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html\">Passing Session Tags in STS</a> in the <i>IAM User Guide</i>.</p> <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length\">IAM and STS Character Limits</a> in the <i>IAM User Guide</i>.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note> <p>You can pass a session tag with the same key as a tag that is attached to the role. When you do, session tags override the role's tags with the same key.</p> <p>An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html\">Tutorial: Using Tags for Attribute-Based Access Control</a> in the <i>IAM User Guide</i>.</p> <p>You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining\">Chaining Roles with Session Tags</a> in the <i>IAM User Guide</i>.</p> <p> <b>SAML Configuration</b> </p> <p>Before your application can call <code>AssumeRoleWithSAML</code>, you must configure your SAML identity provider (IdP) to issue the claims required by AWS. Additionally, you must use AWS Identity and Access Management (IAM) to create a SAML provider entity in your AWS account that represents your identity provider. You must also create an IAM role that specifies this SAML provider in its trust policy. </p> <p>For more information, see the following resources:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html\">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html\">Creating SAML Identity Providers</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html\">Configuring a Relying Party and Claims</a> in the <i>IAM User Guide</i>. </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html\">Creating a Role for SAML 2.0 Federation</a> in the <i>IAM User Guide</i>. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:76:credentials for users who have been authenticated in a mobile or web application with a web identity provider. Example providers include Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible identity provider.</p> <note> <p>For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the <a href=\"http://aws.amazon.com/sdkforios/\">AWS SDK for iOS Developer Guide</a> and the <a href=\"http://aws.amazon.com/sdkforandroid/\">AWS SDK for Android Developer Guide</a> to uniquely identify a user. You can also supply the user with a consistent identity throughout the lifetime of an application.</p> <p>To learn more about Amazon Cognito, see <a href=\"https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840\">Amazon Cognito Overview</a> in <i>AWS SDK for Android Developer Guide</i> and <a href=\"https://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664\">Amazon Cognito Overview</a> in the <i>AWS SDK for iOS Developer Guide</i>.</p> </note> <p>Calling <code>AssumeRoleWithWebIdentity</code> does not require the use of AWS security credentials. Therefore, you can distribute an application (for example, on mobile devices) that requests temporary security credentials without including long-term AWS credentials in the application. You also don't need to deploy server-based proxy services that use long-term AWS credentials. Instead, the identity of the caller is validated by using a token from the web identity provider. For a comparison of <code>AssumeRoleWithWebIdentity</code> with the other API operations that produce temporary credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html\">Requesting Temporary Security Credentials</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison\">Comparing the AWS STS API operations</a> in the <i>IAM User Guide</i>.</p> <p>The temporary security credentials returned by this API consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS service API operations.</p> <p> <b>Session Duration</b> </p> <p>By default, the temporary security credentials created by <code>AssumeRoleWithWebIdentity</code> last for one hour. However, you can use the optional <code>DurationSeconds</code> parameter to specify the duration of your session. You can provide a value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session\">View the Maximum Session Duration Setting for a Role</a> in the <i>IAM User Guide</i>. The maximum session duration limit applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM Roles</a> in the <i>IAM User Guide</i>. </p> <p> <b>Permissions</b> </p> <p>The temporary security credentials created by <code>AssumeRoleWithWebIdentity</code> can be used to make API calls to any AWS service with the following exception: you cannot call the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API operations.</p> <p>(Optional) You can pass inline or managed <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">session policies</a> to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policies to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p> <p> <b>Tags</b> </p> <p>(Optional) You can configure your IdP to pass attributes into your web identity token as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html\">Passing Session Tags in STS</a> in the <i>IAM User Guide</i>.</p> <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length\">IAM and STS Character Limits</a> in the <i>IAM User Guide</i>.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note> <p>You can pass a session tag with the same key as a tag that is attached to the role. When you do, the session tag overrides the role tag with the same key.</p> <p>An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html\">Tutorial: Using Tags for Attribute-Based Access Control</a> in the <i>IAM User Guide</i>.</p> <p>You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining\">Chaining Roles with Session Tags</a> in the <i>IAM User Guide</i>.</p> <p> <b>Identities</b> </p> <p>Before your application can call <code>AssumeRoleWithWebIdentity</code>, you must have an identity token from a supported identity provider and create a role that the application can assume. The role that your application assumes must trust the identity provider that is associated with the identity token. In other words, the identity provider must be specified in the role's trust policy. </p> <important> <p>Calling <code>AssumeRoleWithWebIdentity</code> can result in an entry in your AWS CloudTrail logs. The entry includes the <a href=\"http://openid.net/specs/openid-connect-core-1_0.html#Claims\">Subject</a> of the provided web identity token. We recommend that you avoid using any personally identifiable information (PII) in this field. For example, you could instead use a GUID or a pairwise identifier, as <a href=\"http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes\">suggested in the OIDC specification</a>.</p> </important> <p>For more information about how to use web identity federation and the <code>AssumeRoleWithWebIdentity</code> API, see the following resources: </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html\">Using Web Identity Federation API Operations for Mobile Apps</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity\">Federation Through a Web-based Identity Provider</a>. </p> </li> <li> <p> <a href=\"https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/\"> Web Identity Federation Playground</a>. Walk through the process of authenticating through Login with Amazon, Facebook, or Google, getting temporary security credentials, and then using those credentials to make a request to AWS. </p> </li> <li> <p> <a href=\"http://aws.amazon.com/sdkforios/\">AWS SDK for iOS Developer Guide</a> and <a href=\"http://aws.amazon.com/sdkforandroid/\">AWS SDK for Android Developer Guide</a>. These toolkits contain sample apps that show how to invoke the identity providers. The toolkits then show how to use the information from these providers to get and use temporary security credentials. </p> </li> <li> <p> <a href=\"http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications\">Web Identity Federation with Mobile Applications</a>. This article discusses web identity federation and shows an example of how to use web identity federation to get access to content in Amazon S3. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:105:credentials_access-keys.html\">Managing Access Keys for IAM Users</a> in the <i>IAM User Guide</i>.</p> <p>When you pass an access key ID to this operation, it returns the ID of the AWS account to which the keys belong. Access key IDs beginning with <code>AKIA</code> are long-term credentials for an IAM user or the AWS account root user. Access key IDs beginning with <code>ASIA</code> are temporary credentials that are created using STS operations. If the account in the response belongs to you, you can sign in as the root user and review your root user access keys. Then, you can pull a <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html\">credentials report</a> to learn which IAM user owns the keys. To learn who requested the temporary credentials for an <code>ASIA</code> access key, view the STS events in your <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html\">CloudTrail logs</a> in the <i>IAM User Guide</i>.</p> <p>This operation does not indicate the state of the access key. The key might be active, inactive, or deleted. Active keys might not have permissions to perform an operation. Providing a deleted access key might return an error that the key doesn't exist.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:118:credentials are used to call the operation.</p> <note> <p>No permissions are required to perform this operation. If an administrator adds a policy to your IAM user or role that explicitly denies access to the <code>sts:GetCallerIdentity</code> action, you can still perform this operation. Permissions are not required because the same information is returned when an IAM user or role is denied access. To view an example response, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa\">I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:136:credentials (consisting of an access key ID, a secret access key, and a security token) for a federated user. A typical use is in a proxy application that gets temporary security credentials on behalf of distributed applications inside a corporate network. You must call the <code>GetFederationToken</code> operation using the long-term security credentials of an IAM user. As a result, this call is appropriate in contexts where those credentials can be safely stored, usually in a server-based application. For a comparison of <code>GetFederationToken</code> with the other API operations that produce temporary credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html\">Requesting Temporary Security Credentials</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison\">Comparing the AWS STS API operations</a> in the <i>IAM User Guide</i>.</p> <note> <p>You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use <a href=\"http://aws.amazon.com/cognito/\">Amazon Cognito</a> or <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity\">Federation Through a Web-based Identity Provider</a> in the <i>IAM User Guide</i>.</p> </note> <p>You can also call <code>GetFederationToken</code> using the security credentials of an AWS account root user, but we do not recommend it. Instead, we recommend that you create an IAM user for the purpose of the proxy application. Then attach a policy to the IAM user that limits federated users to only the actions and resources that they need to access. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html\">IAM Best Practices</a> in the <i>IAM User Guide</i>. </p> <p> <b>Session duration</b> </p> <p>The temporary credentials are valid for the specified duration, from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is 43,200 seconds (12 hours). Temporary credentials that are obtained by using AWS account root user credentials have a maximum duration of 3,600 seconds (1 hour).</p> <p> <b>Permissions</b> </p> <p>You can use the temporary credentials created by <code>GetFederationToken</code> in any AWS service except the following:</p> <ul> <li> <p>You cannot call any IAM operations using the AWS CLI or the AWS API. </p> </li> <li> <p>You cannot call any STS operations except <code>GetCallerIdentity</code>.</p> </li> </ul> <p>You must pass an inline or managed <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">session policy</a> to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policies to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters.</p> <p>Though the session policy parameters are optional, if you do not pass a policy, then the resulting federated user session has no permissions. When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>. For information about using <code>GetFederationToken</code> to create temporary security credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken\">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p> <p>You can use the credentials to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the <code>Principal</code> element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions granted by the session policies.</p> <p> <b>Tags</b> </p> <p>(Optional) You can pass tag key-value pairs to your session. These are called session tags. For more information about session tags, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html\">Passing Session Tags in STS</a> in the <i>IAM User Guide</i>.</p> <note> <p>You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use <a href=\"http://aws.amazon.com/cognito/\">Amazon Cognito</a> or <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity\">Federation Through a Web-based Identity Provider</a> in the <i>IAM User Guide</i>.</p> </note> <p>You can also call <code>GetFederationToken</code> using the security credentials of an AWS account root user, but we do not recommend it. Instead, we recommend that you create an IAM user for the purpose of the proxy application. Then attach a policy to the IAM user that limits federated users to only the actions and resources that they need to access. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html\">IAM Best Practices</a> in the <i>IAM User Guide</i>. </p> <p> <b>Session duration</b> </p> <p>The temporary credentials are valid for the specified duration, from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is 43,200 seconds (12 hours). Temporary credentials that are obtained by using AWS account root user credentials have a maximum duration of 3,600 seconds (1 hour).</p> <p> <b>Permissions</b> </p> <p>You can use the temporary credentials created by <code>GetFederationToken</code> in any AWS service except the following:</p> <ul> <li> <p>You cannot call any IAM operations using the AWS CLI or the AWS API. </p> </li> <li> <p>You cannot call any STS operations except <code>GetCallerIdentity</code>.</p> </li> </ul> <p>You must pass an inline or managed <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">session policy</a> to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policies to use as managed session policies. The plain text that you use for both inline and managed session policies can't exceed 2,048 characters.</p> <p>Though the session policy parameters are optional, if you do not pass a policy, then the resulting federated user session has no permissions. When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>. For information about using <code>GetFederationToken</code> to create temporary security credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken\">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p> <p>You can use the credentials to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the <code>Principal</code> element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions granted by the session policies.</p> <p> <b>Tags</b> </p> <p>(Optional) You can pass tag key-value pairs to your session. These are called session tags. For more information about session tags, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html\">Passing Session Tags in STS</a> in the <i>IAM User Guide</i>.</p> <p>An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html\">Tutorial: Using Tags for Attribute-Based Access Control</a> in the <i>IAM User Guide</i>.</p> <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume that the user that you are federating has the <code>Department</code>=<code>Marketing</code> tag and you pass the <code>department</code>=<code>engineering</code> session tag. <code>Department</code> and <code>department</code> are not saved as separate tags, and the session tag passed in the request takes precedence over the user tag.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:152:credentials for an AWS account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use <code>GetSessionToken</code> if you want to use MFA to protect programmatic calls to specific AWS API operations like Amazon EC2 <code>StopInstances</code>. MFA-enabled IAM users would need to call <code>GetSessionToken</code> and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that are returned from the call, IAM users can then make programmatic calls to API operations that require MFA authentication. If you do not supply a correct MFA code, then the API returns an access denied error. For a comparison of <code>GetSessionToken</code> with the other API operations that produce temporary credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html\">Requesting Temporary Security Credentials</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison\">Comparing the AWS STS API operations</a> in the <i>IAM User Guide</i>.</p> <p> <b>Session Duration</b> </p> <p>The <code>GetSessionToken</code> operation must be called by using the long-term AWS security credentials of the AWS account root user or an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour. </p> <p> <b>Permissions</b> </p> <p>The temporary security credentials created by <code>GetSessionToken</code> can be used to make API calls to any AWS service with the following exceptions:</p> <ul> <li> <p>You cannot call any IAM API operations unless MFA authentication information is included in the request.</p> </li> <li> <p>You cannot call any STS API <i>except</i> <code>AssumeRole</code> or <code>GetCallerIdentity</code>.</p> </li> </ul> <note> <p>We recommend that you do not call <code>GetSessionToken</code> with AWS account root user credentials. Instead, follow our <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users\">best practices</a> by creating one or more IAM users, giving them the necessary permissions, and using IAM users for everyday interaction with AWS. </p> </note> <p>The credentials that are returned by <code>GetSessionToken</code> are based on permissions associated with the user whose credentials were used to call the operation. If <code>GetSessionToken</code> is called using AWS account root user credentials, the temporary credentials have root user permissions. Similarly, if <code>GetSessionToken</code> is called using the credentials of an IAM user, the temporary credentials have the same permissions as the IAM user. </p> <p>For more information about using <code>GetSessionToken</code> to create temporary credentials, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken\">Temporary Credentials for Users in Untrusted Environments</a> in the <i>IAM User Guide</i>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:169:credentials will expose the role session name to the external account in their AWS CloudTrail logs.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:173:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:177:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p> <p>The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:181:credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html\">Creating a URL that Enables Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:185:credentials to perform this operation, the new session inherits any transitive session tags from the calling session. If you pass a session tag with the same key as an inherited tag, the operation fails. To view the inherited tags for a session, see the AWS CloudTrail logs. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/session-tags.html#id_session-tags_ctlogs\">Viewing Session Tags in CloudTrail</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:205:credentials_temp_control-access_monitor.html\">Monitor and control actions taken with assumed roles</a> in the <i>IAM User Guide</i>.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-. You cannot use a value that begins with the text <code>aws:</code>. This prefix is reserved for AWS internal use.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:212:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:213:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:214:credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <note> <p>The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:218:credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified when you called <code>AssumeRole</code>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:226:credentials_temp_control-access_monitor.html\">Monitor and control actions taken with assumed roles</a> in the <i>IAM User Guide</i>.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:229:credentials that can be used to make AWS requests. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:253:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:257:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>. </p> <p>The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:261:credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html\">Creating a URL that Enables Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:268:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:269:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:270:credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <note> <p>The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:274:credentials that the operation returns.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:302:credentials_temp_control-access_monitor.html\">Monitor and control actions taken with assumed roles</a> in the <i>IAM User Guide</i>.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:305:credentials that can be used to make AWS requests. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:321:credentials that your application will use are associated with that user. This session name is included as part of the ARN and assumed role ID in the <code>AssumedRoleUser</code> response element.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:333:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:337:credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent AWS API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session\">Session Policies</a> in the <i>IAM User Guide</i>.</p> <p>The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:341:credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html\">Creating a URL that Enables Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:348:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:349:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:350:credentials, which include an access key ID, a secret access key, and a security token.</p> <note> <p>The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:358:credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified when you called <code>AssumeRole</code>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:374:credentials_temp_control-access_monitor.html\">Monitor and control actions taken with assumed roles</a> in the <i>IAM User Guide</i>.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:377:credentials that can be used to make AWS requests. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:392:credentials that are returned from the <a>AssumeRole</a> action. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:395:credentials that the operation returns.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:398:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:409:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:417:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:421:credentials expire.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:424:credentials for API authentication.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:468:credentials, similar to the unique ID of an IAM user.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:472:credentials. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:475:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:525:credentials (such as <code>Bob</code>). For example, you can reference the federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:529:credentials can be used to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the <code>Principal</code> element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions that are granted by the session policies.</p> <p>The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. The JSON policy characters can be any ASCII character from the space character to the end of the valid character list (\\u0020 through \\u00FF). It can also include the tab (\\u0009), linefeed (\\u000A), and carriage return (\\u000D) characters.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:533:credentials can be used to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the <code>Principal</code> element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions that are granted by the session policies.</p> <note> <p>An AWS conversion compresses the passed session policies and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The <code>PackedPolicySize</code> response element indicates by percentage how close the policies and tags for your request are to the upper size limit. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:537:credentials are restricted to a maximum of 3,600 seconds (one hour). If the specified duration is longer than one hour, the session obtained by using root user credentials defaults to one hour.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:548:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:549:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:550:credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <note> <p>The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:554:credentials (such as <code>arn:aws:sts::123456789012:federated-user/Bob</code> or <code>123456789012:Bob</code>). You can use the federated user's ARN in your resource-based policies, such as an Amazon S3 bucket policy. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:561:credentials that can be used to make AWS requests. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:568:credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for AWS account owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer than one hour, the session for AWS account owners defaults to one hour.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:572:credentials. </p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:576:credentials. A user who fails to provide the code receives an \"access denied\" response when requesting resources that require MFA authentication.</p> <p>The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:583:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:584:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:585:credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <note> <p>The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:588:credentials that can be used to make AWS requests. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:662:credentials_temp_enable-regions.html\">IAM and STS Entity Character Limits</a> in the <i>IAM User Guide</i>.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:685:credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html\">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/service-2.json:859:credentials for AWS Identity and Access Management (IAM) users or for users that you authenticate (federated users). This guide provides descriptions of the STS API. For more information about using this service, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html\">Temporary Security Credentials</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:18:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:52:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:107:credentials for a user named Alice in the AWS account 123456789012.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:125:credentials created by AssumeRole. The name of the assumed role is my-role-name, and the RoleSessionName is set to my-role-session-name.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:143:credentials created by using GetFederationToken. The Name parameter is set to my-federated-user-name.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:156:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:175:credentials-for-a-role-by-using-getfederationtoken-1480540749900",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:176:credentials for a role by using GetFederationToken"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:187:Credentials": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:201:credentials-for-an-iam-user-or-an-aws-account-1480540814038",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sts/2011-06-15/examples-1.json:202:credentials for an IAM user or an AWS account"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/support/2013-04-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/support/2013-04-15/service-2.json:549:credentials in an HTTP POST method or use the <a href=\"http://aws.amazon.com/tools/\">AWS SDKs</a>. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:16:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:17:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:20:credentials"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:22:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:23:CredentialsResponse"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:30:credentials for a given role name that is assigned to the user.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:120:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:148:CredentialsResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:151:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:152:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:153:credentials for the role that is assigned to the user.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:277:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:282:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:286:credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"                                                                    
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:290:credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:294:credentials expire.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sso/2019-06-10/service-2.json:297:credentials that are assigned to the user.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/transfer/2018-11-05/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/transfer/2018-11-05/service-2.json:547:credentials within the AWS Transfer Family service. Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to Active Directory groups in AWS Managed Active Directory or Microsoft Active Directory in your on-premises environment or in AWS using AD Connectors. This option also requires you to provide a Directory ID using the <code>IdentityProviderDetails</code> parameter. Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call for authentication using the <code>IdentityProviderDetails</code> parameter.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/transfer/2018-11-05/service-2.json:798:credentials to use the AWS Transfer Family service and perform file transfer tasks.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/transfer/2018-11-05/service-2.json:915:credentials within the service. A value of <code>API_GATEWAY</code> indicates that you have integrated an API Gateway endpoint that will be invoked for authenticating your user into the service.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:115:credential).</p> <p> <b>Note:</b> This API is deprecated. Please use <a>AttachPolicy</a> instead.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:2652:CredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax\">AmazonCognito Identity format</a>.</p> <p> <b>Note:</b> This API is deprecated. Please use <a>ListAttachedPolicies</a> instead.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:6922:credentialDurationSeconds":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:6923:CredentialDurationSeconds",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:6924:credentials will be valid.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:7265:CredentialDurationSeconds":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:8420:CredentialProvider</code> - Returns an AWS IoT credentials provider API endpoint.</p> </li> </ul> <ul> <li> <p> <code>iot:Jobs</code> - Returns an AWS IoT device management Jobs API endpoint.</p> </li> </ul> <p>We strongly recommend that customers use the newer <code>iot:Data-ATS</code> endpoint type to avoid issues related to the widespread distrust of Symantec certificate authorities.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:9461:CredentialProvider</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:14808:credentialDurationSeconds":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:14809:CredentialDurationSeconds",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:14810:credential is valid.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:15152:CREDENTIAL_PROVIDER",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:16050:credentials are refreshed.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:17394:credentialDurationSeconds":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:17395:CredentialDurationSeconds",
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:17396:credential will be valid.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iot/2015-05-28/service-2.json:17943:credentials to authenticate devices.</p> <p>The service endpoints that expose this API are listed in <a href=\"https://docs.aws.amazon.com/general/latest/gr/iot-core.html\">AWS IoT Core Endpoints and Quotas</a>. You must use the endpoint for the region that has the resources you want to access.</p> <p>The service name used by <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">AWS Signature Version 4</a> to sign the request is: <i>execute-api</i>.</p> <p>For more information about how AWS IoT works, see the <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html\">Developer Guide</a>.</p> <p>For information about how to use the credentials provider for AWS IoT, see <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html\">Authorizing Direct Calls to AWS Services</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:34:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:40:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:77:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:81:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:123:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:127:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:173:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:207:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:237:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:245:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:275:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:283:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:309:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:317:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:351:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:359:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:391:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:397:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:431:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:443:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:470:credentials couldn't be validated.</p>n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:478:credentials and then retry your request.</p>n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:520:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:524:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:554:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:558:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:584:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:592:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:630:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:638:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:663:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:671:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:705:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:729:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:735:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:799:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:807:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:901:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:909:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:935:credentials couldn't be validated.</p>\n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:943:credentials and then retry your request.</p>\n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:985:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:993:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1019:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1027:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1061:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1069:credentials and then retry your request.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1103:credentials couldn't be validated.</p>\n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1111:credentials and then retry your request.</p>\n            "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1150:credentials couldn't be validated.</p>\n         "
/opt/splunk/lib/python3.7/site-packages/botocore/data/kafka/2018-11-14/service-2.json:1156:credentials and then retry your request.</p>\n         "
 /opt/splunk/lib/python3.7/site-packages/botocore/data/lightsail/2016-11-28/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/lightsail/2016-11-28/service-2.json:269:credentials that you can use to log in to the Docker process on your local machine. After you're logged in, you can use the native Docker commands to push your local container images to the container image registry of your Amazon Lightsail account so that you can use them with your Lightsail container service. The log in credentials expire 12 hours after they are created, at which point you will need to create a new set of log in credentials.</p> <note> <p>You can only push container images to the container service registry of your Lightsail account. You cannot pull container images or perform any other container image management actions on the container service registry.</p> </note> <p>After you push your container images to the container image registry of your Lightsail account, use the <code>RegisterContainerImage</code> action to register the pushed images to a specific Lightsail container service.</p> <note> <p>This action is not required if you install and use the Lightsail Control (lightsailctl) plugin to push container images to your Lightsail container service. For more information, see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-pushing-container-images\">Pushing and managing container images on your Amazon Lightsail container services</a> in the <i>Lightsail Dev Guide</i>.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/lightsail/2016-11-28/service-2.json:2664:credentials to access a resource.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/lightsail/2016-11-28/service-2.json:3935:credentials expire 12 hours after they are created, at which point you will need to create a new set of log in credentials using the <code>CreateContainerServiceRegistryLogin</code> action.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloudtrail/2013-11-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudtrail/2013-11-01/service-2.json:718:credentials, this is the access key ID of the temporary credentials.</p>"                                                                                                                                            
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudtrail/2013-11-01/service-2.json:1344:credentials of an account that belongs to an organization.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/snowball/2016-06-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/snowball/2016-06-30/service-2.json:203:credentials of a given job, including its manifest file and unlock code, expire 360 days after the job is created.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/snowball/2016-06-30/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/snowball/2016-06-30/examples-1.json:270:credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/codeartifact/2018-09-22/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/codeartifact/2018-09-22/service-2.json:1470:credentials.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ecr/2015-09-21/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecr/2015-09-21/service-2.json:241:credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours.</p> <p>The <code>authorizationToken</code> returned is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>get-login-password</code> command that simplifies the login process. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth\">Registry Authentication</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2655:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2660:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2665:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2670:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2675:credentials, including the entity that issued the session.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2678:credentials. The credentials were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:2694:credentials for an AWS account other than your own account.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:3788:CREDENTIALS, PHONE_NUMBER, or ADDRESS.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4202:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4207:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4212:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4217:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4222:credentials, including the entity that issued the session.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4225:credentials. The credentials were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:4426:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6639:CREDENTIALS, for credentials data such as private keys or AWS secret keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as driver's license identification numbers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6660:CREDENTIALS",
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6722:credentials were issued, and whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6727:credentials that were issued to the entity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6730:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6738:credentials were issued.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6743:credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6746:credentials were issued to an entity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6754:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6759:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6764:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6769:credentials, such as Root, IAMUser, or Role.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6774:credentials were obtained from a root account that doesn't have an alias.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:6777:credentials that were issued to an entity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7448:credentials that were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7453:credentials for another AWS account, the details of that account.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7463:credentials that were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7468:credentials for an AWS Identity and Access Management (IAM) user, the name and other details about the user.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7473:credentials for your AWS account, the details of your account.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/macie2/2020-01-01/service-2.json:7502:credentials for your AWS account.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2007:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2009:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2010:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2130:Credentials" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2132:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2133:credentials are included in the CORS request. Supported only for HTTP APIs.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2197:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2199:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2200:credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2344:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2346:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2347:credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2491:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2493:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2494:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2554:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2556:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2557:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2611:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2613:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2614:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2844:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2846:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2847:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2942:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2944:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:2945:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:3039:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:3041:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:3042:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4689:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4691:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4692:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4992:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4994:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:4995:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:5978:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:5980:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:5981:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:6947:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:6949:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:6950:credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7094:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7096:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7097:credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7231:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7233:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7234:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7293:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7295:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7296:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7356:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7358:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7359:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7570:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7572:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7573:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7667:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7669:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7670:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7770:CredentialsArn" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7772:credentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigatewayv2/2018-11-29/service-2.json:7773:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json:94:credentials to use for authorization with an API destination HTTP endpoint.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json:1187:CREDENTIALS",
/opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json:3356:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json:3360:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/events/2015-10-07/service-2.json:3776::secret:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/opsworkscm/2016-11-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworkscm/2016-11-01/service-2.json:1121:credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks CM; they are returned only as part of the result of createServer(). </p> <p class=\"title\"> <b>Attributes returned in a createServer response for Chef</b> </p> <ul> <li> <p> <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.</p> </li> <li> <p> <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands.</p> </li> </ul> <p class=\"title\"> <b>Attributes returned in a createServer response for Puppet</b> </p> <ul> <li> <p> <code>PUPPET_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Puppet starter kit, including a README and a required private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents.</p> </li> <li> <p> <code>PUPPET_ADMIN_PASSWORD</code>: An administrator password that you can use to sign in to the Puppet Enterprise console after the server is online.</p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ecr-public/2020-10-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecr-public/2020-10-30/service-2.json:193:credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. This API requires the <code>ecr-public:GetAuthorizationToken</code> and <code>sts:GetServiceBearerToken</code> permissions.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:33:credentials couldn't be validated."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:42:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:96:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:128:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:157:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:182:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:211:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:240:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:266:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:292:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:321:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:350:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:379:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:405:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:434:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:460:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:489:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:518:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:547:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:579:credentials and then retry your request."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mq/2017-11-27/service-2.json:643:credentials and then retry your request."
 /opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage-vod/2018-11-07/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediapackage-vod/2018-11-07/service-2.json:726:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/datapipeline/2012-10-29/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/datapipeline/2012-10-29/service-2.json:121:credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions.</p> <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datapipeline/2012-10-29/service-2.json:183:credentials specified by the task runner.</p> <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue, <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datapipeline/2012-10-29/service-2.json:376:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datapipeline/2012-10-29/service-2.json:619:credentials, and that you haven't exceeded any of the service limits for your account.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/mobile/2017-07-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/mobile/2017-07-01/service-2.json:121:credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/mobile/2017-07-01/service-2.json:698:Credentials of the caller are insufficient to authorize the request. </p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:1566:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway device using the new configuration information returned with the new VPN connection ID.</p> <p>For certificate-based authentication, delete all AWS Certificate Manager (ACM) private certificates used for the AWS-side tunnel endpoints for the VPN connection before deleting the VPN connection.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:25519:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:25542:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:27728:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:27749:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:29606:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:34261:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-11-15/service-2.json:34300:credentials</code>: My instance is not accepting my credentials.</p> </li> <li> <p> <code>password-not-available</code>: A password is not available for my instance.</p> </li> <li> <p> <code>performance-network</code>: My instance is experiencing performance problems that I believe are network related.</p> </li> <li> <p> <code>performance-instance-store</code>: My instance is experiencing performance problems that I believe are related to the instance stores.</p> </li> <li> <p> <code>performance-ebs-volume</code>: My instance is experiencing performance problems that I believe are related to an EBS volume.</p> </li> <li> <p> <code>performance-other</code>: My instance is experiencing performance problems.</p> </li> <li> <p> <code>other</code>: [explain using the description parameter]</p> </li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-04-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-04-01/service-2.json:723:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-04-01/service-2.json:13491:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-04-01/service-2.json:13535:credentials</code>: My instance is not accepting my credentials.</p> </li> <li> <p> <code>password-not-available</code>: A password is not available for my instance.</p> </li> <li> <p> <code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p> </li> <li> <p> <code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p> </li> <li> <p> <code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p> </li> <li> <p> <code>performance-other</code>: My instance is experiencing performance problems.</p> </li> <li> <p> <code>other</code>: [explain using the description parameter]</p> </li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-04-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-04-15/service-2.json:731:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-04-15/service-2.json:11277:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-04-15/service-2.json:11321:credentials</code>: My instance is not accepting my credentials.</p></li> <li><p><code>password-not-available</code>: A password is not available for my instance.</p></li> <li><p><code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p></li> <li><p><code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p></li> <li><p><code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p></li> <li><p><code>performance-other</code>: My instance is experiencing performance problems.</p></li> <li><p><code>other</code>: [explain using the description parameter]</p></li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-09-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-09-15/service-2.json:733:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-09-15/service-2.json:13625:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2016-09-15/service-2.json:13669:credentials</code>: My instance is not accepting my credentials.</p> </li> <li> <p> <code>password-not-available</code>: A password is not available for my instance.</p> </li> <li> <p> <code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p> </li> <li> <p> <code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p> </li> <li> <p> <code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p> </li> <li> <p> <code>performance-other</code>: My instance is experiencing performance problems.</p> </li> <li> <p> <code>other</code>: [explain using the description parameter]</p> </li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-10-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-10-01/service-2.json:723:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-10-01/service-2.json:12970:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-10-01/service-2.json:13014:credentials</code>: My instance is not accepting my credentials.</p> </li> <li> <p><code>password-not-available</code>: A password is not available for my instance.</p> </li> <li> <p><code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p> </li> <li> <p><code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p> </li> <li> <p><code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p> </li> <li> <p><code>performance-other</code>: My instance is experiencing performance problems.</p> </li> <li> <p><code>other</code>: [explain using the description parameter]</p> </li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-09-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-09-01/service-2.json:635:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-09-01/service-2.json:8992:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-09-01/service-2.json:9035:credentials</code>: My instance is not accepting my credentials.</p></li> <li><p><code>password-not-available</code>: A password is not available for my instance.</p></li> <li><p><code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p></li> <li><p><code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p></li> <li><p><code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p></li> <li><p><code>performance-other</code>: My instance is experiencing performance problems.</p></li> <li><p><code>other</code>: [explain using the description parameter]</p></li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-03-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-03-01/service-2.json:656:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-03-01/service-2.json:9785:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2015-03-01/service-2.json:9828:credentials</code>: My instance is not accepting my credentials.</p></li> <li><p><code>password-not-available</code>: A password is not available for my instance.</p></li> <li><p><code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p></li> <li><p><code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p></li> <li><p><code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p></li> <li><p><code>performance-other</code>: My instance is experiencing performance problems.</p></li> <li><p><code>other</code>: [explain using the description parameter]</p></li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-10-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-10-01/service-2.json:646:credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-10-01/service-2.json:9324:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2/2014-10-01/service-2.json:9367:credentials</code>: My instance is not accepting my credentials.</p></li> <li><p><code>password-not-available</code>: A password is not available for my instance.</p></li> <li><p><code>performance-network</code>: My instance is experiencing performance problems which I believe are network related.</p></li> <li><p><code>performance-instance-store</code>: My instance is experiencing performance problems which I believe are related to the instance stores.</p></li> <li><p><code>performance-ebs-volume</code>: My instance is experiencing performance problems which I believe are related to an EBS volume.</p></li> <li><p><code>performance-other</code>: My instance is experiencing performance problems.</p></li> <li><p><code>other</code>: [explain using the description parameter]</p></li> </ul>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:51:credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the <code>KMSKeyId</code>. If you call an API that must encrypt or decrypt <code>SecretString</code> or <code>SecretBinary</code> using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.</p> </li> </ul> </note> <p> </p> <p> <b>Minimum permissions</b> </p> <p>To run this command, you must have the following permissions:</p> <ul> <li> <p>secretsmanager:CreateSecret</p> </li> <li> <p>kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account default AWS managed CMK for Secrets Manager.</p> </li> <li> <p>kms:Decrypt - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account default AWS managed CMK for Secrets Manager.</p> </li> <li> <p>secretsmanager:TagResource - needed only if you include the <code>Tags</code> parameter. </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p>To delete a secret, use <a>DeleteSecret</a>.</p> </li> <li> <p>To modify an existing secret, use <a>UpdateSecret</a>.</p> </li> <li> <p>To create a new version of a secret, use <a>PutSecretValue</a>.</p> </li> <li> <p>To retrieve the encrypted secure string and secure binary values, use <a>GetSecretValue</a>.</p> </li> <li> <p>To retrieve all other details for a secret, use <a>DescribeSecret</a>. This does not include the encrypted secure string and secure binary values.</p> </li> <li> <p>To retrieve the list of secret versions associated with the current secret, use <a>DescribeSecret</a> and examine the <code>SecretVersionsToStages</code> response value.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:211:credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the <code>KMSKeyId</code>. If you call an API that must encrypt or decrypt <code>SecretString</code> or <code>SecretBinary</code> using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.</p> </li> </ul> </note> <p> <b>Minimum permissions</b> </p> <p>To run this command, you must have the following permissions:</p> <ul> <li> <p>secretsmanager:PutSecretValue</p> </li> <li> <p>kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.</p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p>To retrieve the encrypted value you store in the version of a secret, use <a>GetSecretValue</a>.</p> </li> <li> <p>To create a secret, use <a>CreateSecret</a>.</p> </li> <li> <p>To get the details for a secret, use <a>DescribeSecret</a>.</p> </li> <li> <p>To list the versions attached to a secret, use <a>ListSecretVersionIds</a>.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:275:credentials on the protected service to match. After testing the new credentials, the function marks the new secret with the staging label <code>AWSCURRENT</code> so that your clients all immediately begin to use the new version. For more information about rotating secrets and how to configure a Lambda function to rotate the secrets for your protected service, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html\">Rotating Secrets in AWS Secrets Manager</a> in the <i>AWS Secrets Manager User Guide</i>.</p> <p>Secrets Manager schedules the next rotation when the previous one completes. Secrets Manager schedules the date by adding the rotation interval (number of days) to the actual date of the last rotation. The service chooses the hour within that 24-hour date window randomly. The minute is also chosen somewhat randomly, but weighted towards the top of the hour and influenced by a variety of factors that help distribute load.</p> <p>The rotation function must end with the versions of the secret in one of two states:</p> <ul> <li> <p>The <code>AWSPENDING</code> and <code>AWSCURRENT</code> staging labels are attached to the same version of the secret, or</p> </li> <li> <p>The <code>AWSPENDING</code> staging label is not attached to any version of the secret.</p> </li> </ul> <p>If the <code>AWSPENDING</code> staging label is present but not attached to the same version as <code>AWSCURRENT</code> then any later invocation of <code>RotateSecret</code> assumes that a previous rotation request is still in progress and returns an error.</p> <p> <b>Minimum permissions</b> </p> <p>To run this command, you must have the following permissions:</p> <ul> <li> <p>secretsmanager:RotateSecret</p> </li> <li> <p>lambda:InvokeFunction (on the function specified in the secret's metadata)</p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p>To list the secrets in your account, use <a>ListSecrets</a>.</p> </li> <li> <p>To get the details for a version of a secret, use <a>DescribeSecret</a>.</p> </li> <li> <p>To create a new version of a secret, use <a>CreateSecret</a>.</p> </li> <li> <p>To attach staging labels to or remove staging labels from a version of a secret, use <a>UpdateSecretVersionStage</a>.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:342:credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the <code>KMSKeyId</code>. If you call an API that must encrypt or decrypt <code>SecretString</code> or <code>SecretBinary</code> using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.</p> </li> </ul> </note> <p> <b>Minimum permissions</b> </p> <p>To run this command, you must have the following permissions:</p> <ul> <li> <p>secretsmanager:UpdateSecret</p> </li> <li> <p>kms:GenerateDataKey - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.</p> </li> <li> <p>kms:Decrypt - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.</p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p>To create a new secret, use <a>CreateSecret</a>.</p> </li> <li> <p>To add only a new version to an existing secret, use <a>PutSecretValue</a>.</p> </li> <li> <p>To get the details for a secret, use <a>DescribeSecret</a>.</p> </li> <li> <p>To list the versions contained in a secret, use <a>ListSecretVersionIds</a>.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:376: secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:442:credentials from the same account that owns the secret. If the secret resides in a different account, then you must create a custom CMK and specify the ARN in this field. </p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/service-2.json:1614:credentials from the same account that owns the secret. If the secret is in a different account, then you must create a custom CMK and provide the ARN of that CMK in this field. The user making the call must have permissions to both the secret and the CMK in their respective accounts.</p> </important>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:10::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:33::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:43:credentials stored in the encrypted secret value are retrieved from a file on disk named mycreds.json.",
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:54::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:75::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:96::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:165::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:187::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:214::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:255::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:266::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:296::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:318::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:342::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:366::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:435::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:454::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:470:CREDENTIALS}"
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:473::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:496::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:516::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/secretsmanager/2017-10-17/examples-1.json:537::secret:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:1865:credentials couldn't be validated. You might not be authorized to carry out the request. Make sure that your account is authorized to use the Amazon QuickSight service, that your policies have the correct permissions, and that you are using the correct access keys.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:2887:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:2888:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:2889:credentials QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:3479:CredentialPair":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:3496:credentials. The credentials are applied in tandem with the data source parameters when you copy a data source by using a create or update request. The API operation compares the <code>DataSourceParameters</code> structure that's in the request with the structures in the <code>AlternateDataSourceParameters</code> allow list. If the structures are an exact match, the request is allowed to use the new data source with the existing credentials. If the <code>AlternateDataSourceParameters</code> list is null, the <code>DataSourceParameters</code> originally used with these <code>Credentials</code> is automatically allowed.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:3499:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4047:credentials stored with this data source. The credentials are applied in tandem with the data source parameters when you copy a data source by using a create or update request. The API operation compares the <code>DataSourceParameters</code> structure that's in the request with the structures in the <code>AlternateDataSourceParameters</code> allow list. If the structures are an exact match, the request is allowed to use the credentials from this existing data source. If the <code>AlternateDataSourceParameters</code> list is null, the <code>Credentials</code> originally used with this <code>DataSourceParameters</code> are automatically allowed.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4064:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4067:CredentialPair":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4068:CredentialPair",
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4069:Credential pair. For more information, see <a>CredentialPair</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4073:credential pair that you want to use. When <code>CopySourceArn</code> is not null, the credential pair from the data source in the ARN is used as the credentials for the <code>DataSourceCredentials</code> structure.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:4076:credentials. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:10410:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:10411:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/quicksight/2018-04-01/service-2.json:10412:credentials that QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/autoscaling/2011-01-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/autoscaling/2011-01-01/service-2.json:2750:credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.</p> <p>If the state is <code>required</code>, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.</p>"                                                    
 /opt/splunk/lib/python3.7/site-packages/botocore/data/alexaforbusiness/2017-11-09/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/alexaforbusiness/2017-11-09/service-2.json:2897:CREDENTIALS_ACCESS_FAILURE",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:777:credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name and password, respectively.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:781:credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name and password, respectively.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:857:credentials of a member of the Backup Operators group to mount the share. Doing either enables the agent to access the data. For the agent to access directories, you must additionally enable all execute access.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:1172:credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name and password, respectively.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:2496:credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name and password, respectively.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:2500:credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name and password, respectively.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/datasync/2018-11-09/service-2.json:2523:credentials of a member of the Backup Operators group to mount the share. </p> </li> </ul> <p>Doing either of these options enables the agent to access the data. For the agent to access directories, you must also enable all execute access.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:194:credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:254:credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:357:credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:371:credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:624:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:645:credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:2154:Credentials is used, a long-running job can call <code>GetJobDetails</code> again to obtain new credentials.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:2441:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:2442:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:2443:credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifacts for the pipeline in AWS CodePipeline.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:3885:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:3886:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codepipeline/2015-07-09/service-2.json:3887:credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json:887:CREDENTIALS</code> - The table was archived due to the table's AWS KMS key being inaccessible for more than seven days. An On-Demand backup was created at the archival time.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json:4140:CREDENTIALS </code> - The AWS KMS key used to encrypt the table is inaccessible.</p> <note> <p>If the AWS KMS key remains inaccessible for more than 20 hours, DynamoDB will remove this replica from the replication group. The replica will not be deleted and replication will stop from and to this region.</p> </note> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json:4399:CREDENTIALS"
/opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json:4996:CREDENTIALS</code> - The AWS KMS key used to encrypt the table in inaccessible. Table operations may fail due to failure to use the AWS KMS key. DynamoDB will initiate the table archival process when a table's AWS KMS key remains inaccessible for more than seven days. </p> </li> <li> <p> <code>ARCHIVING</code> - The table is being archived. Operations are not allowed until archival is complete. </p> </li> <li> <p> <code>ARCHIVED</code> - The table has been archived. See the ArchivalReason for more information. </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/dynamodb/2012-08-10/service-2.json:5106:CREDENTIALS",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:15:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:246:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:385:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:442:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:500:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:547:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:588:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:639:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:708:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:777:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:794:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:810:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:837:-env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/elasticbeanstalk/2010-12-01/examples-1.json:888:-env:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/forecast/2018-06-26/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/forecast/2018-06-26/service-2.json:950:credentials to access the bucket.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/forecast/2018-06-26/service-2.json:961:credentials to access the data.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:856:credentials. For more details on dynamic references, see <a href=\"https://docs.aws.amazon.com/\">Using dynamic references to specify template values</a> in the <i>AWS CloudFormation User Guide</i>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:1447:credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:1503:credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:1604:credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:1832:credentials to make calls on your behalf.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:2490:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:2928:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:3974:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:4541:credentials to make calls on your behalf.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudformation/2010-05-15/service-2.json:6150:credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/es/2015-01-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/es/2015-01-01/service-2.json:807:Credentials for the master user: username and password, ARN, or both.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/es/2015-01-01/service-2.json:2941:Credentials for the master user: username and password, ARN, or both.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/waiters-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/waiters-2.json:82:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json:1812:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json:1816:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json:2882:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json:4835:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/neptune/2014-10-31/service-2.json:4839:CredentialPassword":{
 /opt/splunk/lib/python3.7/site-packages/botocore/data/logs/2014-03-28/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/logs/2014-03-28/service-2.json:61:credentials that have permission to write to the S3 bucket that you specify as the destination.</p> <p>This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html\">DescribeExportTasks</a> to get the status of the export task. Each account can only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To cancel an export task, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html\">CancelExportTask</a>.</p> <p>You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.</p> <p>Exporting to S3 buckets that are encrypted with AES-256 is supported. Exporting to S3 buckets encrypted with SSE-KMS is not supported. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:204:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:205:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:210:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:211:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:216:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:288:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:289:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:294:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:295:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:301:credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:460:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:461:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:466:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:467:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:471:CredentialsInfo</code> objects. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:1619:CredentialProviderType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:1728:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:1738:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2048:CredentialsType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2059:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2085:credentials. Set to <code>true</code> to overwrite the repository source credentials. The default value is <code>true</code>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2089:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2489:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2494:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2497:CredentialsInfos":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2498:CredentialsInfos",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2499:CredentialsInfo</code> objects. Each <code>SourceCredentialsInfo</code> object includes the authentication type, token ARN, and type of source provider for one set of credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2886:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2887:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2888:credentials for access to a private registry.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2890:CredentialsType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2891:CredentialsType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:2892:credentials AWS CodeBuild uses to pull images in your build. There are two valid values: </p> <ul> <li> <p> <code>CODEBUILD</code> specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal. </p> </li> <li> <p> <code>SERVICE_ROLE</code> specifies that AWS CodeBuild uses your build project's service role. </p> </li> </ul> <p> When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3054:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3057:credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3058:credentialProvider"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3061:credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3063:credentials created using AWS Secrets Manager. </p> <note> <p> The <code>credential</code> can use the name of the credentials only if they exist in your current AWS Region. </p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3065:credentialProvider":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3066:CredentialProviderType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3067:credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for AWS Secrets Manager. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3070:credentials that provide access to a private Docker registry. When this is set: </p> <ul> <li> <p> <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>. </p> </li> <li> <p> images cannot be curated or an Amazon ECR image.</p> </li> </ul> <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html\">Private Registry with AWS Secrets Manager Sample for AWS CodeBuild</a>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3511:CredentialsInfo":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3524:credentials. Valid options are OAUTH, BASIC_AUTH, or PERSONAL_ACCESS_TOKEN. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3527:credentials for a GitHub, GitHub Enterprise, or Bitbucket repository. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3529:CredentialsInfos":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3531:CredentialsInfo"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3657:CredentialOverride":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3658:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3659:Credential</code> object that overrides credentials for access to a private registry.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3661:CredentialsTypeOverride":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3662:CredentialsType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3663:credentials AWS CodeBuild uses to pull images in your batch build. There are two valid values: </p> <dl> <dt>CODEBUILD</dt> <dd> <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.</p> </dd> <dt>SERVICE_ROLE</dt> <dd> <p>Specifies that AWS CodeBuild uses your build project's service role. </p> </dd> </dl> <p>When using a cross-account or private registry image, you must use <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image, you must use <code>CODEBUILD</code> credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3800:CredentialOverride":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3801:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3802:credentials for access to a private registry. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3804:CredentialsTypeOverride":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3805:CredentialsType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/codebuild/2016-10-06/service-2.json:3806:credentials AWS CodeBuild uses to pull images in your build. There are two valid values: </p> <dl> <dt>CODEBUILD</dt> <dd> <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.</p> </dd> <dt>SERVICE_ROLE</dt> <dd> <p>Specifies that AWS CodeBuild uses your build project's service role. </p> </dd> </dl> <p>When using a cross-account or private registry image, you must use <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image, you must use <code>CODEBUILD</code> credentials. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/appsync/2017-07-25/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/appsync/2017-07-25/service-2.json:1584:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appsync/2017-07-25/service-2.json:1586:credentials with this data source.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appsync/2017-07-25/service-2.json:2467:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1424:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1425:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1426:credentials to use.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1462:credential data.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1470:$env:
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:1534:credential spec file when configuring a container for Active Directory authentication. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html\">Using gMSAs for Windows Containers</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>This parameter maps to <code>SecurityOpt</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--security-opt</code> option to <a href=\"https://docs.docker.com/engine/reference/run/#security-configuration\">docker run</a>.</p> <note> <p>The Amazon ECS container agent running on a container instance must register with the <code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code> environment variables before containers placed on that instance can use these security options. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html\">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note> <p>For more information about valid values, see <a href=\"https://docs.docker.com/engine/reference/run/#security-configuration\">Docker Run Security Configuration</a>. </p> <p>Valid values: \"no-new-privileges\" | \"apparmor:PROFILE\" | \"label:value\" | \"credentialspec:CredentialSpecFilePath\"</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:2881:credentialsParameter",
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:2885:credentialsParameter":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:2887:credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:4187:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:4189:credentialsParameter"],
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:4191:credentialsParameter":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:4193:credentials.</p> <note> <p>When you are using the Amazon ECS API, AWS CLI, or AWS SDK, if the secret exists in the same Region as the task that you are launching then you can use either the full ARN or the name of the secret. When you are using the AWS Management Console, you must specify the full ARN of the secret.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:4196:credentials for private registry authentication.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ecs/2014-11-13/service-2.json:5899:$env:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:1245:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:1246:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:1249:credentials?operation=delete",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:1252:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:1262:credentials used by your equipment to authenticate during call termination.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2691:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2692:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2695:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2698:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2699:CredentialsResponse"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2709:credentials for the specified Amazon Chime Voice Connector.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2974:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2975:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2978:credentials?operation=put",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2981:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:2991:credentials for the specified Amazon Chime Voice Connector.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5811:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5816:credentials, in US-ASCII format.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5820:credentials, in US-ASCII format.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5823:credentials used to authenticate requests to your Amazon Chime Voice Connector.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5825:CredentialList":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:5827:Credential"}
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:6291:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:6306:credentials, in US-ASCII format.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:8710:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:8722:CredentialsResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:9830:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:9840:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:9841:CredentialList",
/opt/splunk/lib/python3.7/site-packages/botocore/data/chime/2018-05-01/service-2.json:9842:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:48:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:71:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:99:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:116:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:134:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:153:credentials.</p> <p>The <code>ProviderName</code> must match the value specified when creating an IdP for the pool. </p> <p>To disable a native username + password user, the <code>ProviderName</code> value must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code>, with the <code>ProviderAttributeValue</code> being the name that is used in the user pool for the user.</p> <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for social identity providers. The <code>ProviderAttributeValue</code> must always be the exact subject that was used when the user was originally linked as a source user.</p> <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the <code>ProviderAttributeName</code> and <code>ProviderAttributeValue</code> must be the same values that were used for the <code>SourceUser</code> when the identities were originally linked using <code> AdminLinkProviderForUser</code> call. (If the linking was done with <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same applies here). However, if the user has already signed in, the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the subject of the SAML assertion.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:171:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:189:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:207:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:225:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:243:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:270:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:290:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:308:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:326:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:362:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:387:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:419:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:512:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:537:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:555:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:694:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:824:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:1170:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:1370:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:1505:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:1832:credentials.</p> <important> <p>If you don't provide a value for an attribute, it will be set to the default value.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3433:CredentialsActionsType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3438:CredentialsEventActionType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3442:credentials actions type</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3444:CredentialsEventActionType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3451:CredentialsRiskConfigurationType":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3460:CredentialsActionsType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3461:credentials risk configuration actions.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3464:credentials risk configuration type.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:3867:credentials</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:4742:CredentialsDetected":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:4744:credentials were detected during an authentication event.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:5978:credentials"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6427:CredentialsRiskConfiguration":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6428:CredentialsRiskConfigurationType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6429:credentials risk configuration object including the <code>EventFilter</code> and the <code>EventAction</code> </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6603:CredentialsRiskConfiguration":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6604:CredentialsRiskConfigurationType",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:6605:credentials risk configuration.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:7450:credentials</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-idp/2016-04-18/service-2.json:7864:credentials</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:31:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:46:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:62:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:79:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:96:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:98:CredentialsForIdentity":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:99:CredentialsForIdentity",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:104:CredentialsForIdentityInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:105:CredentialsForIdentityResponse"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:116:credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:137:credentials to call this API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:156:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:175:credentials to call this API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:195:credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:229:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:246:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:281:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:299:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:317:CredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:368:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:386:credentials to call this API.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:424:credentials to call this API.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:472:credentials for the user.</p> <p>If the user is signed out or deleted, the identity pool will return a 400 Not Authorized error.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:552:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:557:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:561:credentials</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:565:credentials</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:569:credentials will expire.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:572:Credentials for the provided identity ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:673:CredentialsForIdentityInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:683:credentials for an unauthenticated identity.</p> <p>The Logins parameter is required when using identities associated with external identity providers such as Facebook. For examples of <code>Logins</code> maps, see the code examples in the <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html\">External Identity Providers</a> section of the Amazon Cognito Developer Guide.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:690:CredentialsForIdentity</code> action.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:692:CredentialsForIdentityResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:699:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:700:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:701:Credentials for the provided identity ID.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:704:CredentialsForIdentity</code> operation.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:789:credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.</p> <note> <p>Please provide for a small grace period, usually no more than 5 minutes, to account for clock skew.</p> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-identity/2014-06-30/service-2.json:1637:credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.</p> <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.</p> <p>For a description of the authentication flow from the Amazon Cognito Developer Guide see <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html\">Authentication Flow</a>.</p> <p>For more information see <a href=\"https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html\">Amazon Cognito Federated Identities</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ivs/2020-07-14/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ivs/2020-07-14/service-2.json:1618:credentials that have permission to perform the requested action. For example, you must sign PutMetadata requests with a signature generated from an IAM user account that has the <code>ivs:PutMetadata</code> permission.</p> <p>For more information:</p> <ul> <li> <p>Authentication and generating signatures — See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html\">Authenticating Requests (AWS Signature Version 4)</a> in the <i>AWS General Reference</i>.</p> </li> <li> <p>Managing Amazon IVS permissions — See <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html\">Identity and Access Management</a> on the Security page of the <i>Amazon IVS User Guide</i>.</p> </li> </ul> <p> <b>Channel Endpoints</b> </p> <ul> <li> <p> <a>CreateChannel</a> — Creates a new channel and an associated stream key to start streaming.</p> </li> <li> <p> <a>GetChannel</a> — Gets the channel configuration for the specified channel ARN (Amazon Resource Name).</p> </li> <li> <p> <a>BatchGetChannel</a> — Performs <a>GetChannel</a> on multiple ARNs simultaneously.</p> </li> <li> <p> <a>ListChannels</a> — Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 Conflict Exception).</p> </li> <li> <p> <a>UpdateChannel</a> — Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.</p> </li> <li> <p> <a>DeleteChannel</a> — Deletes the specified channel.</p> </li> </ul> <p> <b>StreamKey Endpoints</b> </p> <ul> <li> <p> <a>CreateStreamKey</a> — Creates a stream key, used to initiate a stream, for the specified channel ARN.</p> </li> <li> <p> <a>GetStreamKey</a> — Gets stream key information for the specified ARN.</p> </li> <li> <p> <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.</p> </li> <li> <p> <a>ListStreamKeys</a> — Gets summary information about stream keys for the specified channel.</p> </li> <li> <p> <a>DeleteStreamKey</a> — Deletes the stream key for the specified ARN, so it can no longer be used to stream.</p> </li> </ul> <p> <b>Stream Endpoints</b> </p> <ul> <li> <p> <a>GetStream</a> — Gets information about the active (live) stream on a specified channel.</p> </li> <li> <p> <a>ListStreams</a> — Gets summary information about live streams in your account, in the AWS region where the API request is processed.</p> </li> <li> <p> <a>StopStream</a> — Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with <a>DeleteStreamKey</a> to prevent further streaming to a channel.</p> </li> <li> <p> <a>PutMetadata</a> — Inserts metadata into the active stream of the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching your data into a single PutMetadata call.)</p> </li> </ul> <p> <b>PlaybackKeyPair Endpoints</b> </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html\">Setting Up Private Channels</a> in the <i>Amazon IVS User Guide</i>.</p> <ul> <li> <p> <a>ImportPlaybackKeyPair</a> — Imports the public portion of a new key pair and returns its <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> can then be used to generate viewer authorization tokens, to grant viewers access to private channels (channels enabled for playback authorization).</p> </li> <li> <p> <a>GetPlaybackKeyPair</a> — Gets a specified playback authorization key pair and returns the <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> held by the caller can be used to generate viewer authorization tokens, to grant viewers access to private channels.</p> </li> <li> <p> <a>ListPlaybackKeyPairs</a> — Gets summary information about playback key pairs.</p> </li> <li> <p> <a>DeletePlaybackKeyPair</a> — Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s <code>privateKey</code>.</p> </li> </ul> <p> <b>RecordingConfiguration Endpoints</b> </p> <ul> <li> <p> <a>CreateRecordingConfiguration</a> — Creates a new recording configuration, used to enable recording to Amazon S3.</p> </li> <li> <p> <a>GetRecordingConfiguration</a> — Gets the recording-configuration metadata for the specified ARN.</p> </li> <li> <p> <a>ListRecordingConfigurations</a> — Gets summary information about all recording configurations in your account, in the AWS region where the API request is processed.</p> </li> <li> <p> <a>DeleteRecordingConfiguration</a> — Deletes the recording configuration for the specified ARN.</p> </li> </ul> <p> <b>AWS Tags Endpoints</b> </p> <ul> <li> <p> <a>TagResource</a> — Adds or updates tags for the AWS resource with the specified ARN.</p> </li> <li> <p> <a>UntagResource</a> — Removes tags from the resource with the specified ARN.</p> </li> <li> <p> <a>ListTagsForResource</a> — Gets information about AWS tags for the specified ARN.</p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/lookoutmetrics/2017-07-25/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/lookoutmetrics/2017-07-25/service-2.json:1995::secret:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:82:credentials. Use the credentials to manually upload your build files to the specified Amazon S3 location. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html\">Uploading Objects</a> in the <i>Amazon S3 Developer Guide</i>. Build files can be uploaded to the GameLift Amazon S3 location once only; that can't be updated. </p> </li> </ul> <p>If successful, this operation creates a new build resource with a unique build ID and places it in <code>INITIALIZED</code> status. A build must be in <code>READY</code> status before you can create fleets with it.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\">Uploading Your Game</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build\"> Create a Build with Files in Amazon S3</a> </p> <p> <b>Related actions</b> </p> <p> <a>CreateBuild</a> | <a>ListBuilds</a> | <a>DescribeBuild</a> | <a>UpdateBuild</a> | <a>DeleteBuild</a> | <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a> </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:984:credentials that match the operating system of the instance. For a Windows instance, GameLift returns a user name and password as strings for use with a Windows Remote Desktop client. For a Linux instance, GameLift returns a user name and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a <code>.pem</code> file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the <code>GetInstanceAccess</code> request, as shown in one of the examples for this operation. </p> <p>To request access to a specific instance, specify the IDs of both the instance and the fleet it belongs to. You can retrieve a fleet's instance IDs by calling <a>DescribeInstances</a>. If successful, an <a>InstanceAccess</a> object is returned that contains the instance's IP address and a set of credentials.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html\">Remotely Access Fleet Instances</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html\">Debug Fleet Issues</a> </p> <p> <b>Related actions</b> </p> <p> <a>DescribeInstances</a> | <a>GetInstanceAccess</a> | <a>DescribeEC2InstanceLimits</a> | <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a> </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1126:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1127:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1132:CredentialsInput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1133:CredentialsOutput"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1140:credentials for use when uploading a new set of game build files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see <a>CreateBuild</a>.</p> <p>To request new credentials, specify the build ID as returned with an initial <code>CreateBuild</code> request. If successful, a new set of credentials are returned, along with the S3 storage location associated with the build ID.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build\"> Create a Build with Files in S3</a> </p> <p> <b>Related actions</b> </p> <p> <a>CreateBuild</a> | <a>ListBuilds</a> | <a>DescribeBuild</a> | <a>UpdateBuild</a> | <a>DeleteBuild</a> | <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets\">All APIs by task</a> </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1697:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1710:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1713:credentials used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1925:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1926:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:1927:credentials to use when you are uploading a build file to an Amazon S3 bucket that is owned by Amazon GameLift. Credentials have a limited life span. To refresh these credentials, call <a>RequestUploadCredentials</a>. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:2009:credentials for your game servers at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\"> Access external resources from a game server</a>. This property cannot be changed after the fleet is created.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:3975:credentials for your game servers at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\"> Access external resources from a game server</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4849:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4939:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4940:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4941:Credentials required to access the instance.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4946:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:4958:credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6088:CredentialsInput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6094:credentials for. You can use either the build ID or ARN value. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6099:CredentialsOutput":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6102:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6103:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/gamelift/2015-10-01/service-2.json:6104:credentials required when uploading a game build to the storage location. These credentials have a limited lifespan and are valid only for the build they were issued for.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloudhsm/2014-05-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloudhsm/2014-05-30/service-2.json:804:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:564:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:592:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:626:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:745:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:786:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:814:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:878:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:906:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:928:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:950:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:973:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1001:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1087:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1114:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1194:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1227:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1271:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1435:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1486:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1538:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1736:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1796:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1845:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1916:credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1940:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:1969:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2123:credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2156:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2299:credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2319:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2346:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2419:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/glacier/2012-06-01/service-2.json:2479:credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json:262:credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json:699:credentials separately.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json:1843:credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json:2776:credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/ds/2015-04-16/service-2.json:2953:credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/dms/2016-01-01/waiters-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/dms/2016-01-01/waiters-2.json:65:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/dms/2016-01-01/waiters-2.json:77:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/dms/2016-01-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/dms/2016-01-01/service-2.json:4349:credentials\"</code> </p> </li> <li> <p> <code>\"storage-full\"</code> </p> </li> <li> <p> <code>\"incompatible-credentials\"</code> </p> </li> <li> <p> <code>\"incompatible-network\"</code> </p> </li> <li> <p> <code>\"maintenance\"</code> </p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:713:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:714:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:715:credentials for branches for the Amplify app. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:828:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:829:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:830:credentials for the autocreated branch. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:932:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1031:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1032:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1033:credentials for a branch of an Amplify app. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1158:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1159:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1160:credentials for basic authorization for an Amplify app. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1280:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1281:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:1282:credentials for the branch. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3091:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3092:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3093:credentials for an Amplify app. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3188:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3189:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/amplify/2017-07-25/service-2.json:3190:credentials for the branch. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/resource-groups/2017-11-27/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/resource-groups/2017-11-27/service-2.json:1188:credentials for the target resource.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/batch/2016-08-10/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/batch/2016-08-10/service-2.json:840:credential data.</p> </important> <note> <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming convention is reserved for variables that are set by the AWS Batch service.</p> </note>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:31:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:50:credentials provided by Cognito Identity or with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:68:credentials used to make this API call need to have access to the identity data.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:86:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:104:credentials provided by Cognito Identity or with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:121:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:139:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:157:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:174:credentials used to make this API call need to have access to the identity data.</p> <p>ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:191:credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:208:credentials used to make this API call need to have access to the identity data.</p> <p>ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:227:credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:244:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:263:credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:282:credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:301:credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:323:credentials provided by Cognito Identity or with developer credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cognito-sync/2014-06-30/service-2.json:1472:credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity.</p> <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with <a href=\"http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html\">Amazon Cognito Identity service</a>.</p> <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <a href=\"http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html\">Developer Guide for Android</a> and the <a href=\"http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html\">Developer Guide for iOS</a>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/codecommit/2015-04-13/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/codecommit/2015-04-13/service-2.json:2766:credentials are associated with the call to the API.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sns/2010-03-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sns/2010-03-31/service-2.json:86:Credential</code> attributes when using the <code>CreatePlatformApplication</code> action.</p> <p> <code>PlatformPrincipal</code> and <code>PlatformCredential</code> are received from the notification service.</p> <ul> <li> <p>For <code>ADM</code>, <code>PlatformPrincipal</code> is <code>client id</code> and <code>PlatformCredential</code> is <code>client secret</code>.</p> </li> <li> <p>For <code>Baidu</code>, <code>PlatformPrincipal</code> is <code>API key</code> and <code>PlatformCredential</code> is <code>secret key</code>.</p> </li> <li> <p>For <code>APNS</code> and <code>APNS_SANDBOX</code>, <code>PlatformPrincipal</code> is <code>SSL certificate</code> and <code>PlatformCredential</code> is <code>private key</code>.</p> </li> <li> <p>For <code>GCM</code> (Firebase Cloud Messaging), there is no <code>PlatformPrincipal</code> and the <code>PlatformCredential</code> is <code>API key</code>.</p> </li> <li> <p>For <code>MPNS</code>, <code>PlatformPrincipal</code> is <code>TLS certificate</code> and <code>PlatformCredential</code> is <code>private key</code>.</p> </li> <li> <p>For <code>WNS</code>, <code>PlatformPrincipal</code> is <code>Package Security Identifier</code> and <code>PlatformCredential</code> is <code>secret key</code>.</p> </li> </ul> <p>You can use the returned <code>PlatformApplicationArn</code> as an attribute for the <code>CreatePlatformEndpoint</code> action.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sns/2010-03-31/service-2.json:1246:credential signature isn't valid. You must use an HTTPS endpoint and sign your request using Signature Version 4.</p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sns/2010-03-31/service-2.json:1932:Credential</code> – The credential received from the notification service. For <code>APNS</code> and <code>APNS_SANDBOX</code>, <code>PlatformCredential</code> is <code>private key</code>. For <code>GCM</code> (Firebase Cloud Messaging), <code>PlatformCredential</code> is <code>API key</code>. For <code>ADM</code>, <code>PlatformCredential</code> is <code>client secret</code>.</p> </li> <li> <p> <code>PlatformPrincipal</code> – The principal received from the notification service. For <code>APNS</code> and <code>APNS_SANDBOX</code>, <code>PlatformPrincipal</code> is <code>SSL certificate</code>. For <code>GCM</code> (Firebase Cloud Messaging), there is no <code>PlatformPrincipal</code>. For <code>ADM</code>, <code>PlatformPrincipal</code> is <code>client id</code>.</p> </li> <li> <p> <code>EventEndpointCreated</code> – Topic ARN to which <code>EndpointCreated</code> event notifications are sent.</p> </li> <li> <p> <code>EventEndpointDeleted</code> – Topic ARN to which <code>EndpointDeleted</code> event notifications are sent.</p> </li> <li> <p> <code>EventEndpointUpdated</code> – Topic ARN to which <code>EndpointUpdate</code> event notifications are sent.</p> </li> <li> <p> <code>EventDeliveryFailure</code> – Topic ARN to which <code>DeliveryFailure</code> event notifications are sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.</p> </li> <li> <p> <code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>FailureFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>SuccessFeedbackSampleRate</code> – Sample rate percentage (0-100) of successfully delivered messages.</p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:1096:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:1114:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:2063:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:2584:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:3905:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:4135:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/iotwireless/2020-11-22/service-2.json:4296:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/kms/2014-11-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/kms/2014-11-01/service-2.json:1036:CREDENTIALS",
/opt/splunk/lib/python3.7/site-packages/botocore/data/kms/2014-11-01/service-2.json:1282:CREDENTIALS</code> - AWS KMS does not have the correct password for the <code>kmsuser</code> crypto user in the AWS CloudHSM cluster. Before you can connect your custom key store to its AWS CloudHSM cluster, you must change the <code>kmsuser</code> account password and update the key store password value for the custom key store.</p> </li> <li> <p> <code>NETWORK_ERRORS</code> - Network errors are preventing AWS KMS from connecting to the custom key store.</p> </li> <li> <p> <code>SUBNET_NOT_FOUND</code> - A subnet in the AWS CloudHSM cluster configuration was deleted. If AWS KMS cannot find all of the subnets in the cluster configuration, attempts to connect the custom key store to the AWS CloudHSM cluster fail. To fix this error, create a cluster from a recent backup and associate it with your custom key store. (This process creates a new cluster configuration with a VPC and private subnets.) For details, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed\">How to Fix a Connection Failure</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p> <code>USER_LOCKED_OUT</code> - The <code>kmsuser</code> CU account is locked out of the associated AWS CloudHSM cluster due to too many failed password attempts. Before you can connect your custom key store to its AWS CloudHSM cluster, you must change the <code>kmsuser</code> account password and update the key store password value for the custom key store.</p> </li> <li> <p> <code>USER_LOGGED_IN</code> - The <code>kmsuser</code> CU account is logged into the the associated AWS CloudHSM cluster. This prevents AWS KMS from rotating the <code>kmsuser</code> account password and logging into the cluster. Before you can connect your custom key store to its AWS CloudHSM cluster, you must log the <code>kmsuser</code> CU out of the cluster. If you changed the <code>kmsuser</code> password to log into the cluster, you must also and update the key store password value for the custom key store. For help, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#login-kmsuser-2\">How to Log Out and Reconnect</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p> <code>USER_NOT_FOUND</code> - AWS KMS cannot find a <code>kmsuser</code> CU account in the associated AWS CloudHSM cluster. Before you can connect your custom key store to its AWS CloudHSM cluster, you must create a <code>kmsuser</code> CU account in the cluster, and then update the key store password value for the custom key store.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kms/2014-11-01/service-2.json:3201:credentials that you can use to sign requests.</p> <p>All AWS KMS operations require <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> <p> <b>Logging API Requests</b> </p> <p>AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/\">AWS CloudTrail User Guide</a>.</p> <p> <b>Additional Resources</b> </p> <p>For more information about credentials and request signing, see the following:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html\">AWS Security Credentials</a> - This topic provides general information about the types of credentials used for accessing AWS.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html\">Temporary Security Credentials</a> - This section of the <i>IAM User Guide</i> describes how to create and use temporary security credentials.</p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a> - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.</p> </li> </ul> <p> <b>Commonly Used API Operations</b> </p> <p>Of the API operations discussed in this guide, the following will prove the most useful for most applications. You will likely perform operations other than these, such as creating keys and assigning policies, by using the console.</p> <ul> <li> <p> <a>Encrypt</a> </p> </li> <li> <p> <a>Decrypt</a> </p> </li> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/lambda/2015-03-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/lambda/2015-03-31/service-2.json:4329:credentials.</p> </li> <li> <p> <code>VPC_SUBNET</code> - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your Self-Managed Apache Kafka cluster.</p> </li> <li> <p> <code>VPC_SECURITY_GROUP</code> - The VPC security group used to manage access to your Self-Managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_256_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your Self-Managed Apache Kafka brokers.</p> </li> <li> <p> <code>SASL_SCRAM_512_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your Self-Managed Apache Kafka brokers.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/lambda/2015-03-31/service-2.json:4333::secret:
 /opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:2993:credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:3000:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:3001:Credential",
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:3002:Credential</code> object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:4089:credentials, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html\">https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:4362:Credential":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/opsworks/2013-02-18/service-2.json:4375:credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:101:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:107:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:113:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:119:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:125:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:150:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:165:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:172:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:179:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:186:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:214:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:220:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:226:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:232:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:238:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:303:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:310:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:317:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:324:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:334:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:340:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:346:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:352:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:358:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:364:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:370:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:376:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:382:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:388:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:394:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:400:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:406:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:412:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:418:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:424:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:430:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:436:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:442:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:448:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:454:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:460:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:466:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:472:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:478:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:484:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:490:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:496:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:502:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:561:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:590:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:597:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:604:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:611:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:737:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:751:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:800:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:806:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:812:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:818:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:929:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:935:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:941:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:947:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:963:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:975:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:990:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1057:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1064:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1071:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1078:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1088:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1114:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1172:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1178:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1184:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1190:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1240:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1247:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1254:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1261:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1285:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1319:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1326:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1333:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1340:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1377:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1383:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1389:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1395:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1401:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1464:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1470:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1476:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1503:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1509:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1515:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1521:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1564:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1570:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1576:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1593:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1599:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1605:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1633:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1639:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1645:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1651:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1694:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1774:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1780:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1786:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1792:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1798:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1851:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1857:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1863:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1869:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1905:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1927:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1933:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1939:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1945:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1951:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1957:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1963:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1969:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1975:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1981:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1987:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1993:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:1999:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2005:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2029:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2035:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2041:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2047:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2053:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2081:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2093:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2103:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2110:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2117:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2124:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2149:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2155:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2161:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2167:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2173:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2207:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2213:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2219:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2225:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2231:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2262:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2268:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2274:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2280:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2314:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2320:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2326:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2332:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2363:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2394:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2400:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2406:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2412:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2443:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2449:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2455:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2461:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2467:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2473:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2479:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2485:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2491:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2497:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2503:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2509:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2515:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2521:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2527:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2533:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2539:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2545:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2551:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2557:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2563:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2597:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2603:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2609:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2615:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2652:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2658:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2664:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2670:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2676:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2735:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2761:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2792:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2798:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2804:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2810:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2859:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2865:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2871:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2877:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2910:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2916:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2922:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2928:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2934:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2940:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2946:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2952:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2958:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2964:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2970:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2976:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2982:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2988:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:2994:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3000:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3006:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3012:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3018:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3041:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3047:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3053:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3073:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3079:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3085:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3112:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3118:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3124:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3130:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3136:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3194:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3200:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3206:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3212:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3218:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3249:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3255:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3261:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3267:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3308:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3314:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3320:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3355:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3362:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3369:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3376:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3387:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3410:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3416:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3445:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3467:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3473:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3479:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3485:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3498:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3551:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3557:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3563:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3569:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3575:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3581:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3587:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3593:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3599:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3605:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3636:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3652:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3658:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3706:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3712:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3718:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3724:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3821:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3827:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3833:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3839:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3870:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3876:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3882:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3888:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3919:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3925:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3931:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3937:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3986:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3992:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:3998:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4004:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4044:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4050:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4077:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4083:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4089:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4095:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4157:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4163:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4169:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4175:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4181:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4206:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4212:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4218:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4262:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4308:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4321:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4328:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4356:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4362:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4368:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4374:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4404:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4410:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4416:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4422:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4447:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4453:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4459:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4465:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4471:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4477:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4483:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4489:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4495:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4501:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4507:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4513:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4519:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4525:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4531:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4537:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4543:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4549:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4559:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4565:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4571:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4577:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4583:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4589:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4595:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4601:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4607:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4613:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4619:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4625:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4631:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4673:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4679:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4705:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4711:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4717:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4723:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4729:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4759:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4774:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4780:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4786:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4792:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4814:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4820:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4826:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4832:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4848:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4854:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4860:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4866:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4872:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4878:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4884:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4890:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4896:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4935:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4941:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4947:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4975:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4981:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4987:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4993:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:4999:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5031:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5037:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5043:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5049:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5055:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5087:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5093:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5099:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5105:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5111:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5136:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5142:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5148:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5154:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5160:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5189:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5195:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5201:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5207:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5234:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5240:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5284:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5297:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5304:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5331:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5338:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5345:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5352:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5467:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5505:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5539:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5546:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5553:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5560:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5567:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5574:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5581:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5588:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5595:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5602:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5609:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5616:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5623:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5630:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5637:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5644:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5651:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5658:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5665:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5672:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5679:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5686:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5697:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5766:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5773:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5780:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5787:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5812:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5818:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5824:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5830:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5925:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5932:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5939:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5946:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5970:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5976:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5982:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5988:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:5994:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6026:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6074:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6080:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6086:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6103:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6109:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6135:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6141:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6147:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6153:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6184:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6190:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6196:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6202:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6208:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6214:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6220:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6226:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6232:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6238:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6244:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6250:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6256:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6262:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6268:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6274:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6307:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6313:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6319:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6325:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6360:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6366:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6372:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6378:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6411:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6417:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6423:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6429:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6435:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6466:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6472:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6478:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6484:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6514:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6529:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6542:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6553:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6563:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6570:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6577:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6584:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6602:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6618:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6625:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6632:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6639:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6650:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6676:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6682:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6688:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6694:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6749:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6755:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6761:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6767:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6812:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6818:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6824:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6830:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6836:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6868:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6875:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6883:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6893:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6899:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6911:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6917:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6923:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6929:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6935:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6941:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6947:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6953:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6959:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6965:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6971:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6977:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6983:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6989:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:6995:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7001:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7007:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7013:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7019:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7025:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7031:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7037:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7043:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7049:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7055:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7061:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7067:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7073:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7079:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7085:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7091:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7097:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7103:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7109:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7115:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7121:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7127:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7133:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7139:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7145:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7151:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7157:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7171:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7177:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7208:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7214:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7242:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7248:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7254:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7260:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7308:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7314:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7387:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7399:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7417:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7469:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7499:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7568:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7574:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7671:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7682:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7704:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7768:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7793:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7803:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7849:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7898:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7905:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7961:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:7967:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8013:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8032:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8058:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8064:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8080:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8086:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8092:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8098:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8139:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8145:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8155:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8161:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8174:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8180:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8196:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8203:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8213:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8219:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8225:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8231:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8237:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8243:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8254:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8260:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8288:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8295:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8306:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8312:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8353:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8359:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8376:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8382:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8396:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8408:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8414:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8425:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8432:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8442:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8455:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8462:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8472:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8483:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8494:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8508:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8519:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8530:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8536:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8552:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8565:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8571:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8583:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8589:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8599:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8611:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8621:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8627:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8640:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8647:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8663:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8669:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8679:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8685:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8700:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8706:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8718:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8730:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8736:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8746:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8752:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8764:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8770:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8784:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8790:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8804:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8815:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8827:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8833:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8843:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8849:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8864:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8870:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8882:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8888:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8900:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8906:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8917:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8923:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8938:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8944:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8950:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8956:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8962:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8977:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8984:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:8995:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9005:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9011:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9023:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9029:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9040:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9064:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9070:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9086:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9098:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9109:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9115:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9127:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9133:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9145:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9151:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9161:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9170:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9181:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9188:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9198:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9204:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9222:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9228:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9238:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9244:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9256:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9262:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9271:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9277:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9283:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9293:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9304:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9310:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9320:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9326:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9338:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9344:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9354:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9365:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9371:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9383:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9389:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9406:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9413:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9424:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9453:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9475:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9482:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9489:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9496:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9508:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9515:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9525:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9531:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9546:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9553:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9565:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9572:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9582:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9588:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9603:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9609:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9621:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9627:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9639:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9645:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9657:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9663:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9674:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9680:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9692:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9698:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9710:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9716:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9728:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9739:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9746:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9753:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9764:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9771:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9781:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9787:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9798:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9804:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9823:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9829:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9841:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9847:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9863:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9873:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9879:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9885:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9891:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9901:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9912:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9918:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:9947:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10020:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10058:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10110:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10127:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10183:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10244:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10263:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10322:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10373:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10442:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10459:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10500:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10552:credentialScope" : {
/opt/splunk/lib/python3.7/site-packages/botocore/data/endpoints.json:10569:credentialScope" : {
 /opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:233:credentials_temp_enable-regions.html\">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> <note> <p> To add the IAM role policies for using this API operation, go to the <a href=\"https://console.aws.amazon.com/iam/\">IAM console</a>, and choose Roles in the left navigation pane. Search the IAM role that you want to grant access to use the <a>CreateEndpoint</a> and <a>CreateEndpointConfig</a> API operations, add the following policies to the role. </p> <ul> <li> <p>Option 1: For a full Amazon SageMaker access, search and attach the <code>AmazonSageMakerFullAccess</code> policy.</p> </li> <li> <p>Option 2: For granting a limited access to an IAM role, paste the following Action elements manually into the JSON file of the IAM role: </p> <p> <code>\"Action\": [\"sagemaker:CreateEndpoint\", \"sagemaker:CreateEndpointConfig\"]</code> </p> <p> <code>\"Resource\": [</code> </p> <p> <code>\"arn:aws:sagemaker:region:account-id:endpoint/endpointName\"</code> </p> <p> <code>\"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName\"</code> </p> <p> <code>]</code> </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html\">Amazon SageMaker API Permissions: Actions, Permissions, and Resources Reference</a>.</p> </li> </ul> </note>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:4591:credentials used to access the repository.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:4847:credentials_temp_enable-regions.html\">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> <important> <p>If you use a built-in algorithm to create a model, Amazon SageMaker requires that you provide a S3 path to the model artifacts in <code>ModelDataUrl</code>.</p> </important>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:5311:credentials to use to access the repository.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:8433:credentials used to access the repository.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:12490:credentials used to access the git repository. The secret must have a staging label of <code>AWSCURRENT</code> and must be in the following format:</p> <p> <code>{\"username\": <i>UserName</i>, \"password\": <i>Password</i>}</code> </p>"                                                                                                                                 
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:12500:credentials used to access the git repository. The secret must have a staging label of <code>AWSCURRENT</code> and must be in the following format:</p> <p> <code>{\"username\": <i>UserName</i>, \"password\": <i>Password</i>}</code> </p>"                                                                                                                                 
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:14489:credentials used to access the repository.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20424:CredentialsProviderArn"],
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20426:CredentialsProviderArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20427:CredentialsProviderArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20428:credentials to authenticate to the private Docker registry where your model image is hosted. For information about how to create an AWS Lambda function, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/getting-started-create-function.html\">Create a Lambda function with the console</a> in the <i>AWS Lambda Developer Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20433:CredentialsProviderArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:20910::secret:
/opt/splunk/lib/python3.7/site-packages/botocore/data/sagemaker/2017-07-24/service-2.json:23123:credentials used to access the repository. The secret must have a staging label of <code>AWSCURRENT</code> and must be in the following format:</p> <p> <code>{\"username\": <i>UserName</i>, \"password\": <i>Password</i>}</code> </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/ec2-instance-connect/2018-04-02/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/ec2-instance-connect/2018-04-02/service-2.json:61:credentials are not valid or you do not have access to the EC2 instance.</p>",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1311:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1312:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1317:CredentialsMessage"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1319:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1320:CredentialsResult"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:1326:credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html\">Using IAM Authentication to Generate Database User Credentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources\">Resource Policies for GetClusterCredentials</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If the <code>DbGroups</code> parameter is specified, the IAM policy must allow the <code>redshift:JoinGroup</code> action with access to the listed <code>dbgroups</code>. </p> <p>In addition, if the <code>AutoCreate</code> parameter is set to <code>True</code>, then the policy must include the <code>redshift:CreateClusterUser</code> privilege.</p> <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:2573:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:2578:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:2589:credentials with authorization to log on to an Amazon Redshift database. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:5469:CredentialsMessage":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:5478:credentials have the same permissions as the existing user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code> is <code>True</code>, a new user is created using the value for <code>DbUser</code> with PUBLIC permissions. If a database user matching the value for <code>DbUser</code> doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">CREATE USER</a> in the Amazon Redshift Database Developer Guide. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be <code>PUBLIC</code>.</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:5486:credentials. This parameter is case sensitive.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/redshift/2012-12-01/service-2.json:5501:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:623:Credentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p> </li> <li> <p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p> </li> <li> <p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p> </li> <li> <p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p> </li> <li> <p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p> </li> <li> <p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p> </li> <li> <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p> </li> <li> <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p> </li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <p> Sample - <code> \"{\\\"splitting\\\":{\\\"percentBegin\\\":10,\\\"percentEnd\\\":60}}\"</code> </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:663:Credentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p> </li> <li> <p>SelectSqlQuery - The query that is used to retrieve the observation data for the <code>Datasource</code>.</p> </li> <li> <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the <code>SelectSqlQuery</code> query is stored in this location.</p> </li> <li> <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p> </li> <li> <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p> </li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p> <p> Sample - <code> \"{\\\"splitting\\\":{\\\"percentBegin\\\":10,\\\"percentEnd\\\":60}}\"</code> </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2069:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2085:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2086:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2087:credentials that are used connect to the Amazon RDS database.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2139:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2149:credentials to connect to a database on an RDS DB instance.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2262:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2274:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2275:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2276:credentials that are used connect to the Amazon Redshift database.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2309:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/machinelearning/2014-12-12/service-2.json:2319:credentials for connecting to a database on an Amazon Redshift cluster.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:39:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:80:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:121:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:162:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:203:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:244:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:285:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:326:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:367:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:449:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:490:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:531:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:572:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:613:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:654:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:695:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:736:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:777:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:818:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:859:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:900:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:941:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:982:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:1023:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:4555:credentials you sent."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6722:credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6878:credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6926:CredentialsSecretName": {
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6928:credentialsSecretName",
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6929:credentials are stored. Note that your MediaConvert service role must provide access to this secret. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/granting-permissions-for-mediaconvert-to-access-secrets-manager-secret.html. For instructions on creating a secret, see https://docs.aws.amazon.com/secretsmanager/latest/userguide/tutorials_basic.html, in the AWS Secrets Manager User Guide."
/opt/splunk/lib/python3.7/site-packages/botocore/data/mediaconvert/2017-08-29/service-2.json:6982:credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html."
 /opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1056:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1057:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1058:credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1141:credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1195:credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1945:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1946:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:1947:credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:2179:credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:2390:credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:2804:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:2820:credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:3245:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:3246:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:3247:credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appstream/2016-12-01/service-2.json:3326:credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:344:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:357:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:360:credentials required when using Amplitude. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:423:CredentialsArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:753:credentialsArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:755:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:770:credentials ARN, connection-mode, and so on. To keep the API intuitive and extensible, the fields that are common to all types of connector profiles are explicitly specified at the top level. The rest of the connector-specific properties are available via the <code>connectorProfileProperties</code> field. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:781:Credentials"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:788:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:789:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:790:credentials required by each connector. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:793:credentials for the connector profile. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:795:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:799:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:800:credentials required when using Amplitude. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:803:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:804:credentials required when using Datadog. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:807:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:808:credentials required when using Dynatrace. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:811:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:812:credentials required when using Google Analytics. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:815:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:816:credentials required when using Amazon Honeycode. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:819:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:820:credentials required when using Infor Nexus. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:823:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:824:credentials required when using Marketo. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:827:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:828:credentials required when using Amazon Redshift. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:831:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:832:credentials required when using Salesforce. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:835:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:836:credentials required when using ServiceNow. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:839:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:840:credentials required when using Singular. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:843:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:844:credentials required when using Slack. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:847:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:848:credentials required when using Snowflake. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:851:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:852:credentials required when using Trend Micro. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:855:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:856:credentials required when using Veeva. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:859:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:860:credentials required when using Zendesk. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:863:credentials required by a connector. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1018:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1146:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1162:credentials required by Datadog. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1567:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1576:credentials required by Dynatrace. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1897:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1914:credentials used to access protected Google Analytics resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1918:credentials used to acquire new access tokens. This is required only for OAuth2 access tokens, and is not required for OAuth1 access tokens. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1925:credentials required by Google Analytics. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1959:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1964:credentials used to access protected Amazon Honeycode resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1968:credentials used to acquire new access tokens. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:1972:credentials required when using Amazon Honeycode. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2044:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2055:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2070:credentials required by Infor Nexus. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2232:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2249:credentials used to access protected Marketo resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2256:credentials required by Marketo. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2424:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2440:credentials required when using Amazon Redshift. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2632:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2637:credentials used to access protected Salesforce resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2641:credentials used to acquire new access tokens. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2647:CredentialsArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2648:CredentialsArn",
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2652:credentials required when using Salesforce. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2813:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2829:credentials required when using ServiceNow. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2887:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2896:credentials required when using Singular. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2945:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2962:credentials used to access protected Slack resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:2969:credentials required when using Slack. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3003:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3019:credentials required when using Snowflake. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3405:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3411:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3414:credentials required when using Trend Micro. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3529:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3680:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3696:credentials required when using Veeva. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3759:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3776:credentials used to access protected Zendesk resources. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/appflow/2020-08-23/service-2.json:3783:credentials required when using Zendesk. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:33:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:34:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:37:credentials/programmatic"
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:39:CredentialsRequest"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:40:CredentialsResponse"},
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:46:credentials to use with Habanero SDK.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:205:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:221:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:259:CredentialsRequest":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:265:credentials remain valid. </p>",
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:277:CredentialsResponse":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:280:credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:281:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:282:credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/finspace-data/2020-07-13/service-2.json:286:credentials will remain valid.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:287:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:299:credentials. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:305:CREDENTIALS"
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:349:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:350:Credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/connectparticipant/2018-09-07/service-2.json:351:credentials. The authentication token associated with the participant's connection.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/cloud9/2017-09-23/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloud9/2017-09-23/service-2.json:554:CredentialsStatus":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloud9/2017-09-23/service-2.json:555:CredentialsStatus",
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloud9/2017-09-23/service-2.json:556:credentials for the AWS Cloud9 environment. Available values are:</p> <ul> <li> <p> <code>ENABLED_ON_CREATE</code> </p> </li> <li> <p> <code>ENABLED_BY_OWNER</code> </p> </li> <li> <p> <code>DISABLED_BY_DEFAULT</code> </p> </li> <li> <p> <code>DISABLED_BY_OWNER</code> </p> </li> <li> <p> <code>DISABLED_BY_COLLABORATOR</code> </p> </li> <li> <p> <code>PENDING_REMOVAL_BY_COLLABORATOR</code> </p> </li> <li> <p> <code>PENDING_REMOVAL_BY_OWNER</code> </p> </li> <li> <p> <code>FAILED_REMOVAL_BY_COLLABORATOR</code> </p> </li> <li> <p> <code>ENABLED_BY_OWNER</code> </p> </li> <li> <p> <code>DISABLED_BY_DEFAULT</code> </p> </li> </ul>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/cloud9/2017-09-23/service-2.json:747:CredentialsStatus":{
 /opt/splunk/lib/python3.7/site-packages/botocore/data/glue/2017-03-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/glue/2017-03-31/service-2.json:3845:credentials.</p> </li> <li> <p> <code>CONNECTOR_URL</code> - The connector URL for a MARKETPLACE or CUSTOM connection.</p> </li> <li> <p> <code>CONNECTOR_TYPE</code> - The connector type for a MARKETPLACE or CUSTOM connection.</p> </li> <li> <p> <code>CONNECTOR_CLASS_NAME</code> - The connector class name for a MARKETPLACE or CUSTOM connection.</p> </li> <li> <p> <code>KAFKA_CLIENT_KEYSTORE</code> - The Amazon S3 location of the client keystore file for Kafka client side authentication (Optional).</p> </li> <li> <p> <code>KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The password to access the provided keystore (Optional).</p> </li> <li> <p> <code>KAFKA_CLIENT_KEY_PASSWORD</code> - A keystore can consist of multiple keys, so this is the password to access the client key to be used with the Kafka server side key (Optional).</p> </li> <li> <p> <code>ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The encrypted version of the Kafka client keystore password (if the user has the AWS Glue encrypt passwords setting selected).</p> </li> <li> <p> <code>ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD</code> - The encrypted version of the Kafka client key password (if the user has the AWS Glue encrypt passwords setting selected).</p> </li> </ul>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:833:credentials.</p> <p>The list includes the name and port number of the website host.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:843:Credentials"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:848:credentials.</p> <p>For example, the host name of https://a.example.com/page1.html is \"a.example.com\".</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:852:credentials.</p> <p>For example, the port for https://a.example.com/page1.html is 443, the standard port for HTTPS.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:854:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:856:credentials are required to connect to a website. The secret stores your credentials of user name and password.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:1443:credentials stored in AWS Secrets Manager. The credentials should be a user/password pair. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html\">Using a Database Data Source</a>. For more information about AWS Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS Secrets Manager </a> in the <i>AWS Secrets Manager</i> user guide.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:2987:credentials required to connect to Google Drive. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html\">Using a Google Workspace Drive data source</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:3683:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:3685:credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:4565:credentials stored in AWS Secrets Manager. The credentials should be a user/password pair. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html\">Using a Microsoft SharePoint Data Source</a>. For more information about AWS Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS Secrets Manager </a> in the <i>AWS Secrets Manager</i> user guide.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:5356:credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\">AWS Secrets Manager</a>.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/kendra/2019-02-03/service-2.json:5360:credentials.</p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:2024:Credential={access_key_ID}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-{rel}.html\", \"name\": \"account\", \"templated\": true }, \"self\": { \"href\": \"/account\" }, \"account:update\": { \"href\": \"/account\" } }, \"cloudwatchRoleArn\": \"arn:aws:iam::123456789012:role/apigAwsProxyRole\", \"throttleSettings\": { \"rateLimit\": 500, \"burstLimit\": 1000 } } </code></pre> <p>In addition to making the REST API call directly, you can use the AWS CLI and an AWS SDK to access this resource.</p> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html\">API Gateway Limits</a> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html\">Developer Guide</a>, <a href=\"https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html\">AWS CLI</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:2158:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:2160:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:2423:Credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:2425:credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:3724:Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a Cache-Control: no-cache Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45 </code></pre> <p>The response type is specified as a URL path.</p> <h5>Response</h5> <p>The successful operation returns the <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html\", \"name\": \"gatewayresponse\", \"templated\": true }, \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" }, \"gatewayresponse:delete\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" } }, \"defaultResponse\": false, \"responseParameters\": { \"gatewayresponse.header.x-request-path\": \"method.request.path.petId\", \"gatewayresponse.header.Access-Control-Allow-Origin\": \"&apos;a.b.c&apos;\", \"gatewayresponse.header.x-request-query\": \"method.request.querystring.q\", \"gatewayresponse.header.x-request-header\": \"method.request.header.Accept\" }, \"responseTemplates\": { \"application/json\": \"{\\n \\\"message\\\": $context.error.messageString,\\n \\\"type\\\": \\\"$context.error.responseType\\\",\\n \\\"stage\\\": \\\"$context.stage\\\",\\n \\\"resourcePath\\\": \\\"$context.resourcePath\\\",\\n \\\"stageVariables.a\\\": \\\"$stageVariables.a\\\",\\n \\\"statusCode\\\": \\\"&apos;404&apos;\\\"\\n}\" }, \"responseType\": \"MISSING_AUTHENTICATION_TOKEN\", \"statusCode\": \"404\" }</code></pre> <p/> </div> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html\">Customize Gateway Responses</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:3761:Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=59b42fe54a76a5de8adf2c67baa6d39206f8e9ad49a1d77ccc6a5da3103a398a Cache-Control: no-cache Postman-Token: 5637af27-dc29-fc5c-9dfe-0645d52cb515 </code></pre> <p/> <h5>Response</h5> <p>The successful operation returns the <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html\", \"name\": \"gatewayresponse\", \"templated\": true }, \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses\" }, \"first\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses\" }, \"gatewayresponse:by-type\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"item\": [ { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/THROTTLED\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE\" }, { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE\" } ] }, \"_embedded\": { \"item\": [ { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"INTEGRATION_FAILURE\", \"statusCode\": \"504\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"RESOURCE_NOT_FOUND\", \"statusCode\": \"404\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"REQUEST_TOO_LARGE\", \"statusCode\": \"413\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/THROTTLED\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/THROTTLED\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"THROTTLED\", \"statusCode\": \"429\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"UNSUPPORTED_MEDIA_TYPE\", \"statusCode\": \"415\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"AUTHORIZER_CONFIGURATION_ERROR\", \"statusCode\": \"500\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"DEFAULT_5XX\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"DEFAULT_4XX\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"BAD_REQUEST_PARAMETERS\", \"statusCode\": \"400\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"BAD_REQUEST_BODY\", \"statusCode\": \"400\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"EXPIRED_TOKEN\", \"statusCode\": \"403\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"ACCESS_DENIED\", \"statusCode\": \"403\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"INVALID_API_KEY\", \"statusCode\": \"403\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"UNAUTHORIZED\", \"statusCode\": \"401\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"API_CONFIGURATION_ERROR\", \"statusCode\": \"500\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"QUOTA_EXCEEDED\", \"statusCode\": \"429\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"INTEGRATION_TIMEOUT\", \"statusCode\": \"504\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"MISSING_AUTHENTICATION_TOKEN\", \"statusCode\": \"403\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"INVALID_SIGNATURE\", \"statusCode\": \"403\" }, { \"_links\": { \"self\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE\" }, \"gatewayresponse:put\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/{response_type}\", \"templated\": true }, \"gatewayresponse:update\": { \"href\": \"/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE\" } }, \"defaultResponse\": true, \"responseParameters\": {}, \"responseTemplates\": { \"application/json\": \"{\\\"message\\\":$context.error.messageString}\" }, \"responseType\": \"AUTHORIZER_FAILURE\", \"statusCode\": \"500\" } ] } }</code></pre> <p/> </div> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html\">Customize Gateway Responses</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5000:credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5002:credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\\*:user/\\*</code>. To use resource-based permissions on supported AWS services, specify null.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5034:Credential={access_key_ID}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html\", \"name\": \"integrationresponse\", \"templated\": true }, \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\", \"title\": \"200\" }, \"integrationresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" }, \"integrationresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" } }, \"responseParameters\": { \"method.response.header.Content-Type\": \"'application/xml'\" }, \"responseTemplates\": { \"application/json\": \"$util.urlDecode(\\\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\\\")\\n\" }, \"statusCode\": \"200\" }</code></pre> <p/> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html\">Creating an API</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5298:Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html\", \"name\": \"methodresponse\", \"templated\": true }, \"self\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200\", \"title\": \"200\" }, \"methodresponse:delete\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200\" }, \"methodresponse:update\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200\" } }, \"responseModels\": { \"application/json\": \"Empty\" }, \"responseParameters\": { \"method.response.header.operator\": false, \"method.response.header.operand_2\": false, \"method.response.header.operand_1\": false }, \"statusCode\": \"200\" }</code></pre> <p/> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html\">AWS CLI</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5302:Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": [ { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html\", \"name\": \"integration\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html\", \"name\": \"integrationresponse\", \"templated\": true } ], \"self\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration\" }, \"integration:delete\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration\" }, \"integration:responses\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integration:update\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration\" }, \"integrationresponse:put\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/{status_code}\", \"templated\": true } }, \"cacheKeyParameters\": [], \"cacheNamespace\": \"0cjtch\", \"credentials\": \"arn:aws:iam::123456789012:role/apigAwsProxyRole\", \"httpMethod\": \"POST\", \"passthroughBehavior\": \"WHEN_NO_MATCH\", \"requestTemplates\": { \"application/json\": \"{\\n \\\"a\\\": \\\"$input.params('operand1')\\\",\\n \\\"b\\\": \\\"$input.params('operand2')\\\", \\n \\\"op\\\": \\\"$input.params('operator')\\\" \\n}\" }, \"type\": \"AWS\", \"uri\": \"arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations\", \"_embedded\": { \"integration:responses\": { \"_links\": { \"self\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integrationresponse:delete\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200\" }, \"integrationresponse:update\": { \"href\": \"/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200\" } }, \"responseParameters\": { \"method.response.header.operator\": \"integration.response.body.op\", \"method.response.header.operand_2\": \"integration.response.body.b\", \"method.response.header.operand_1\": \"integration.response.body.a\" }, \"responseTemplates\": { \"application/json\": \"#set($res = $input.path('$'))\\n{\\n \\\"result\\\": \\\"$res.a, $res.b, $res.op => $res.c\\\",\\n \\\"a\\\" : \\\"$res.a\\\",\\n \\\"b\\\" : \\\"$res.b\\\",\\n \\\"op\\\" : \\\"$res.op\\\",\\n \\\"c\\\" : \\\"$res.c\\\"\\n}\" }, \"selectionPattern\": \"\", \"statusCode\": \"200\" } } }</code></pre> <p/> </div> <div class=\"seeAlso\"> <a href=\"https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html\">AWS CLI</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5309:Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ \"_links\": { \"curies\": [ { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html\", \"name\": \"integration\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html\", \"name\": \"integrationresponse\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html\", \"name\": \"method\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html\", \"name\": \"methodresponse\", \"templated\": true } ], \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\", \"name\": \"GET\", \"title\": \"GET\" }, \"integration:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"method:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\" }, \"method:integration\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"method:responses\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"method:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\" }, \"methodresponse:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}\", \"templated\": true } }, \"apiKeyRequired\": true, \"authorizationType\": \"NONE\", \"httpMethod\": \"GET\", \"_embedded\": { \"method:integration\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integration:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integration:responses\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integration:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integrationresponse:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}\", \"templated\": true } }, \"cacheKeyParameters\": [], \"cacheNamespace\": \"3kzxbg5sa2\", \"credentials\": \"arn:aws:iam::123456789012:role/apigAwsProxyRole\", \"httpMethod\": \"POST\", \"passthroughBehavior\": \"WHEN_NO_MATCH\", \"requestParameters\": { \"integration.request.header.Content-Type\": \"'application/x-amz-json-1.1'\" }, \"requestTemplates\": { \"application/json\": \"{\\n}\" }, \"type\": \"AWS\", \"uri\": \"arn:aws:apigateway:us-east-1:kinesis:action/ListStreams\", \"_embedded\": { \"integration:responses\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integrationresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" }, \"integrationresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" } }, \"responseParameters\": { \"method.response.header.Content-Type\": \"'application/xml'\" }, \"responseTemplates\": { \"application/json\": \"$util.urlDecode(\\\"%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E\\\")\" }, \"statusCode\": \"200\" } } }, \"method:responses\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"methodresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" }, \"methodresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" } }, \"responseModels\": { \"application/json\": \"Empty\" }, \"responseParameters\": { \"method.response.header.Content-Type\": false }, \"statusCode\": \"200\" } } }</code></pre> <p>In the example above, the response template for the <code>200 OK</code> response maps the JSON output from the <code>ListStreams</code> action in the back end to an XML output. The mapping template is URL-encoded as <code>%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E</code> and the output is decoded using the <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference\">$util.urlDecode()</a> helper function.</p> </div> <div class=\"seeAlso\"> <a>MethodResponse</a>, <a>Integration</a>, <a>IntegrationResponse</a>, <a>Resource</a>, <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html\">Set up an API's method</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5327:Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ \"_links\": { \"curies\": { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html\", \"name\": \"methodresponse\", \"templated\": true }, \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\", \"title\": \"200\" }, \"methodresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" }, \"methodresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" } }, \"responseModels\": { \"application/json\": \"Empty\" }, \"responseParameters\": { \"method.response.header.Content-Type\": false }, \"statusCode\": \"200\" }</code></pre> <p/> </div> <div class=\"seeAlso\"> <a>Method</a>, <a>IntegrationResponse</a>, <a>Integration</a> <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html\">Creating an API</a> </div>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5591:credentials":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5593:credentials are required for a put integration.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/apigateway/2015-07-09/service-2.json:5911:Credential={access_key_ID}/20170223/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <pre><code>{ \"_links\": { \"curies\": [ { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html\", \"name\": \"integration\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html\", \"name\": \"integrationresponse\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html\", \"name\": \"method\", \"templated\": true }, { \"href\": \"https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html\", \"name\": \"methodresponse\", \"templated\": true } ], \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\", \"name\": \"GET\", \"title\": \"GET\" }, \"integration:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"method:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\" }, \"method:integration\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"method:responses\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"method:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET\" }, \"methodresponse:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}\", \"templated\": true } }, \"apiKeyRequired\": false, \"authorizationType\": \"NONE\", \"httpMethod\": \"GET\", \"_embedded\": { \"method:integration\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integration:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integration:responses\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integration:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration\" }, \"integrationresponse:put\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}\", \"templated\": true } }, \"cacheKeyParameters\": [], \"cacheNamespace\": \"3kzxbg5sa2\", \"credentials\": \"arn:aws:iam::123456789012:role/apigAwsProxyRole\", \"httpMethod\": \"POST\", \"passthroughBehavior\": \"WHEN_NO_MATCH\", \"requestParameters\": { \"integration.request.header.Content-Type\": \"'application/x-amz-json-1.1'\" }, \"requestTemplates\": { \"application/json\": \"{\\n}\" }, \"type\": \"AWS\", \"uri\": \"arn:aws:apigateway:us-east-1:kinesis:action/ListStreams\", \"_embedded\": { \"integration:responses\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"integrationresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" }, \"integrationresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200\" } }, \"responseParameters\": { \"method.response.header.Content-Type\": \"'application/xml'\" }, \"responseTemplates\": { \"application/json\": \"$util.urlDecode(\\\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\\\")\\n\" }, \"statusCode\": \"200\" } } }, \"method:responses\": { \"_links\": { \"self\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\", \"name\": \"200\", \"title\": \"200\" }, \"methodresponse:delete\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" }, \"methodresponse:update\": { \"href\": \"/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200\" } }, \"responseModels\": { \"application/json\": \"Empty\" }, \"responseParameters\": { \"method.response.header.Content-Type\": false }, \"statusCode\": \"200\" } } }</code></pre> <p>If the <code>OPTIONS</code> is enabled on the resource, you can follow the example here to get that method. Just replace the <code>GET</code> of the last path segment in the request URL with <code>OPTIONS</code>.</p> </div> <div class=\"seeAlso\"> </div>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/workspaces/2015-04-08/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/workspaces/2015-04-08/service-2.json:998:credentials on the Amazon WorkSpaces client. When enabled, users can choose to reconnect to their WorkSpaces without re-entering their credentials. </p>"
 /opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/waiters-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/waiters-2.json:89:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:3129:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:3133:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:3530:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:3940:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:5341:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:5345:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:5941:credentials for the DB instance. </p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:6404:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:6408:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:6491:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-09-01/service-2.json:6495:CredentialPassword":{
 /opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/waiters-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/waiters-2.json:82:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/waiters-2.json:167:credentials",
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/waiters-2.json:252:credentials",
 /opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:3017:credentials for the DB cluster.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:3645:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:3649:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:5376:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:5596:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:6525:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:9851:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:9855:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:10984:credentials for the DB instance.</p>"
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:12071:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:12075:CredentialPassword":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:12405:CredentialArn":{
/opt/splunk/lib/python3.7/site-packages/botocore/data/rds/2014-10-31/service-2.json:12409:CredentialPassword":{
 /opt/splunk/etc/apps/splunk_secure_gateway/default/restmap.conf
/opt/splunk/etc/apps/splunk_secure_gateway/default/restmap.conf:78:credentials]
/opt/splunk/etc/apps/splunk_secure_gateway/default/restmap.conf:79:credentials
/opt/splunk/etc/apps/splunk_secure_gateway/default/restmap.conf:80:credentials_endpoint.py
/opt/splunk/etc/apps/splunk_secure_gateway/default/restmap.conf:82:credentials_endpoint.SignCredentialsHandler
 /opt/splunk/etc/apps/splunk_secure_gateway/default/collections.conf
/opt/splunk/etc/apps/splunk_secure_gateway/default/collections.conf:117:credentials]
 /opt/splunk/etc/apps/splunk_secure_gateway/default/web.conf
/opt/splunk/etc/apps/splunk_secure_gateway/default/web.conf:63:credentials]
/opt/splunk/etc/apps/splunk_secure_gateway/default/web.conf:65:credentials
 /opt/splunk/etc/system/default/inputs.conf
/opt/splunk/etc/system/default/inputs.conf:24:passwd]
 /opt/splunk/etc/system/default/server.conf
/opt/splunk/etc/system/default/server.conf:67:credential:password", "app:credential:sslPassword", "passwords:credential:password", "passwords:credential:sslPassword", "authentication: :bindDNpassword", "authentication: :sslKeysfilePassword", "authentication: :attributeQuerySoapPassword", "authentication: :scriptSecureArguments", "authentication: :sslPassword", "authentication: :accessKey", "web:settings:privKeyPassword", "web:settings:sslPassword", "server:indexer_discovery:pass4SymmKey", "server:clustermanager:pass4SymmKey", "server:dmc:pass4SymmKey", "server:kvstore:sslKeysPassword", "indexes: :remote.s3.access_key", "indexes: :remote.s3.secret_key", "indexes: :remote.s3.kms.key_id", "indexes: :remote.azure.access_key", "indexes: :remote.azure.secret_key", "indexes: :remote.azure.client_id", "indexes: :remote.azure.client_secret", "indexes: :remote.azure.tenant_id", "outputs: :remote.s3.access_key", "outputs: :remote.s3.secret_key", "outputs: :remote.s3.kms.key_id", "outputs: :remote.azure.access_key", "outputs: :remote.azure.secret_key", "outputs: :remote.azure.client_id", "outputs: :remote.azure.client_secret", "outputs: :remote.azure.tenant_id","server:scs:kvservice.principal.client.secret", "federated: :password"                                                                                                                                                    
/opt/splunk/etc/system/default/server.conf:590:passwd            = true
/opt/splunk/etc/system/default/server.conf:618:passwd       = passwd
 /opt/splunk/openssl/openssl.cnf
/opt/splunk/openssl/openssl.cnf:9:$ENV:
/opt/splunk/openssl/openssl.cnf:12:$ENV:

╔══════════╣ Checking all env variables in /proc/*/environ removing duplicates and filtering out useless env vars
DEBUGINFOD_URLS=https://debuginfod.ubuntu.com                                                                                                             
__EGL_VENDOR_LIBRARY_DIRS=/snap/snapd-desktop-integration/343/gnome-platform/usr/share/glvnd/egl_vendor.d
FONTCONFIG_FILE=/snap/snapd-desktop-integration/343/gnome-platform/etc/fonts/fonts.conf
FONTCONFIG_PATH=/snap/snapd-desktop-integration/343/gnome-platform/etc/fonts
GBM_BACKENDS_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gbm
GDK_PIXBUF_MODULEDIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders
GDK_PIXBUF_MODULE_FILE=/home/pierre/snap/snapd-desktop-integration/common/.cache/gdk-pixbuf-loaders.cache
GIO_LAUNCH_DESKTOP=/snap/snapd-desktop-integration/343/gnome-platform/usr/libexec/gio-launch-desktop
GIO_MODULE_DIR=/home/pierre/snap/snapd-desktop-integration/common/.cache/gio-modules
GIO_USE_VFS=local
GI_TYPELIB_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/girepository-1.0:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/girepository-1.0
GNOTIFICATION_BACKEND=freedesktop
GSM_SKIP_SSH_AGENT_WORKAROUND=true
GST_PLUGIN_PATH=/snap/snapd-desktop-integration/343/usr/lib/x86_64-linux-gnu/gstreamer-1.0
GST_PLUGIN_SCANNER=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gstreamer1.0/gstreamer-1.0/gst-plugin-scanner
GST_PLUGIN_SYSTEM_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gstreamer-1.0
GTK_IM_MODULE_FILE=/home/pierre/snap/snapd-desktop-integration/common/.cache/immodules/immodules.cache
GTK_MODULES=gail:atk-bridge
GTK_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gtk-2.0:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/gtk-2.0:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gtk-3.0:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/gtk-3.0:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/gtk-4.0
GTK_USE_PORTAL=1
HOME=/home/pierre
HOME=/home/pierre/snap/snapd-desktop-integration/343
LANG=fr_FR.UTF-8
LD_LIBRARY_PATH=/var/lib/snapd/lib/gl:/var/lib/snapd/lib/gl32:/snap/snapd-desktop-integration/343/usr/lib:/snap/snapd-desktop-integration/343/usr/lib/x86_64-linux-gnu:/snap/snapd-desktop-integration/343/gnome-platform/lib/x86_64-linux-gnu:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib:/snap/snapd-desktop-integration/343/gnome-platform/lib:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/dri:/var/lib/snapd/lib/gl:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/libunity:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/pulseaudio
LD_PRELOAD=:/snap/snapd-desktop-integration/343/gnome-platform/$LIB/bindtextdomain.so
LIBGL_DRIVERS_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/dri
LIBGWEATHER_LOCATIONS_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/libgweather-4/Locations.bin
LIBTHAI_DICTDIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/share/libthai/
LIBVA_DRIVERS_PATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/dri
LISTEN_FDNAMES=dbus.socket
LISTEN_FDNAMES=dirmngr.socket
LISTEN_FDNAMES=gcr-ssh-agent.socket
LISTEN_FDNAMES=gnome-keyring-daemon.socket
LISTEN_FDNAMES=pipewire-pulse.socket
LISTEN_FDNAMES=pipewire.socket:pipewire.socket
LISTEN_FDNAMES=speech-dispatcher.socket
LISTEN_FDNAMES=std
LISTEN_FDS=1
LISTEN_FDS=2
LOCPATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/locale
LOGNAME=pierre
MANAGERPID=10555
MEMORY_PRESSURE_WRITE=c29tZSAyMDAwMDAgMjAwMDAwMAA=
NOTIFY_IGNORE_PORTAL=1
NOTIFY_SOCKET=/run/user/1004/systemd/notify
PIPEWIRE_CONFIG_DIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/share/pipewire
PIPEWIRE_MODULE_DIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/pipewire-0.3
PULSE_SERVER=unix:/run/user/1004/snap.snapd-desktop-integration/../pulse/native
PWD=/home/pierre
PWD=/var/snap/snapd-desktop-integration/343
PYTHONPATH=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/python3.10:/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/python3/dist-packages
QT_ACCESSIBILITY=1
SHELL=/bin/bash
SHELL=/bin/sh
SHLVL=0
SNAP_ARCH=amd64
SNAP_COMMON=/var/snap/snapd-desktop-integration/common
SNAP_CONTEXT=YTf15o9qEcL3l3TsC85REJY529ZKfcnc4QWYu4f-7cgB3MZZVVfi
SNAP_COOKIE=YTf15o9qEcL3l3TsC85REJY529ZKfcnc4QWYu4f-7cgB3MZZVVfi
SNAP_DATA=/var/snap/snapd-desktop-integration/343
SNAP_DESKTOP_RUNTIME=/snap/snapd-desktop-integration/343/gnome-platform
SNAP_EUID=1004
SNAP_INSTANCE_KEY=
SNAP_INSTANCE_NAME=snapd-desktop-integration
SNAP_LAUNCHER_ARCH_TRIPLET=x86_64-linux-gnu
SNAP_LIBRARY_PATH=/var/lib/snapd/lib/gl:/var/lib/snapd/lib/gl32
SNAP_NAME=snapd-desktop-integration
SNAP_REAL_HOME=/home/pierre
SNAP_REEXEC=
SNAP_REVISION=343
SNAP=/snap/snapd-desktop-integration/343
SNAP_UID=1004
SNAP_USER_COMMON=/home/pierre/snap/snapd-desktop-integration/common
SNAP_USER_DATA=/home/pierre/snap/snapd-desktop-integration/343
SNAP_VERSION=0.9
SPA_PLUGIN_DIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/lib/x86_64-linux-gnu/spa-0.2
SSH_AUTH_SOCK=/run/user/1004/gcr/ssh
SSH_AUTH_SOCK=/run/user/1004/gnupg/S.gpg-agent.ssh
SSH_CLIENT=192.168.100.10 47134 22
SSH_CONNECTION=192.168.100.10 47134 192.168.1.250 22
SSH_TTY=/dev/pts/0
TEMPDIR=/tmp
TERM=xterm-256color
TMPDIR=/tmp
USER=pierre
VDPAU_DRIVER_PATH=/usr/lib/x86_64-linux-gnu/vdpau/
XCURSOR_PATH=/snap/snapd-desktop-integration/343/data-dir/icons:/snap/snapd-desktop-integration/343/gnome-platform/usr/share/icons
XDG_CACHE_HOME=/home/pierre/snap/snapd-desktop-integration/common/.cache
XDG_CONFIG_DIRS=/snap/snapd-desktop-integration/343/gnome-platform/etc/xdg
XDG_CONFIG_HOME=/home/pierre/snap/snapd-desktop-integration/343/.config
XDG_DATA_DIRS=/home/pierre/snap/snapd-desktop-integration/343/.local/share:/home/pierre/snap/snapd-desktop-integration/343:/snap/snapd-desktop-integration/343/data-dir:/snap/snapd-desktop-integration/343/usr/share:/snap/snapd-desktop-integration/343/gnome-platform/usr/share:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop
XDG_DATA_DIRS=/usr/local/share/:/usr/share/:/var/lib/snapd/desktop
XDG_DATA_DIRS=/usr/share/gnome:/usr/local/share:/usr/share:/var/lib/snapd/desktop
XDG_DATA_HOME=/home/pierre/snap/snapd-desktop-integration/343/.local/share
XDG_RUNTIME_DIR=/run/user/1004
XDG_RUNTIME_DIR=/run/user/1004/snap.snapd-desktop-integration
XKB_CONFIG_ROOT=/snap/snapd-desktop-integration/343/gnome-platform/usr/share/X11/xkb
XLOCALEDIR=/snap/snapd-desktop-integration/343/gnome-platform/usr/share/X11/locale


                                ╔════════════════╗
════════════════════════════════╣ API Keys Regex ╠════════════════════════════════                                                                        
                                ╚════════════════╝                                                                                                        
Regexes to search for API keys aren't activated, use param '-r' 

