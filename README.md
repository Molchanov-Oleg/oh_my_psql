
Welcome!

Before using:
- Please copy .psqlrc to your home directory or just create symbolic link.
- Specify the path to the *.sql files in OM_INSTALL_DIR variable (edit file .psqlrc).

Usage notes:
- you can execute scripts using short command related to script's name begining with colon symbol (:) e.g.
```
    psql-prompt => :cls
        the ":cls" command display cluster details
```
- where is a ":help" command which will ask you a pattern of script (shell like pattern)
  and it will return short description of commands e.g.
```
    psql-prompt => :help
    Enter help topic (* wildcard): cls
    :cls             ### cluster details
```
  or
```
    psql-prompt => :help
    Enter help topic (* wildcard): ps*
```

With kind regards,
oh_my_psql
