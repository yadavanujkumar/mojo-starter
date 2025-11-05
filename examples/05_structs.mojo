"""
Example 05: Structs and Methods
===============================
Learn about creating custom types with structs in Mojo:
- Defining structs
- Constructors (__init__)
- Methods (functions inside structs)
- The 'self' parameter

To run: mojo run examples/05_structs.mojo
"""


struct Point:
    """A 2D point with x and y coordinates."""
    var x: Float64
    var y: Float64
    
    fn __init__(inout self, x: Float64, y: Float64):
        """Initialize a new Point."""
        self.x = x
        self.y = y
    
    fn distance_from_origin(self) -> Float64:
        """Calculate distance from origin (0, 0)."""
        return (self.x ** 2 + self.y ** 2) ** 0.5
    
    fn display(self):
        """Display the point coordinates."""
        print("Point(", self.x, ",", self.y, ")")


struct Rectangle:
    """A rectangle with width and height."""
    var width: Float64
    var height: Float64
    
    fn __init__(inout self, width: Float64, height: Float64):
        """Initialize a new Rectangle."""
        self.width = width
        self.height = height
    
    fn area(self) -> Float64:
        """Calculate the area of the rectangle."""
        return self.width * self.height
    
    fn perimeter(self) -> Float64:
        """Calculate the perimeter of the rectangle."""
        return 2 * (self.width + self.height)
    
    fn is_square(self) -> Bool:
        """Check if the rectangle is a square."""
        return self.width == self.height
    
    fn display(self):
        """Display rectangle information."""
        print("Rectangle: width =", self.width, ", height =", self.height)


struct Circle:
    """A circle with a radius."""
    var radius: Float64
    
    fn __init__(inout self, radius: Float64):
        """Initialize a new Circle."""
        self.radius = radius
    
    fn area(self) -> Float64:
        """Calculate the area of the circle."""
        let pi: Float64 = 3.14159265359
        return pi * self.radius ** 2
    
    fn circumference(self) -> Float64:
        """Calculate the circumference of the circle."""
        let pi: Float64 = 3.14159265359
        return 2 * pi * self.radius
    
    fn display(self):
        """Display circle information."""
        print("Circle: radius =", self.radius)


struct Counter:
    """A simple counter that can be incremented and decremented."""
    var count: Int
    
    fn __init__(inout self):
        """Initialize counter to 0."""
        self.count = 0
    
    fn __init__(inout self, initial_value: Int):
        """Initialize counter with a specific value."""
        self.count = initial_value
    
    fn increment(inout self):
        """Increment the counter by 1."""
        self.count += 1
    
    fn decrement(inout self):
        """Decrement the counter by 1."""
        self.count -= 1
    
    fn reset(inout self):
        """Reset the counter to 0."""
        self.count = 0
    
    fn get_value(self) -> Int:
        """Get the current counter value."""
        return self.count


fn main():
    print("=== Structs and Methods ===\n")
    
    # Working with Points
    print("1. Point struct:")
    var p1 = Point(3.0, 4.0)
    p1.display()
    print("   Distance from origin:", p1.distance_from_origin())
    
    var p2 = Point(0.0, 5.0)
    p2.display()
    print("   Distance from origin:", p2.distance_from_origin())
    
    print("\n" + "-" * 40)
    
    # Working with Rectangles
    print("\n2. Rectangle struct:")
    var rect1 = Rectangle(10.0, 5.0)
    rect1.display()
    print("   Area:", rect1.area())
    print("   Perimeter:", rect1.perimeter())
    print("   Is square?", rect1.is_square())
    
    var rect2 = Rectangle(7.0, 7.0)
    rect2.display()
    print("   Area:", rect2.area())
    print("   Perimeter:", rect2.perimeter())
    print("   Is square?", rect2.is_square())
    
    print("\n" + "-" * 40)
    
    # Working with Circles
    print("\n3. Circle struct:")
    var circle = Circle(5.0)
    circle.display()
    print("   Area:", circle.area())
    print("   Circumference:", circle.circumference())
    
    print("\n" + "-" * 40)
    
    # Working with Counter
    print("\n4. Counter struct:")
    var counter = Counter()
    print("   Initial value:", counter.get_value())
    
    counter.increment()
    counter.increment()
    counter.increment()
    print("   After 3 increments:", counter.get_value())
    
    counter.decrement()
    print("   After 1 decrement:", counter.get_value())
    
    counter.reset()
    print("   After reset:", counter.get_value())
    
    # Counter with initial value
    var counter2 = Counter(100)
    print("   Counter with initial value:", counter2.get_value())
