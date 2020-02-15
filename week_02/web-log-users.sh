#!/bin/sh

# This first line allows us to get just the values, excluding the "user"
#grep -o "user-.*" access.current | awk '{print $1;}' | awk -F'-' '{print $2;}' | sort -u | uniq

grep -o "user-.*" access.current | awk '{print $1;}' | sort -u | uniq

# the -o // --only-matching grep flag allows us to only print the matched parts of the matching line
# this means that it will begin with the required pattern
# We awk for the first column in the output, then awk for the second column split by the char "-"
# uniq, on it's own, will only detect and remove adjacent duplicate lines. Therefore, we sort the data first. 