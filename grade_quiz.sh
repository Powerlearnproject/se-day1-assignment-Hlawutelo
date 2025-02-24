#!/bin/bash

# 1. Run your quiz program (REPLACE with your actual command)
QUIZ_OUTPUT=$(./your_quiz_program b)  # Assuming 'b' is the answer you're checking

# 2. Check the answer (ADAPT to your quiz output format)
CORRECT_ANSWER="b) The process of designing, developing, and maintaining software"

if [[ "$QUIZ_OUTPUT" == "$CORRECT_ANSWER" ]]; then
  SCORE=10
  echo "Correct Answer!"
else
  SCORE=0
  echo "Incorrect Answer. Got: '$QUIZ_OUTPUT', Expected: '$CORRECT_ANSWER'"
fi

# 3. Set the maximum score
MAX_SCORE=10

# 4. Output the score for GitHub Actions (IMPORTANT)
echo "::set-output name=quiz-1_score::$SCORE"
echo "::set-output name=quiz-1_max_score::$MAX_SCORE"

# 5. (Optional) Print a summary for your logs
echo "Total points for quiz-1: $SCORE/$MAX_SCORE"
