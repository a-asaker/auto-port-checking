# Auto Port Checking:
  Automatiting My Port Checker Project With Bash.

  Both files [ `Port_checker.py` and `port_check.sh`] Must Be At The Same Dirictory/Folder.

  You Can Find `Port_checker.py` In This Repository :
          
          https://github.com/a-asaker/port-checker

  By : a-asaker.
          

# How T Use : 
      
      ~ Usage : ./port_check.sh [ host ] [ Port1 ] [ Port2 ]
            [ Port3 ] [ Ports_list1 ] ..
        - host : 
          ~ -l => local ip address, for this device.
          ~ -p or -r => public/remote ip address, for this device.
          ~ <ip address> => any other device ip address.
        - ports : ~ if any port is under 1024, then you should run it 
              with "sudo" [as a root].
      ~ Example : ./port_check.sh -l 214 2334 3563
      ~ Example : ./port_check.sh -r 214 $(seq 45 578)
      ~ Example : ./port_check.sh 231.45.2.67 $(seq 1 100) 443 12455'
