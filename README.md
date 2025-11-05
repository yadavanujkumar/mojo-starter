# 🔥 Mojo Starter Project

A comprehensive beginner-friendly guide to learning Mojo programming language! This repository contains practical examples and tutorials to help you get started with Mojo.

## 📚 What is Mojo?

Mojo is a new programming language that combines the ease of use of Python with the performance of C/C++. It's designed for AI development and high-performance computing while maintaining Python's simplicity.

## 🚀 Getting Started

### Prerequisites

1. **Install Mojo**: Follow the official installation guide at [https://docs.modular.com/mojo/manual/get-started/](https://docs.modular.com/mojo/manual/get-started/)
2. **Verify Installation**: Run `mojo --version` to confirm Mojo is installed correctly

### Running the Examples

Each example can be run using the Mojo compiler:

```bash
mojo run examples/01_hello_world.mojo
```

Or compile and run separately:

```bash
mojo build examples/01_hello_world.mojo
./01_hello_world
```

## 📖 Learning Path

This project is organized from basic to advanced concepts. Follow the examples in order:

### 1. **Hello World** (`examples/01_hello_world.mojo`)
   - Your first Mojo program
   - Understanding the `main()` function
   - Printing output to console

### 2. **Variables and Data Types** (`examples/02_variables.mojo`)
   - Variable declaration with `var` and `let`
   - Basic data types: Int, Float, String, Bool
   - Type inference and explicit typing

### 3. **Control Flow** (`examples/03_control_flow.mojo`)
   - If/else statements
   - For and while loops
   - Range-based iteration

### 4. **Functions** (`examples/04_functions.mojo`)
   - Defining functions with `fn`
   - Parameters and return types
   - Function overloading

### 5. **Structs and Methods** (`examples/05_structs.mojo`)
   - Creating custom types with `struct`
   - Methods and constructors
   - The `self` parameter

### 6. **Collections** (`examples/06_collections.mojo`)
   - Working with arrays and vectors
   - Dynamic lists
   - Iterating over collections

### 7. **Error Handling** (`examples/07_error_handling.mojo`)
   - Understanding errors in Mojo
   - Using Result types
   - Safe error propagation

### 8. **Performance Example** (`examples/08_performance.mojo`)
   - SIMD operations
   - Vectorization
   - Memory optimization

## 🎯 Project Structure

```
mojo-starter/
├── examples/           # All example programs
│   ├── 01_hello_world.mojo
│   ├── 02_variables.mojo
│   ├── 03_control_flow.mojo
│   ├── 04_functions.mojo
│   ├── 05_structs.mojo
│   ├── 06_collections.mojo
│   ├── 07_error_handling.mojo
│   └── 08_performance.mojo
├── docs/              # Additional documentation
│   └── GETTING_STARTED.md
└── README.md          # This file
```

## 💡 Key Concepts

### Mojo vs Python
- **Performance**: Mojo can be 35,000x faster than Python
- **Type Safety**: Optional static typing for better performance
- **Memory Management**: Low-level control when needed
- **Compatibility**: Can use Python libraries

### Why Learn Mojo?
- 🚀 High performance without sacrificing ease of use
- 🤖 Perfect for AI/ML development
- 🔧 Systems programming capabilities
- 🐍 Familiar Python-like syntax

## 📚 Additional Resources

- [Official Mojo Documentation](https://docs.modular.com/mojo/)
- [Mojo Playground](https://playground.modular.com/)
- [Mojo GitHub](https://github.com/modularml/mojo)
- [Modular Blog](https://www.modular.com/blog)

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Add new examples
- Improve documentation
- Fix bugs or typos
- Suggest new tutorials

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌟 Acknowledgments

Created to help beginners learn Mojo programming language. Happy coding! 🔥