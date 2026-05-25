#!/bin/bash

clear

# Initialize the user's score at zero
SCORE=0

#!/bin/bash

# Clear the screen for a clean game start
clear

# Initialize the user's score at zero
SCORE=0

echo "================================================="
echo "       👑  THE ULTIMATE XO TRIVIA GAME  👑       "
echo "================================================="
echo "Test your knowledge. Type your answer and press Enter."
echo "-------------------------------------------------"
echo ""

# --- QUESTION 1 ---
echo "Question 1: What is The Weeknd's real legal name?"
read -p "Your Answer: " reply1

# Converting user input to lowercase to prevent typos from breaking it
if [ "${reply1,,}" == "abel tesfaye" ] || [ "${reply1,,}" == "abel" ]; then
    echo "✅ Correct! +1 point."
    ((SCORE++))
else
    echo "❌ Wrong! The correct answer is Abel Tesfaye."
fi
echo "-------------------------------------------------"

# --- QUESTION 2 ---
echo "Question 2: Which album features the hit song 'Blinding Lights'?"
read -p "Your Answer: " reply2

if [ "${reply2,,}" == "after hours" ]; then
    echo "✅ Correct! +1 point."
    ((SCORE++))
else
    echo "❌ Wrong! It was After Hours."
fi
echo "-------------------------------------------------"

# --- QUESTION 3 ---
echo "Question 3: How many songs are on the 'My Dear Melancholy' project?"
read -p "Your Answer: " reply3

if [ "$reply3" == "6" ]; then
    echo "✅ Correct! +1 point."
    ((SCORE++))
else
    echo "❌ Wrong! There are exactly 6 songs."
fi
echo "-------------------------------------------------"

# --- GAME OVER SCOREBOARD ---
clear
echo "================================================="
echo "                GAME OVER 🎮                     "
echo "================================================="
echo "Your Final Score: $SCORE / 3"

# Performance evaluation based on final score
if [ $SCORE -eq 3 ]; then
    echo "Vibe Level: True XO Legend! 🔥"
elif [ $SCORE -eq 2 ]; then
    echo "Vibe Level: Solid Fan! You know your discography. 🙌"
else
    echo "Vibe Level: Casual Listener. Go stream Hurry Up Tomorrow! 🎧"
fi
echo "================================================="
