# Additional Content for Linux & Shell Scripting Guide

## Missing Topics & Enhancements

---

### 1. Environment Variables

**What are Environment Variables?**

Environment variables are dynamic named values that contain information about the shell environment. They affect the way processes run on your system.

**Common Environment Variables:**

```bash
echo $PATH           # Shows the directories where executables are located
echo $HOME           # Shows the home directory of the current user
echo $USER           # Shows the current username
echo $PWD            # Shows the present working directory
echo $SHELL          # Shows the default shell
```

**Setting Environment Variables:**

```bash
# Temporary (only for current session)
export MY_VAR="Hello World"
echo $MY_VAR

# To make it permanent, add to ~/.bashrc or ~/.bash_profile
export DATABASE_URL="localhost:5432"
```

**Using Variables in Scripts:**

```bash
#!/bin/bash

# Assign variables
NAME="Anurag"
AGE=25
CITY="Bangalore"

# Use variables
echo "My name is $NAME"
echo "I am $AGE years old"
echo "I live in $CITY"

# Concatenate variables
FULL_INFO="$NAME is $AGE years old and lives in $CITY"
echo $FULL_INFO
```

---

### 2. Shell Script Functions

**Why Use Functions?**

Functions allow you to reuse code blocks and make scripts more organized and maintainable.

**Function Syntax:**

```bash
#!/bin/bash

# Define a function
function_name() {
    echo "This is a function"
    echo "Functions help organize code"
}

# Call the function
function_name
```

**Function with Parameters:**

```bash
#!/bin/bash
####################
# Author: Anurag
# Date: 09/12/2025
#
# This script demonstrates functions with parameters
#
# Version: v1
####################

# Function that takes parameters
greet() {
    local name=$1        # First parameter
    local greeting=$2    # Second parameter
    
    echo "$greeting, $name!"
}

# Function to calculate sum
add() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo $sum
}

# Call functions
greet "Anurag" "Hello"
result=$(add 10 20)
echo "Sum is: $result"
```

**Return Values from Functions:**

```bash
#!/bin/bash

# Function that returns a value
is_file_exists() {
    if [ -f "$1" ]; then
        return 0  # Success (file exists)
    else
        return 1  # Failure (file doesn't exist)
    fi
}

# Using the function
if is_file_exists "test.txt"; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

---

### 3. Reading User Input

**Basic Input/Output:**

```bash
#!/bin/bash

# Read a single line of input
echo "What is your name?"
read name
echo "Hello, $name!"

# Read multiple inputs
read -p "Enter username: " username
read -p "Enter password: " password
echo "Username: $username"
```

**Reading from Command Arguments:**

```bash
#!/bin/bash

# Access command-line arguments
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Total arguments: $#"

# Example: ./script.sh arg1 arg2 arg3
```

**Conditional Input Handling:**

```bash
#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <filename> <action>"
    echo "Actions: read, write, delete"
    exit 1
fi

filename=$1
action=$2

case $action in
    read)
        cat $filename
        ;;
    write)
        echo "Enter content to write:"
        read content
        echo $content >> $filename
        ;;
    delete)
        rm $filename
        echo "File deleted"
        ;;
    *)
        echo "Unknown action"
        ;;
esac
```

---

### 4. String Manipulation

**String Operations:**

```bash
#!/bin/bash

text="Hello World"

