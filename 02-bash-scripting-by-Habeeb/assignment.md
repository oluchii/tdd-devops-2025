# Bash Calculator Assignment

Welcome to your first hands-on Bash scripting task! 🎉

This assignment is designed to reinforce the basic concepts of Bash scripting, including:
- Reading user input
- Conditional logic
- Arithmetic operations
- String interpolation

---

## 📝 Task Description

Create a Bash script that behaves like a simple calculator. The script should:

1. Ask for the user's **name**.
2. Ask for **two numbers**.
3. Ask the user to choose an operation from the following options:
   - Addition (`+`)
   - Subtraction (`-`)
   - Multiplication (`*`)
   - Division (`/`)
   - Odd/Even Check (`odd-even`)
4. Print a result message based on the operation chosen.

---

## ✅ Expected Output

### ➕ Addition Example
```bash
Hello Habeeb, you entered 20 + 30. Your Ans is 50.
```

### 🔢 Odd/Even Example
```bash
You entered 20 and 33. Your Ans is 20 is even and 33 is odd.
```

---

## 🚀 Getting Started

Create a file named `calculator.sh` and start your script with the shebang:
```bash
#!/bin/bash
```

Make it executable:
```bash
chmod +x calculator.sh
```

Run the script:
```bash
./calculator.sh
```

---

## 💡 Hints

- Use `read` to capture input from the user.
- Use `if`, `elif`, and `else` to implement the logic.
- Perform arithmetic with `(( ))` or `expr`.
- Use `$(())` for evaluating expressions inline.

---

## 🧪 Submission

- Make sure your script is named: `calculator.sh`
- Include your name as a comment at the top of the script.
- Test the script to ensure all operations work correctly.
- Submit the file as instructed by your mentor.

Happy scripting! 🚀🐧