# Week 01 - Bash Scripting Basics
**By: Habeeb Babasulaiman**

Welcome to the world of **Bash scripting**! This document summarizes our first class on Bash scripting for DevOps beginners. You’ll learn what Bash is, why it’s important, and how to start writing your own scripts to automate tasks. This guide also contains a practical assignment to help reinforce what you’ve learned.

---

## 🔍 What is Bash?

**Bash** (Bourne Again Shell) is a Unix shell and command-line language. It's the default shell for most Linux distributions.

- **Command Line Shell**: Lets you interact with your OS.
- **Scripting Language**: Lets you automate sequences of tasks using shell commands.

---

## 🚀 Why Bash for DevOps?

| Purpose             | Benefit |
|---------------------|---------|
| **Automation**      | Automate repetitive tasks like file management and deployments. |
| **Server Management** | Manage remote servers, monitor applications, and deploy code. |
| **DevOps Integration** | Seamlessly connects with CI/CD pipelines and other DevOps tools. |

---

## 📁 Basic Bash Commands

### Navigation
- `pwd` – Print working directory  
- `ls` – List directory contents  
- `cd` – Change directory  

### File Operations
- `mkdir` – Make directory  
- `touch` – Create file  
- `cp` – Copy files or folders  
- `mv` – Move or rename  
- `rm` – Delete files or folders  

### Viewing Files
- `cat` – Display file contents  
- `less` – View content one page at a time  
- `head` / `tail` – Show start or end of a file  

---

## ✍️ Creating Your First Script

1. **Open editor** (e.g., `nano`, `vim`, or VS Code)  
2. **Start with Shebang**: `#!/bin/bash`  
3. **Write commands**:
   ```bash
   echo "Hello, I am currently learning DevOps!"
   ```
4. **Make executable**:  
   ```bash
   chmod +x myscript.sh
   ```
5. **Run the script**:  
   ```bash
   ./myscript.sh
   ```

---

## 🧠 Bash Scripting Concepts

### Variables
```bash
name="Habeeb"
echo "Welcome, $name"
```

### Reading User Input
```bash
read -p "Enter your name: " username
echo "Hello $username"
```

### Conditionals
```bash
if [ $num -gt 10 ]; then
  echo "Greater than 10"
else
  echo "10 or less"
fi
```

### Loops
```bash
for i in {1..5}; do
  echo "Count: $i"
done
```

---

## 🧰 Debugging Tips & Best Practices

### Debugging
- `set -x` – Enable debugging trace
- Use **echo** statements to trace values
- Use [ShellCheck](https://www.shellcheck.net/) to catch syntax errors

### Best Practices
- Use comments `#` to explain your code
- Follow consistent indentation
- Use descriptive variable names
- Use `set -e` to exit on errors and `set -u` for unbound variables

---

## 📚 Extra Resources

- 📘 [LinuxCommand.org - Bash Guide](http://linuxcommand.org/lc3_lts0010.php)  
- 🎥 [YouTube: Bash Scripting for Beginners](https://www.youtube.com/playlist?list=PLT98CRL2KXKGJ-VKTAPD8-ZCQSAN2MD4W)  
- 🎥 [YouTube: Bash Tutorial - Crash Course](https://youtu.be/6n4RNprX0Xs)

---

## 🧪 Assignment

Create a **Bash calculator script** with the following requirements:

### 🧾 Requirements:
- Collect user's **name** and **two numbers**
- Ask user to choose one of these operations: `+`, `-`, `*`, `/`, or `odd-even`
- Output result in the following format:

#### 🧮 Sample Output:
```text
Hello Habeeb, you entered 20 + 30. Your Ans is 50.
```

#### 🧮 Odd/Even Output:
```text
You entered 20 and 33. Your Ans is 20 is even and 33 is odd.
```

### 💡 Tip:
Use `read`, `if-elif`, arithmetic `$(( ))`, and modulus `%`.

---

## ✅ Submission

- Save your Bash script as `calculator.sh`
- Test it thoroughly
- makesure you understand and replicate the script anytime anyday

---

Happy scripting! 🐧💻
