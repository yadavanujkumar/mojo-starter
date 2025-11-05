# Getting Started with Mojo

Welcome to your Mojo learning journey! This guide will help you set up your environment and start coding in Mojo.

## 📦 Installation

### Step 1: Install Modular

Mojo is developed by Modular. First, you need to install the Modular CLI:

**On Linux/macOS:**
```bash
curl -s https://get.modular.com | sh -
```

**After installation:**
```bash
modular auth
```

This will open a browser window for authentication.

### Step 2: Install Mojo

Once you have the Modular CLI installed:

```bash
modular install mojo
```

### Step 3: Verify Installation

Check that Mojo is installed correctly:

```bash
mojo --version
```

You should see the version number of your Mojo installation.

## 🎯 Quick Start

### Running Your First Program

1. Navigate to the examples directory:
```bash
cd examples
```

2. Run the Hello World example:
```bash
mojo run 01_hello_world.mojo
```

3. You should see:
```
🔥 Hello, Mojo!
Welcome to the world of high-performance programming!
...
```

### Compiling Programs

You can also compile Mojo programs to executable binaries:

```bash
mojo build 01_hello_world.mojo
./01_hello_world
```

This creates a standalone executable that can be distributed without requiring Mojo to be installed.

## 📚 Learning Path

Follow these examples in order to build your Mojo skills:

### Beginner Level
1. **01_hello_world.mojo** - Your first program
2. **02_variables.mojo** - Variables and data types
3. **03_control_flow.mojo** - Loops and conditionals

### Intermediate Level
4. **04_functions.mojo** - Creating and using functions
5. **05_structs.mojo** - Custom types and methods
6. **06_collections.mojo** - Working with data structures

### Advanced Level
7. **07_error_handling.mojo** - Safe error management
8. **08_performance.mojo** - Optimization techniques

## 💻 Using Mojo Playground

If you don't want to install Mojo locally, you can use the online playground:

1. Visit [https://playground.modular.com/](https://playground.modular.com/)
2. Copy and paste example code
3. Click "Run" to execute

This is great for quick experimentation!

## 🔧 Development Tools

### Text Editors and IDEs

**VS Code** (Recommended):
1. Install VS Code
2. Install the "Mojo" extension from the marketplace
3. Get syntax highlighting and basic IntelliSense

**Vim/Neovim:**
- Mojo files use `.mojo` or `.🔥` extension
- Basic syntax highlighting available through community plugins

**Any Text Editor:**
- Mojo files are plain text
- Any editor will work for writing code

### Running Code

**Interactive Mode:**
```bash
mojo repl
```

This starts an interactive Mojo REPL where you can type code and see results immediately.

**Running Scripts:**
```bash
mojo run your_file.mojo
```

**Building Executables:**
```bash
mojo build your_file.mojo -o output_name
```

## 🎓 Key Concepts for Beginners

### 1. Main Function
Every Mojo program needs a `main()` function as the entry point:
```mojo
fn main():
    print("Hello!")
```

### 2. Variables
- Use `var` for mutable variables
- Use `let` for immutable constants
- Type annotations are optional but recommended

```mojo
var age: Int = 25        # Mutable
let pi: Float64 = 3.14   # Immutable
```

### 3. Functions
- Define with `fn` keyword
- Always specify return types
- Parameters need type annotations

```mojo
fn add(a: Int, b: Int) -> Int:
    return a + b
```

### 4. Structs
- Custom types similar to classes
- Use `struct` keyword
- Define methods inside

```mojo
struct Point:
    var x: Int
    var y: Int
    
    fn __init__(inout self, x: Int, y: Int):
        self.x = x
        self.y = y
```

## 🐛 Troubleshooting

### "mojo: command not found"

**Solution:** Make sure Mojo is in your PATH. Add this to your shell config:
```bash
export PATH="$PATH:~/.modular/bin"
```

### "Module not found" errors

**Solution:** Some examples use Python interop. Make sure you have Python installed:
```bash
python3 --version
```

### Build or compile errors

**Solution:** 
1. Check syntax carefully
2. Ensure all types are specified
3. Look at the error message for line numbers
4. Compare with working examples

## 📖 Additional Resources

### Official Documentation
- **Mojo Manual**: [https://docs.modular.com/mojo/](https://docs.modular.com/mojo/)
- **API Reference**: [https://docs.modular.com/mojo/lib/](https://docs.modular.com/mojo/lib/)

### Community
- **GitHub**: [https://github.com/modularml/mojo](https://github.com/modularml/mojo)
- **Discord**: Join the Modular Discord community
- **Forums**: [https://github.com/modularml/mojo/discussions](https://github.com/modularml/mojo/discussions)

### Learning Resources
- **Official Blog**: [https://www.modular.com/blog](https://www.modular.com/blog)
- **Example Programs**: Check the `/examples` directory in this repo
- **Video Tutorials**: Search for "Mojo programming" on YouTube

## 🚀 Next Steps

1. ✅ Install Mojo
2. ✅ Run all examples in order
3. ✅ Modify examples to experiment
4. ✅ Create your own small projects
5. ✅ Read the official documentation
6. ✅ Join the community

## 💡 Tips for Success

1. **Start Simple**: Begin with basic examples before moving to advanced topics
2. **Type Everything**: Add type annotations to help catch errors early
3. **Read Error Messages**: Mojo's compiler gives helpful error messages
4. **Experiment**: Modify examples to see what happens
5. **Compare with Python**: If you know Python, notice the similarities and differences
6. **Focus on Performance**: Learn to think about memory and performance
7. **Practice Daily**: Regular practice is key to mastery

## 🎯 Project Ideas

Once you're comfortable with the basics, try these projects:

### Beginner Projects
- Calculator program
- Temperature converter
- Simple text-based game
- Todo list manager

### Intermediate Projects
- Matrix operations library
- File processing tool
- Data analysis script
- Simple HTTP client

### Advanced Projects
- Image processing library
- Machine learning algorithm implementation
- High-performance data structure
- Numerical computation library

## 📝 Cheat Sheet

```mojo
# Variables
var x: Int = 10          # Mutable
let y: Float64 = 3.14    # Immutable

# Functions
fn greet(name: String) -> String:
    return "Hello, " + name

# Control Flow
if x > 5:
    print("Greater")
elif x == 5:
    print("Equal")
else:
    print("Less")

# Loops
for i in range(10):
    print(i)

# Structs
struct Person:
    var name: String
    var age: Int
    
    fn __init__(inout self, name: String, age: Int):
        self.name = name
        self.age = age

# Error Handling
fn divide(a: Int, b: Int) raises -> Int:
    if b == 0:
        raise Error("Division by zero")
    return a // b
```

Happy coding with Mojo! 🔥
