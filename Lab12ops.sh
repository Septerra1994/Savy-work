#!/bin/bash
# Today we are going to use a case statment instead of a conditional
# Have the program ask how your day is and echo out a response for good or bad
# Case statment format is a little different so please look up how this would be formated
# https://linuxize.com/post/bash-case-statement/
echo "How is your day going? (good/bad/okay)"

read day

case "$day" in
(good|Good)
echo "That's great to hear! Keep it up!" ;;
(bad|Bad)
 echo "I'm sorry to hear that. Tomorrow is a new day!" ;;
 (okay|Okay)
 echo "Not bad, not great — hope it gets better!" ;;
 (*)
echo "I didn't understand that. Please answer with good, bad, or okay."
;;
esa