# Get string length
echo ${#text}              # Output: 11

# Substring extraction
echo ${text:0:5}           # Output: Hello
echo ${text:6}             # Output: World

# String replacement
echo ${text/World/DevOps}  # Output: Hello DevOps

# Convert to uppercase (bash 4+)
echo ${text^^}             # Output: HELLO WORLD

# Convert to lowercase (bash 4+)
echo ${text,,}             # Output: hello world

# Remove leading/trailing whitespace
trimmed=$(echo "  hello  " | xargs)
echo "[$trimmed]"          # Output: [hello]
```

**String Comparison:**

```bash
#!/bin/bash

str1="bash"
str2="bash"
str3="python"

# String equality
if [ "$str1" = "$str2" ]; then
    echo "Strings are equal"
fi

# String inequality
if [ "$str1" != "$str3" ]; then
    echo "Strings are not equal"
fi

# Check if string is empty
if [ -z "$var" ]; then
    echo "Variable is empty"
fi

# Check if string is not empty
if [ -n "$var" ]; then
    echo "Variable is not empty"
fi
```

---

### 5. Arrays in Shell Scripting

**Working with Arrays:**

```bash
#!/bin/bash

# Declare an array
fruits=("Apple" "Banana" "Orange" "Mango")

# Access array elements
echo ${fruits[0]}          # Output: Apple
echo ${fruits[1]}          # Output: Banana

# Get all elements
echo ${fruits[@]}          # Output: Apple Banana Orange Mango

# Get array length
echo ${#fruits[@]}         # Output: 4

# Loop through array
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done

# Add element to array
fruits+=("Grapes")

# Remove element
unset fruits[1]
```

---

### 6. Advanced Error Handling

**Exit Codes:**

```bash
#!/bin/bash
set -e          # Exit on error
set -o pipefail # Exit if pipe fails

# Every command returns an exit code (0 = success, non-zero = failure)
ls /home/user
echo "Exit code: $?"     # 0 if successful, non-zero if failed

# Check specific exit codes
if [ $? -eq 0 ]; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
```

**Error Handling with Try-Catch Pattern:**

```bash
#!/bin/bash
####################
# Author: Anurag
# Date: 09/12/2025
#
# Script demonstrating error handling
#
# Version: v1
####################

set -e
set -o pipefail

# Function to handle errors
handle_error() {
    local line_number=$1
    echo "Error occurred at line $line_number"
    exit 1
}

# Trap errors and call the function
trap 'handle_error $LINENO' ERR

# Your commands here
echo "Starting process..."
cd /valid/directory || { echo "Directory not found"; exit 1; }
echo "Process completed successfully"
```

---

### 7. File Testing Conditions

**File Test Operators:**

```bash
#!/bin/bash

file="test.txt"

# Check if file exists
if [ -f "$file" ]; then
    echo "File exists"
fi

# Check if directory exists
if [ -d "/home/user" ]; then
    echo "Directory exists"
fi

# Check if file is readable
if [ -r "$file" ]; then
    echo "File is readable"
fi

# Check if file is writable
if [ -w "$file" ]; then
    echo "File is writable"
fi

# Check if file is executable
if [ -x "$file" ]; then
    echo "File is executable"
fi

# Check if file is empty
if [ -s "$file" ]; then
    echo "File is not empty"
else
    echo "File is empty"
fi

# Check if file is a symbolic link
if [ -L "$file" ]; then
    echo "File is a symbolic link"
fi
```

---

### 8. Case Statements

**Case Statement Syntax:**

```bash
#!/bin/bash

echo "What is your favorite operating system?"
read os

case $os in
    Linux)
        echo "Great choice! Linux is powerful and flexible."
        ;;
    Windows)
        echo "You prefer Windows for its user-friendly interface."
        ;;
    macOS)
        echo "Nice! macOS combines Unix power with user experience."
        ;;
    *)
        echo "Unknown operating system"
        ;;
esac
```

**Case with Patterns:**

```bash
#!/bin/bash

filename=$1

case $filename in
    *.txt)
        echo "This is a text file"
        ;;
    *.log)
        echo "This is a log file"
        ;;
    *.sh)
        echo "This is a shell script"
        ;;
    *)
        echo "Unknown file type"
        ;;
esac
```

---

### 9. While and Until Loops

**While Loop:**

```bash
#!/bin/bash

# While loop basic syntax
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done
```

**Until Loop:**

```bash
#!/bin/bash

# Until loop (opposite of while - runs until condition is true)
counter=1
until [ $counter -gt 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done
```

**Infinite Loop with Break:**

```bash
#!/bin/bash

while true; do
    read -p "Enter command (or 'exit' to quit): " cmd
    
    if [ "$cmd" = "exit" ]; then
        break  # Exit the loop
    fi
    
    echo "You entered: $cmd"
done
```

---

### 10. Logging and Output Redirection

**Output Redirection:**

```bash
#!/bin/bash

# Redirect stdout to file (overwrite)
echo "Message" > output.txt

# Redirect stdout to file (append)
echo "Message" >> output.txt

# Redirect stderr to file
command_that_fails 2> error.log

# Redirect both stdout and stderr
command 2>&1 > all_output.log

# Discard output
command > /dev/null 2>&1

# Log to file with timestamp
echo "$(date): Process started" >> process.log
```

**Creating Log Files in Scripts:**

```bash
#!/bin/bash
####################
# Author: Anurag
# Date: 09/12/2025
#
# Script with logging functionality
#
# Version: v1
####################

LOG_FILE="script_$(date +%Y%m%d_%H%M%S).log"

log_message() {
    local level=$1
    shift  # Remove first argument
    local message="$@"
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] [$level] $message" | tee -a "$LOG_FILE"
}

