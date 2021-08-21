# Setting the old path
let path-name = (if ((sys).host.name == "Windows") { "Path" } { "PATH" })
let-env $path-name = $nu.env._OLD_VIRTUAL_PATH

# Unleting the environment variables that were created when activating the env
unlet-env VIRTUAL_ENV
unlet-env _OLD_VIRTUAL_PATH
unlet-env PROMPT_STRING
unlet-env PYTHONEXECUTABLE

unalias pydoc
unalias deactivate
