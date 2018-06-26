// grep date/time
grep ".set(\"content\"," FILENAME_PATH --color  | awk -F"</h4>" '{print $1}' | awk -F"<h4>" '{print $2}'

// grep address
grep ".set(\"content\"," FILENAME_PATH --color  | awk -F"</h4>" '{print $2}' | awk -F"</p>" '{print $1}' | sed 's/<p>//g'

// grep photo url
grep ".set(\"content\"," FILENAME_PATH --color  | awk -F"</h4>" '{print $2}' | grep -oE 'http://[[:alpha:]].*jpg'