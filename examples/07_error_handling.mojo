"""
Example 07: Error Handling
==========================
Learn about error handling in Mojo:
- Using 'raises' keyword
- Safe division and error cases
- Handling potential errors gracefully

To run: mojo run examples/07_error_handling.mojo
"""


fn divide(a: Float64, b: Float64) raises -> Float64:
    """
    Divide two numbers with error handling.
    
    Args:
        a: The dividend
        b: The divisor
    
    Returns:
        The result of a / b
    
    Raises:
        Error if b is zero
    """
    if b == 0:
        raise Error("Cannot divide by zero!")
    return a / b


fn safe_divide(a: Float64, b: Float64) -> Float64:
    """
    A safe division function that returns 0 on error.
    This version doesn't raise errors.
    """
    if b == 0:
        print("   Warning: Division by zero, returning 0")
        return 0.0
    return a / b


fn calculate_average(total: Float64, count: Int) raises -> Float64:
    """
    Calculate average with validation.
    
    Raises:
        Error if count is zero or negative
    """
    if count <= 0:
        raise Error("Count must be positive!")
    return total / count


fn validate_age(age: Int) raises:
    """
    Validate that an age is in a reasonable range.
    
    Raises:
        Error if age is invalid
    """
    if age < 0:
        raise Error("Age cannot be negative!")
    if age > 150:
        raise Error("Age seems unrealistic!")


fn main() raises:
    print("=== Error Handling in Mojo ===\n")
    
    # Safe division (no error)
    print("1. Safe division examples:")
    var result1 = safe_divide(10.0, 2.0)
    print("   10 / 2 =", result1)
    
    var result2 = safe_divide(15.0, 3.0)
    print("   15 / 3 =", result2)
    
    # Division by zero (handled safely)
    var result3 = safe_divide(10.0, 0.0)
    print("   10 / 0 =", result3)
    
    print("\n" + "-" * 40)
    
    # Division with error handling
    print("\n2. Division with error checking:")
    try:
        var result4 = divide(20.0, 4.0)
        print("   20 / 4 =", result4)
        
        # This will raise an error
        # var result5 = divide(10.0, 0.0)
        # print("   10 / 0 =", result5)
    except:
        print("   Error occurred during division!")
    
    print("\n" + "-" * 40)
    
    # Calculate average
    print("\n3. Calculate average:")
    try:
        var avg1 = calculate_average(100.0, 4)
        print("   Average of 100 over 4 values:", avg1)
        
        var avg2 = calculate_average(85.0, 5)
        print("   Average of 85 over 5 values:", avg2)
    except e:
        print("   Error calculating average:", e)
    
    print("\n" + "-" * 40)
    
    # Age validation
    print("\n4. Age validation:")
    
    try:
        validate_age(25)
        print("   Age 25 is valid ✓")
    except e:
        print("   Error:", e)
    
    try:
        validate_age(45)
        print("   Age 45 is valid ✓")
    except e:
        print("   Error:", e)
    
    # This would fail:
    # try:
    #     validate_age(-5)
    #     print("   Age -5 is valid")
    # except e:
    #     print("   Error:", e)
    
    print("\n" + "-" * 40)
    
    # Demonstrating error propagation
    print("\n5. Error propagation:")
    print("   Functions marked with 'raises' can propagate errors")
    print("   The main() function is also marked with 'raises'")
    print("   This allows errors to bubble up naturally")
    
    print("\n" + "-" * 40)
    
    print("\n6. Best practices:")
    print("   ✓ Use 'raises' for functions that can fail")
    print("   ✓ Validate inputs early")
    print("   ✓ Provide clear error messages")
    print("   ✓ Handle errors at appropriate levels")
    print("   ✓ Use try/except when you need to recover from errors")
