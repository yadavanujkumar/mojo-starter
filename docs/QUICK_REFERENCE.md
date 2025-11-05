# Mojo Quick Reference

A handy reference guide for common Mojo syntax and patterns.

## 🔥 Basic Syntax

### Comments
```mojo
# Single line comment

"""
Multi-line comment
or documentation string
"""
```

### Variables
```mojo
# Mutable variable
var age: Int = 25
var name = "Mojo"  # Type inferred

# Immutable constant
let pi: Float64 = 3.14159
```

### Data Types
```mojo
# Integer types
var small: Int8 = 127
var medium: Int32 = 2147483647
var large: Int64 = 9223372036854775807
var regular: Int = 100

# Floating point
var f32: Float32 = 3.14
var f64: Float64 = 3.141592653589793

# Boolean
var flag: Bool = True

# String
var text: String = "Hello, Mojo!"
```

## 🎯 Functions

### Basic Function
```mojo
fn greet(name: String) -> String:
    return "Hello, " + name
```

### Multiple Parameters
```mojo
fn add(a: Int, b: Int) -> Int:
    return a + b
```

### No Return Value
```mojo
fn print_message():
    print("Hello!")
```

### With Error Handling
```mojo
fn divide(a: Float64, b: Float64) raises -> Float64:
    if b == 0:
        raise Error("Division by zero")
    return a / b
```

## 🔄 Control Flow

### If/Elif/Else
```mojo
if condition:
    # code
elif other_condition:
    # code
else:
    # code
```

### For Loops
```mojo
# Range loop
for i in range(10):
    print(i)

# Custom range
for i in range(5, 15):
    print(i)

# With step
for i in range(0, 10, 2):
    print(i)
```

### While Loop
```mojo
var counter = 0
while counter < 10:
    print(counter)
    counter += 1
```

## 📦 Structs

### Basic Struct
```mojo
struct Point:
    var x: Float64
    var y: Float64
    
    fn __init__(inout self, x: Float64, y: Float64):
        self.x = x
        self.y = y
    
    fn display(self):
        print("Point(", self.x, ",", self.y, ")")
```

### Struct with Methods
```mojo
struct Rectangle:
    var width: Float64
    var height: Float64
    
    fn __init__(inout self, width: Float64, height: Float64):
        self.width = width
        self.height = height
    
    fn area(self) -> Float64:
        return self.width * self.height
    
    fn perimeter(self) -> Float64:
        return 2 * (self.width + self.height)
```

## 🔧 Operators

### Arithmetic
```mojo
+ # Addition
- # Subtraction
* # Multiplication
/ # Division
// # Floor division
% # Modulo
** # Exponentiation
```

### Comparison
```mojo
== # Equal
!= # Not equal
< # Less than
> # Greater than
<= # Less than or equal
>= # Greater than or equal
```

### Logical
```mojo
and # Logical AND
or # Logical OR
not # Logical NOT
```

### Assignment
```mojo
= # Assign
+= # Add and assign
-= # Subtract and assign
*= # Multiply and assign
/= # Divide and assign
```

## ⚠️ Error Handling

### Raising Errors
```mojo
fn validate(value: Int) raises:
    if value < 0:
        raise Error("Value must be non-negative")
```

### Try/Except
```mojo
try:
    var result = divide(10, 0)
except e:
    print("Error:", e)
```

### Functions with Raises
```mojo
fn main() raises:
    # Can call functions that raise errors
    var result = risky_function()
```

## 🐍 Python Interop

### Import Python Module
```mojo
from python import Python

fn main() raises:
    var py = Python.import_module("builtins")
    var my_list = py.list()
    _ = my_list.append(42)
```

## 💡 Best Practices

### Type Annotations
```mojo
# ✅ Good - explicit types
fn calculate(x: Float64, y: Float64) -> Float64:
    return x + y

# ⚠️ Okay - but less clear
fn calculate(x, y):
    return x + y
```

### Mutability
```mojo
# ✅ Use 'let' for constants
let MAX_SIZE: Int = 100

# ✅ Use 'var' for mutable data
var counter: Int = 0
```

### Error Handling
```mojo
# ✅ Handle errors appropriately
fn safe_operation() raises -> Int:
    if error_condition:
        raise Error("Something went wrong")
    return result
```

## 🚀 Performance Tips

### Use Appropriate Types
```mojo
# ✅ Use specific types for better performance
var x: Int32 = 100
var y: Float64 = 3.14

# ⚠️ Less optimal
var x = 100
var y = 3.14
```

### Avoid Unnecessary Allocations
```mojo
# ✅ Reuse variables
var result: Int = 0
for i in range(1000):
    result += i

# ⚠️ Multiple allocations
for i in range(1000):
    var temp = i
    result += temp
```

## 📚 Common Patterns

### Swap Values
```mojo
var a = 10
var b = 20
var temp = a
a = b
b = temp
```

### Sum Range
```mojo
var total = 0
for i in range(1, 101):
    total += i
```

### Find Maximum
```mojo
var numbers = [5, 2, 8, 1, 9]
var max_val = numbers[0]
for i in range(len(numbers)):
    if numbers[i] > max_val:
        max_val = numbers[i]
```

### Factorial
```mojo
fn factorial(n: Int) -> Int:
    if n <= 1:
        return 1
    return n * factorial(n - 1)
```

### Fibonacci
```mojo
fn fibonacci(n: Int) -> Int:
    if n <= 1:
        return n
    var a = 0
    var b = 1
    for _ in range(2, n + 1):
        var temp = a + b
        a = b
        b = temp
    return b
```

## 🎓 Learning Resources

- **Official Docs**: https://docs.modular.com/mojo/
- **Playground**: https://playground.modular.com/
- **Examples**: Check the `/examples` directory
- **Getting Started**: See `docs/GETTING_STARTED.md`

## 🆘 Getting Help

1. Check error messages carefully
2. Review example code
3. Read official documentation
4. Ask in community forums
5. Check GitHub discussions

Happy Coding! 🔥
