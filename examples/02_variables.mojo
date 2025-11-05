"""
Example 02: Variables and Data Types
====================================
Learn about variables, data types, and type annotations in Mojo.

Key concepts:
- var: mutable variables
- let: immutable variables (constants)
- Type annotations for better performance
- Basic data types: Int, Float, String, Bool

To run: mojo run examples/02_variables.mojo
"""


fn main():
    print("=== Variables and Data Types ===\n")
    
    # Mutable variables with 'var'
    var age: Int = 25
    print("Age (mutable):", age)
    age = 26  # Can be changed
    print("Updated age:", age)
    
    # Immutable variables with 'let'
    let pi: Float64 = 3.14159
    print("\nPi (immutable):", pi)
    # pi = 3.14  # This would cause an error!
    
    # Type inference - Mojo can figure out the type
    var name = "Mojo Developer"
    var score = 100
    var is_learning = True
    
    print("\nWith type inference:")
    print("Name:", name)
    print("Score:", score)
    print("Is learning:", is_learning)
    
    # Integer types
    var small_int: Int8 = 127
    var regular_int: Int32 = 2147483647
    var big_int: Int64 = 9223372036854775807
    
    print("\nInteger types:")
    print("Int8:", small_int)
    print("Int32:", regular_int)
    print("Int64:", big_int)
    
    # Floating point types
    var float_32: Float32 = 3.14
    var float_64: Float64 = 3.14159265359
    
    print("\nFloating point types:")
    print("Float32:", float_32)
    print("Float64:", float_64)
    
    # Boolean type
    var is_fast: Bool = True
    var is_slow: Bool = False
    
    print("\nBoolean values:")
    print("Is fast:", is_fast)
    print("Is slow:", is_slow)
    
    # String operations
    var greeting = "Hello"
    var target = "World"
    print("\nString concatenation:", greeting + ", " + target + "!")
