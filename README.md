# PUP-website-clone

This repository is for our Elective 1 on Cybersecurity, where we are tasked to make a virus that redirects the user to our university's website. 

### Specifications

```markdown
Create your first virus 

- executable file 
- will open browser and PUP website automatically 
- will close all other website
- pop up message " Welcome to PUP"

```

### Demonstration
![demo](https://github.com/user-attachments/assets/c9003fb3-0f64-4db4-941a-d0c9e416802c)


### Limitations

1. This program is OS-specific and works only on Linux.
2. The target browser for this executable is `brave-browser`.

### Usage

1. Ensure that `payload.sh` is executable. If you're unsure, use the command below:

    ```bash
    chmod u+x ./payload.sh
    ```

2. Execute the payload:

    ```bash
    ./payload.sh
    ```

### How it works?

I set up a clone of the university's website in this repository. You can visit it in this repo. I used GitHub Pages for the free hosting.

I also added a custom `script.js` to the cloned website that triggers an alert message when opened.

For the `payload.sh`, to close the current browser, I used the `ps` command to list all running processes of `brave`. Then, I `kill` all `brave` processes using a for loop.

Finally, I set the next instruction to `sleep` for some time. Then, execute a `brave-browser` CLI command to open the cloned university page.
