# Lesson notes

- you can have list for the following items
    - msg
    - notify
- like task, handler is also a kind of task
- you can have multiple handler within a handler without using register
- handlers can be forced by using meta flush handlers because handlers are
    - only once
    - and at the end.
- when you want to download something, you might a proxy attached.
    This can be achieved using environment and defining proxy variable. refer
    page.88 in the book. You can define inline or using proxy_vars variable.
- you can provision vm using vagrant and attached playbook which is exactly as bootstrapping.

## Some ideas
- We can update pi-hole with ansible
- We can check if pi-hole has ansible module
- We can configure cron job for checking update
- Think always from reducing the playbook size
- Make playbook smaller and think from roles perspective i.e. make it template which can
    be used again and again

## Little bit of linux
 - ```cd -``` previous command
 - ``` sudo !! ``` `!!` refers to previous cmd
 - ``` ctr + r``` keep pressing to go back
 - ```HISTTIMEFORMAT="%Y-%m-%d %T "``` to get history with time stamps. %Y-%m-%d is the same as %F in bash. Thus HISTTIMEFORMAT='%F %T ' gives the same results in fewer keystrokes.
 - ```ctrl + u``` to delete entire line on terminal
