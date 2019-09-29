# Command Line Adventure (2010-10-01)

## Setup

0. Create user account

    ```
    $ useradd -m -s /bin/bash lug00
    $ passwd lug00
    ```

1. Scrunch `GUIDE`

    ```
    $ scrunch GUIDE > GUIDE.SCRUNCHED
    ```

2. Copy `GUIDE.SCRUNCHED` to home directory

    ```
    $ cp GUIDE.SCRUNCHED ~lug00/GUIDE
    ```

3. Append to ~/.bashrc

    ```
    $ echo sh ~/GUIDE >> ~lug00/.bashrc
    ```
