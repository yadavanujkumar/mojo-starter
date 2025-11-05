"""
Example 08: Performance and Optimization
========================================
Learn about Mojo's performance features:
- SIMD (Single Instruction, Multiple Data)
- Vectorization
- Performance comparisons
- Memory efficiency

To run: mojo run examples/08_performance.mojo

Note: This example demonstrates concepts but may need tuning
for optimal performance on your specific hardware.
"""

from time import now


fn sum_naive(n: Int) -> Int:
    """
    Calculate sum of numbers from 1 to n using a simple loop.
    This is the straightforward approach.
    """
    var total = 0
    for i in range(n + 1):
        total += i
    return total


fn sum_formula(n: Int) -> Int:
    """
    Calculate sum using the mathematical formula: n * (n + 1) / 2
    This is much faster as it's O(1) instead of O(n).
    """
    return n * (n + 1) // 2


fn multiply_arrays_naive(size: Int) -> Int:
    """
    Multiply two arrays element-wise using a simple loop.
    """
    var sum = 0
    for i in range(size):
        var a = i
        var b = i + 1
        sum += a * b
    return sum


fn power_iterative(base: Int, exponent: Int) -> Int:
    """
    Calculate power using iteration.
    """
    var result = 1
    for _ in range(exponent):
        result *= base
    return result


fn power_optimized(base: Int, exponent: Int) -> Int:
    """
    Calculate power using exponentiation by squaring (more efficient).
    This reduces time complexity from O(n) to O(log n).
    """
    if exponent == 0:
        return 1
    if exponent == 1:
        return base
    
    if exponent % 2 == 0:
        var half = power_optimized(base, exponent // 2)
        return half * half
    else:
        return base * power_optimized(base, exponent - 1)


fn fibonacci_recursive(n: Int) -> Int:
    """
    Calculate Fibonacci number recursively (slower for large n).
    Time complexity: O(2^n) - exponential!
    """
    if n <= 1:
        return n
    return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)


fn fibonacci_iterative(n: Int) -> Int:
    """
    Calculate Fibonacci number iteratively (much faster).
    Time complexity: O(n) - linear!
    """
    if n <= 1:
        return n
    
    var prev = 0
    var current = 1
    
    for _ in range(2, n + 1):
        var next_val = prev + current
        prev = current
        current = next_val
    
    return current


fn main():
    print("=== Performance and Optimization ===\n")
    
    # Compare sum algorithms
    print("1. Sum calculation comparison:")
    let n = 1000000
    
    var start = now()
    var result1 = sum_naive(n)
    var time1 = now() - start
    print("   Naive sum (1 to", n, "):", result1)
    print("   Time:", time1, "nanoseconds")
    
    start = now()
    var result2 = sum_formula(n)
    var time2 = now() - start
    print("   Formula sum (1 to", n, "):", result2)
    print("   Time:", time2, "nanoseconds")
    
    if time1 > time2:
        var speedup = Float64(time1) / Float64(time2)
        print("   Formula is", speedup, "x faster!")
    
    print("\n" + "-" * 40)
    
    # Array multiplication comparison
    print("\n2. Array operations:")
    let array_size = 10000
    
    start = now()
    var array_result = multiply_arrays_naive(array_size)
    var array_time = now() - start
    print("   Array multiplication result:", array_result)
    print("   Time:", array_time, "nanoseconds")
    
    print("\n" + "-" * 40)
    
    # Power calculation comparison
    print("\n3. Power calculation (2^20):")
    
    start = now()
    var pow1 = power_iterative(2, 20)
    var pow_time1 = now() - start
    print("   Iterative result:", pow1)
    print("   Time:", pow_time1, "nanoseconds")
    
    start = now()
    var pow2 = power_optimized(2, 20)
    var pow_time2 = now() - start
    print("   Optimized result:", pow2)
    print("   Time:", pow_time2, "nanoseconds")
    
    print("\n" + "-" * 40)
    
    # Fibonacci comparison
    print("\n4. Fibonacci calculation:")
    let fib_n = 20
    
    print("   Calculating Fibonacci(", fib_n, ")")
    
    start = now()
    var fib1 = fibonacci_recursive(fib_n)
    var fib_time1 = now() - start
    print("   Recursive result:", fib1)
    print("   Time:", fib_time1, "nanoseconds")
    
    start = now()
    var fib2 = fibonacci_iterative(fib_n)
    var fib_time2 = now() - start
    print("   Iterative result:", fib2)
    print("   Time:", fib_time2, "nanoseconds")
    
    if fib_time1 > fib_time2:
        var speedup = Float64(fib_time1) / Float64(fib_time2)
        print("   Iterative is", speedup, "x faster!")
    
    print("\n" + "-" * 40)
    
    # Performance tips
    print("\n5. Performance optimization tips:")
    print("   ✓ Use mathematical formulas when possible (O(1) vs O(n))")
    print("   ✓ Prefer iteration over recursion for better performance")
    print("   ✓ Use appropriate data types (Int vs Float64)")
    print("   ✓ Minimize allocations in tight loops")
    print("   ✓ Use SIMD for parallel data processing")
    print("   ✓ Profile your code to find bottlenecks")
    
    print("\n" + "-" * 40)
    
    print("\n6. Why Mojo is fast:")
    print("   • Compiled to native machine code")
    print("   • Static typing enables optimizations")
    print("   • Zero-cost abstractions")
    print("   • SIMD vectorization support")
    print("   • Direct memory management when needed")
    print("   • Can be 35,000x faster than Python!")
