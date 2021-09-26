# There are multiple ways one can rename files, though doing so using a graphical user interface type environment can be laborious

# the following is a short script that you can run inside a linux terminal environment
# the first and last lines instantiate a simple for loop that iterate over every file in the current working directory
# the middle line uses the bash "mv" command to rename the files: "$file" is the current file being iterated over, $(basename "$file" .csv) returns the filename without any suffixes or the .csv extension, the .dat at the end adds the required extension

for file in *.csv; do
	mv "$file" "$(basename "$file" .csv).dat"
done

# the above can be typed manually in the directory containing the files with the incorrect extension, or this .sh file can be copied to the directory and run using the command "$ sh FILENAME.sh"
