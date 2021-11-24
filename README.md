# teste
1. https://overthewire.org/wargames/bandit/bandit0.html << Expectation to get up to lvl 15 as a minimum, proof of solutions to be provided.
bonus points: all levels

A: Results saved in Bandit.txt

2. Bash script to be created that iterates through a hardcoded list of ips, leverages the result of the curl to see if the page is up or down:
-use the curl to connect to the web page
-create script that determines if the page is up, i.e. serves a status code 200, or serves a certain button/page element
-If the page is up, show message with green text in terminal, page is up
-if not up, show message with red text in terminal, page is down"
Script can be evaluated, amount of requests for support can be quantified
Bonus points for any proactive thoughs about error codes, exit conditions/protecting variables

A: Results saved in check_ips.sh script

3. Local setup for 2 VMs. Bonus points for Vagrant automation for both. SSH should be setup with key auth.

A: Results in Vagrantfile and ssh_init.sh
