# One can quickly see the number of words in a raw text file using the "wc" 
# linux/bash command. Type the following into as a terminal command, in the 
# directory containing the files in question:

wc -w *

# The -w option specifies that words should be counted, the * is a wildcard 
# character indicating that the command should be applied to all files in the 
# current working directory

# The output is a list of all the files in the working directory and their 
# word counts, plus a total which in the case of the current example, this is 
# pretty verbose

# To avoid having to scroll down a long list of files, you can "pipe" or pass 
# the output of wc directly into a grep command. Grep can be used to show all the 
# lines of output that don't contain "100", or "total" in the case of the 
# final line of output from wc, like so: 
 
wc -w * | grep "100\|total" -v

# The above will show any files in the current working directory that don't 
# contain 100 words