log_message "INFO" "Script execution started"
log_message "DEBUG" "Processing files..."
log_message "ERROR" "An error occurred"
log_message "INFO" "Script execution completed"
```

---

### 11. Useful Utilities for DevOps

**sed - Stream Editor (Find and Replace):**

```bash
# Replace text in a file
sed 's/old_text/new_text/' file.txt

# Replace all occurrences
sed 's/old_text/new_text/g' file.txt

# Delete lines matching pattern
sed '/pattern/d' file.txt

# Replace in place (modify file)
sed -i 's/old/new/g' file.txt
```

**cut - Extract Columns:**

```bash
# Extract specific columns
ps -ef | cut -d' ' -f1,2,11

# Extract characters
echo "Hello" | cut -c 1-3  # Output: Hel
```

**sort and uniq - Sort and Filter:**

```bash
# Sort lines
sort file.txt

# Sort and remove duplicates
sort file.txt | uniq

# Count occurrences
sort file.txt | uniq -c
```

**wc - Word/Line Count:**

```bash
wc -l file.txt      # Line count
wc -w file.txt      # Word count
wc -c file.txt      # Character count
```

---

### 12. Debugging Shell Scripts

**Debugging Techniques:**

```bash
#!/bin/bash

# Method 1: Run script in debug mode
# bash -x script.sh

# Method 2: Use set -x in script
set -x          # Enable debugging
set +x          # Disable debugging

# Method 3: Conditional debugging
DEBUG=true

if [ "$DEBUG" = true ]; then
    set -x
fi

# Method 4: Add debug messages
debug_print() {
    if [ "$DEBUG" = true ]; then
        echo "[DEBUG] $@"
    fi
}

debug_print "This is a debug message"
```

---

### 13. Best Practices Checklist

**Before Deploying Your Scripts:**

✓ Always include shebang line (#!/bin/bash)
✓ Add metadata comments (Author, Date, Version)
✓ Use meaningful variable names
✓ Add comments to explain complex logic
✓ Use set -e, set -x, and set -o pipefail
✓ Handle errors gracefully
✓ Make scripts readable with proper formatting
✓ Test thoroughly on target systems
✓ Use absolute paths instead of relative paths
✓ Validate user input and command arguments
✓ Create log files for troubleshooting
✓ Make scripts modular using functions
✓ Document expected inputs and outputs
✓ Use version control (Git)

---

### 14. Common DevOps Mistakes to Avoid

**Mistake 1: Not Checking Exit Codes**

Bad - doesn't check if command succeeded:
```bash
aws s3 ls
aws s3 cp file.txt s3://bucket/
```

Good - check exit code:
```bash
aws s3 ls || { echo "S3 access failed"; exit 1; }
aws s3 cp file.txt s3://bucket/ || { echo "Upload failed"; exit 1; }
```

**Mistake 2: Hardcoding Values**

Bad:
```bash
aws ec2 describe-instances --region us-east-1
```

Good:
```bash
REGION=${AWS_REGION:-us-east-1}
aws ec2 describe-instances --region $REGION
```

**Mistake 3: Not Quoting Variables**

Bad - breaks with spaces:
```bash
file_list=$( ls )
echo $file_list
```

Good - preserves spaces:
```bash
file_list=$( ls )
echo "$file_list"
```

**Mistake 4: Using set -x in Production**

Bad - reveals sensitive information:
```bash
set -x
aws s3 ls s3://private-bucket
```

Good - use for debugging only:
```bash
if [ "$DEBUG" = true ]; then
    set -x
fi
```

---

### 15. Quick Reference - Common Patterns

**Pattern: Check if Command Exists**
```bash
if command -v docker &> /dev/null; then
    echo "Docker is installed"
else
    echo "Docker is not installed"
fi
```

**Pattern: Retry Logic**
```bash
retry() {
    local max_attempts=$1
    shift
    local command="$@"
    local attempt=1
    
    while [ $attempt -le $max_attempts ]; do
        echo "Attempt $attempt of $max_attempts: $command"
        if $command; then
            return 0
        fi
        attempt=$((attempt + 1))
        sleep 2
    done
    
    return 1
}

# Usage: retry 3 curl https://example.com
```

**Pattern: Parallel Execution**
```bash
# Run commands in background
command1 &
command2 &
command3 &

# Wait for all to complete
wait

echo "All commands completed"
```


## End of Additional Content