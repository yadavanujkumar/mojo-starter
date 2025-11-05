"""
Example 03: Control Flow
========================
Learn about control structures in Mojo:
- if/elif/else statements
- for loops
- while loops
- Range-based iteration

To run: mojo run examples/03_control_flow.mojo
"""


fn main():
    print("=== Control Flow Examples ===\n")
    
    # If/Elif/Else statements
    print("1. If/Elif/Else:")
    var temperature = 25
    
    if temperature > 30:
        print("   It's hot outside!")
    elif temperature > 20:
        print("   The weather is nice!")
    else:
        print("   It's cold outside!")
    
    # For loop with range
    print("\n2. For loop with range (0 to 4):")
    for i in range(5):
        print("   Count:", i)
    
    # For loop with custom range
    print("\n3. For loop with custom range (10 to 15):")
    for i in range(10, 16):
        print("   Number:", i)
    
    # For loop with step
    print("\n4. For loop with step (0 to 10, step 2):")
    for i in range(0, 11, 2):
        print("   Even number:", i)
    
    # While loop
    print("\n5. While loop:")
    var counter = 0
    while counter < 5:
        print("   Counter:", counter)
        counter += 1
    
    # Nested loops
    print("\n6. Nested loops (multiplication table):")
    for i in range(1, 4):
        for j in range(1, 4):
            print("   ", i, "x", j, "=", i * j)
    
    # Combining conditions
    print("\n7. Multiple conditions:")
    var age = 25
    var has_license = True
    
    if age >= 18 and has_license:
        print("   You can drive!")
    else:
        print("   You cannot drive.")
    
    # Comparison operators
    print("\n8. Comparison operators:")
    var x = 10
    var y = 20
    
    print("   x == y:", x == y)  # Equal
    print("   x != y:", x != y)  # Not equal
    print("   x < y:", x < y)    # Less than
    print("   x > y:", x > y)    # Greater than
    print("   x <= y:", x <= y)  # Less than or equal
    print("   x >= y:", x >= y)  # Greater than or equal
