# bash_template

About shebang. Why 
```python
#!/usr/bin/env bash
``` 
is better than 
```python
#!/bin/bash
```  
see [here](https://stackoverflow.com/questions/21612980/why-is-usr-bin-env-bash-superior-to-bin-bash)

<hr>

About *set* command read [this article](https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/)

<hr>

See [here](https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script/246128#246128) how to get full path to script directory

<hr>

The usage function is like minimal documentation for developers and man on my script for users                

Cleanup function is triggered by trap(in case of normal completion, or due to an error or an external signal) command and used for cleaning the temporary files script has created.
