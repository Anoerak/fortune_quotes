function fortune {
    # We convert the .json file into an array.
    declare -A quotearray
    while IFS="=" read -r key value 
    do
        quotearray[$key]="$value"
    done < <(jq -r 'to_entries|map("\(.key)=\(.value)")|.[]' C:/here/is/the/path/to/your/.json/file/fortune.json)

    # We get a random number between 0 and the length of the array and we get the quote from the array.
    quotetoprint="${quotearray[$((RANDOM % ${#quotearray[@]}))]}"
    # # We remove the { and } from the quote
    quotetoprint="${quotetoprint//\"}"
    # # We remove the "quoteText" and "quoteAuthor" from the quote
    quotetoprint="${quotetoprint//quoteText:}"
    quotetoprint="${quotetoprint//,quoteAuthor:/$'\n'}"
    # # We remove the { and } from the quote
    quotetoprint="${quotetoprint//\{}"
    quotetoprint="${quotetoprint//\}}"
    # We print the quote
    echo "$quotetoprint"
}

# Uncomment the following line to get a quote when opening your Gitbash terminal
# fortune

# Uncomment the following line if you already have "cowsay" installed and want to combine it with the fortune quote
# fortune | cowsay