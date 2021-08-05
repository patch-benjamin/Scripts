var="$(pbpaste)"
declare -a modifiedStrings=()
read -ra unmodifiedStrings -d '' <<<"$var"
for str in "${unmodifiedStrings[@]}"
do
string="$(tr '[:lower:]' '[:upper:]' <<< ${str:0:1})${str:1}"
modifiedStrings+=("$string")
done

printf -v output "%s\n" "${modifiedStrings[@]}"

echo "$output" | pbcopy
