#!/bin/bash

# Number of tests
NUM_TESTS=5

# Counter for correct answers
correct_answers=0

# Default output variable (can be set through --output option)
output=""

# Parse command line arguments for --output
while [[ "$1" != "" ]]; do
    case $1 in
        --output )  shift
                    output=$1
                    ;;
        * )         echo "Invalid option: $1"
                    exit 1
    esac
    shift
done

# Ensure output is set
if [ -z "$output" ]; then
    echo "Usage: $0 --output <output-name>"
    exit 1
fi

# Function to activate or deactivate adaptive_sync
toggle_adaptive_sync() {
    if [ "$1" -eq 1 ]; then
        wlr-randr --output "$output" --adaptive-sync enabled
    else
        wlr-randr --output "$output" --adaptive-sync disabled
    fi
}

# Run the tests
for ((i=1; i<=NUM_TESTS; i++)); do
    # Randomize adaptive_sync (0 for off, 1 for on)
    adaptive_sync_state=$((RANDOM % 2))
    
    # Toggle adaptive_sync
    toggle_adaptive_sync $adaptive_sync_state
    
    # Ask user for the current state
    echo "Is adaptive_sync enabled on $output? (yes/no)"
    read user_input
    
    # Convert user input to lowercase
    user_input=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
    
    # Determine the correct answer
    if [ $adaptive_sync_state -eq 1 ] && [ "$user_input" == "yes" ]; then
        correct_answers=$((correct_answers + 1))
    elif [ $adaptive_sync_state -eq 0 ] && [ "$user_input" == "no" ]; then
        correct_answers=$((correct_answers + 1))
    fi
done

# Display the number of correct answers
echo "You got $correct_answers out of $NUM_TESTS correct."

# Reset adaptive_sync to a default state (optional)
# wlr-randr --output $output --adaptive-sync off
