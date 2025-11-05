"""
Example 06: Collections
=======================
Learn about working with collections in Mojo:
- Lists and dynamic arrays
- Iterating over collections
- Basic collection operations

To run: mojo run examples/06_collections.mojo
"""

from python import Python


fn main() raises:
    print("=== Collections in Mojo ===\n")
    
    # Using Python's list through Mojo's Python interop
    print("1. Working with lists (via Python):")
    var py = Python.import_module("builtins")
    
    # Create a list
    var numbers = py.list()
    _ = numbers.append(10)
    _ = numbers.append(20)
    _ = numbers.append(30)
    _ = numbers.append(40)
    _ = numbers.append(50)
    
    print("   Numbers list:", numbers)
    print("   Length:", py.len(numbers))
    print("   First element:", numbers[0])
    print("   Last element:", numbers[4])
    
    print("\n" + "-" * 40)
    
    # Iterating over a range (basic approach)
    print("\n2. Iterating through numbers:")
    for i in range(5):
        print("   Index", i, ":", 10 * (i + 1))
    
    print("\n" + "-" * 40)
    
    # Working with strings as collections
    print("\n3. Strings are collections of characters:")
    var message = "Mojo"
    print("   Message:", message)
    print("   Length:", len(message))
    
    print("\n" + "-" * 40)
    
    # Demonstration of collection operations
    print("\n4. Common collection patterns:")
    
    # Sum of numbers
    var total = 0
    for i in range(1, 6):
        total += i
    print("   Sum of 1 to 5:", total)
    
    # Product of numbers
    var product = 1
    for i in range(1, 6):
        product *= i
    print("   Product of 1 to 5:", product)
    
    # Finding maximum
    var numbers_array = [5, 2, 8, 1, 9, 3]
    var max_val = numbers_array[0]
    for i in range(len(numbers_array)):
        if numbers_array[i] > max_val:
            max_val = numbers_array[i]
    print("   Maximum value:", max_val)
    
    # Finding minimum
    var min_val = numbers_array[0]
    for i in range(len(numbers_array)):
        if numbers_array[i] < min_val:
            min_val = numbers_array[i]
    print("   Minimum value:", min_val)
    
    print("\n" + "-" * 40)
    
    # Working with nested collections
    print("\n5. Matrix-like operations (2D data):")
    print("   3x3 grid:")
    for i in range(3):
        print("   Row", i, ":", end="")
        for j in range(3):
            print(" ", i * 3 + j, end="")
        print()
    
    print("\n" + "-" * 40)
    
    # Filtering pattern
    print("\n6. Filtering even numbers from 1 to 10:")
    print("   Even numbers:", end="")
    for i in range(1, 11):
        if i % 2 == 0:
            print(" ", i, end="")
    print()
    
    # Filtering odd numbers
    print("   Odd numbers:", end="")
    for i in range(1, 11):
        if i % 2 != 0:
            print(" ", i, end="")
    print()
