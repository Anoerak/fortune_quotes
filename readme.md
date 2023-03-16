# Fortune quotes alternative for Gitbash on Windows

## Installation

1. Get access to your .bashrc file. If you don't have one, create it.
   If you're using "scoop", you should find it in **`C:\Users\YOUR_USER_NAME\scoop\apps\git\current\etc\bash.bashrc`**, if installed with Gitbash directly, it should be in **`C:\Program Files\Git\etc\bash.bashrc`**.
2. Add the "fortune" folder where it suits you. You can find it in this repository.
3. Add the "fortune" function to your .bashrc file. You can find it in the bash.bashrc file in this repository.
4. Replace the **`C:/here/is/the/path/to/your/.json/file/fortune.json`** line from the bash.bashrc file with the path to your fortune.json file (the file inside the folder from step 2).
5. Save the .bashrc file and restart Gitbash.

## Usage

1. Open Gitbash.
2. Type `fortune` and press enter.
3. Enjoy your quote.

## Notes

-   The fortunes are in English. If you want to translate them, you can do it in the fortune.json file.
-   The fortunes file contains +5000 thousands quotes.

-   For more fun, you can combine the fortune command with the cowsay command. You need to install the _`cowsay`_ program before. You can do it using the "scoop" program. you can find it here: [Scoop for Windows](https://scoop.sh/).
    Once installed, just type _`scoop install cowsay`_ and press enter. Then, you can type _`fortune | cowsay`_ and press enter.

-   If you want to get a fortune quote when opening Gitbash, you can uncomment the `fortune` command to the end of the .bashrc file by removing the # character. Ditto for the automation of the cowsay command.

## Credits

Thanks to [James F Thompson](https://github.com/JamesFT) for the json file and the +5000 quotes.
