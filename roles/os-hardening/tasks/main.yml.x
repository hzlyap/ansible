---
#- name: Mount /tmp
#  mount:
#    path: /tmp
#    src: tmpfs
#    fstype: tmpfs
#    opts: mode=1777,strictatime,noexec,nodev,nosuid
#    state: mounted

#- name: Mount /var
#  mount:
#    path: /var
#    src: /dev/xvdb1
#    fstype: tmpfs
#    state: mounted

#- name: Mount /var/tmp
#  mount:
#    path: /var/tmp
#    src: /dev/xvdc1
#    fstype: ext4
#    opts: noexec,nodev,nosuid
#    state: mounted

#- name: Mount /var/log
#  mount:
#    path: /var/log
#    src: /dev/xvdh1
#    fstype: ext4
#    state: mounted

#- name: Mount /var/log/audit
#  mount:
#    path: /var/log/audit
#    src: /dev/xvdi1
#    fstype: ext4
#    state: mounted

#- name: Mount /home
#  mount:
#    path: /home
#    src: /dev/xvdf1
#    fstype: ext4
#    opts: nodev
#    state: mounted

#- name: Mount /dev/shm
#  mount:
#    path: /dev/shm
#    src: tmpfs
#    fstype: tmpfs
#    opts: noexec,nodev,nosuid
#    state: mounted

#- name: Ensure chargen services are not enabled
#  command: "{{ item }}"
#  with_items:
#    - chkconfig chargen-dgram off
#    - chkconfig chargen-stream off

#- name: Ensure daytime services are not enabled
#  command: "{{ item }}"
#  with_items:
#    - chkconfig daytime-dgram off
#    - chkconfig daytime-stream off

#- name: Ensure discard services are not enabled
#  command: "{{ item }}"
#  with_items:
#    - chkconfig discard-dgram off
#    - chkconfig discard-stream off

#- name: Ensure echo services are not enabled
#  command: "{{ item }}"
#  with_items:
#    - chkconfig echo-dgram off
#    - chkconfig echo-stream off

#- name: Ensure time services are not enabled
#  command: "{{ item }}"
#  with_items:
#    - chkconfig time-dgram off
#    - chkconfig time-stream off

#- name: Ensure tftp server is not enabled
#  command: chkconfig tftp off

#- name: Ensure xinetd is not enabled
#  command: systemctl disable xinetd

#- name: Ensure Avahi Server is not enabled
#  command: systemctl disable avahi-daemon

#- name: Ensure CUPS is not enabled
#  command: systemctl disable cups

#- name: Ensure DHCP Server is not enabled
#  command: systemctl disable dhcpd

#- name: Ensure LDAP server is not enabled
#  command: systemctl disable slapd

#- name: Ensure DNS Server is not enabled
#  command: systemctl disable named

#- name: Ensure FTP Server is not enabled
#  command: systemctl disable vsftpd

#- name: Ensure HTTP server is not enabled
#  command: systemctl disable httpd

#- name: Ensure IMAP and POP3 server is not enabled
#  command: systemctl disable dovecot

#- name: Ensure Samba is not enabled
#  command: systemctl disable smb

#- name: Ensure HTTP Proxy Server is not enabled
#  command: systemctl disable squid

#- name: Ensure SNMP Server is not enabled
#  command: systemctl disable snmpd

#- name: Ensure NIS Server is not enabled
#  command: systemctl disable ypserv

#- name: Ensure rsh server is not enabled
#  command: "{{ item }}"
#  with_items:
#    - systemctl disable rsh.socket
#    - systemctl disable rlogin.socket
#    - systemctl disable rexec.socket

#- name: Ensure telnet server is not enabled
#  command: systemctl disable telnet.socket

#- name: Ensure tftp server is not enabled
#  command: systemctl disable tftp.socket

#- name: Ensure talk server is not enabled
#  command: systemctl disable ntalk

#- name: Ensure default deny firewall policy
#  command: "{{ item }}"
#  with_items:
#    - iptables -P INPUT DROP
#    - iptables -P OUTPUT DROP
#    - iptables -P FORWARD DROP

#- name: Reload auditd
#  service:
#    name: auditd
#    state: reloaded
