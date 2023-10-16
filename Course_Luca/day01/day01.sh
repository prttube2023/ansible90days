# All adhoc commands from Luca
ansible -m ping localhost

# get facts of any machine, you can substite localhost with your own host/IP Address
ansible -m setup localhost

# enter the variables on the fly using --extra-vars="nameofthevariable=valueofthevariable"
ansible-playbook -i inventory --extra-vars="timetowait=5" playbook-pause.yaml