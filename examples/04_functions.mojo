"""
Example 04: Functions
=====================
Learn about functions in Mojo:
- Defining functions with 'fn'
- Parameters and return types
- Default parameters
- Function documentation

To run: mojo run examples/04_functions.mojo
"""


fn greet(name: String) -> String:
    """
    A simple function that greets a person.
    
    Args:
        name: The name of the person to greet
    
    Returns:
        A greeting message
    """
    return "Hello, " + name + "!"


fn add(a: Int, b: Int) -> Int:
    """Add two integers and return the result."""
    return a + b


fn multiply(x: Float64, y: Float64) -> Float64:
    """Multiply two floating-point numbers."""
    return x * y


fn calculate_area(length: Float64, width: Float64) -> Float64:
    """Calculate the area of a rectangle."""
    return length * width


fn is_even(number: Int) -> Bool:
    """Check if a number is even."""
    return number % 2 == 0


fn print_separator():
    """Print a separator line (no return value)."""
    print("-" * 40)


fn factorial(n: Int) -> Int:
    """
    Calculate factorial using recursion.
    Note: This is for demonstration; iterative is more efficient.
    """
    if n <= 1:
        return 1
    return n * factorial(n - 1)


fn power(base: Int, exponent: Int) -> Int:
    """Calculate base raised to the power of exponent."""
    var result = 1
    for _ in range(exponent):
        result *= base
    return result


fn main():
    print("=== Functions in Mojo ===\n")
    
    # Basic function calls
    print("1. Simple greeting:")
    print("  ", greet("Mojo Developer"))
    
    print_separator()
    
    # Functions with numbers
    print("\n2. Mathematical functions:")
    var sum = add(10, 20)
    print("   10 + 20 =", sum)
    
    var product = multiply(3.5, 2.0)
    print("   3.5 * 2.0 =", product)
    
    var area = calculate_area(5.0, 3.0)
    print("   Area of 5x3 rectangle =", area)
    
    print_separator()
    
    # Boolean functions
    print("\n3. Boolean functions:")
    print("   Is 10 even?", is_even(10))
    print("   Is 7 even?", is_even(7))
    
    print_separator()
    
    # Recursive function
    print("\n4. Recursive function:")
    print("   Factorial of 5 =", factorial(5))
    print("   Factorial of 7 =", factorial(7))
    
    print_separator()
    
    # Power function
    print("\n5. Power function:")
    print("   2^8 =", power(2, 8))
    print("   3^4 =", power(3, 4))
    
    print_separator()
    
    # Using functions in expressions
    print("\n6. Functions in expressions:")
    var result = add(10, 20) + add(5, 15)
    print("   (10 + 20) + (5 + 15) =", result)
