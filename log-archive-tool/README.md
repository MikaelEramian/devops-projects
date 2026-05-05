# Log Archive Tool



A bash script that compresses a log directory into a `.tar.gz` file and stores it with a timestamp. Logs each archive to a record file for tracking.



## How to run


to make it executable:

```bash

chmod +x log-archive.sh

```

to then run it:

```bash

sudo ./log-archive.sh /var/log

```


`sudo` is required since some system logs are restricted to root only.


Archives are saved to `\~/log\_archives/` and each run is logged to `\~/log\_archives/archive\_log.txt`.
This project is part of [roadmap.sh](https://roadmap.sh/projects/log-archive-tool) DevOps projects.

