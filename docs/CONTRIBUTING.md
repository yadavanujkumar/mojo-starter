# Contributing to Mojo Starter

Thank you for your interest in contributing to the Mojo Starter project! We welcome contributions from developers of all skill levels.

## 🎯 How You Can Contribute

### 1. Add New Examples
- Create examples for concepts not yet covered
- Improve existing examples with better explanations
- Add real-world use cases

### 2. Improve Documentation
- Fix typos or unclear explanations
- Add more detailed comments to code
- Translate documentation to other languages
- Create video tutorials or blog posts

### 3. Fix Bugs
- Report bugs you find
- Submit fixes for known issues
- Test examples and report problems

### 4. Enhance Project Structure
- Suggest better organization
- Add utility scripts
- Improve the learning path

## 📝 Contribution Guidelines

### Code Style
- Use clear, descriptive variable names
- Add comments explaining complex logic
- Follow existing code formatting
- Include docstrings for functions and structs

### Example Format
Each example should:
- Start with a clear docstring explaining the concept
- Include comments throughout the code
- Show practical, working examples
- Be runnable without modifications

### Example Template
```mojo
"""
Example XX: Topic Name
======================
Brief description of what this example teaches:
- Concept 1
- Concept 2
- Concept 3

To run: mojo run examples/XX_topic.mojo
"""


fn main():
    print("=== Example Title ===\n")
    
    # Clear section headers
    print("1. First concept:")
    # Example code with comments
    
    print("\n" + "-" * 40)
    
    print("\n2. Second concept:")
    # More example code
```

### Documentation Style
- Use clear, beginner-friendly language
- Provide code examples for concepts
- Include step-by-step instructions
- Add links to official resources
- Use emojis sparingly but effectively 🔥

## 🚀 Getting Started

### 1. Fork the Repository
Click the "Fork" button on GitHub to create your copy.

### 2. Clone Your Fork
```bash
git clone https://github.com/YOUR_USERNAME/mojo-starter.git
cd mojo-starter
```

### 3. Create a Branch
```bash
git checkout -b feature/your-feature-name
```

### 4. Make Your Changes
- Add your examples or improvements
- Test your code thoroughly
- Update documentation if needed

### 5. Commit Your Changes
```bash
git add .
git commit -m "Add: brief description of your changes"
```

Use clear commit messages:
- `Add: new example for topic X`
- `Fix: typo in example Y`
- `Improve: documentation for Z`
- `Update: example code for better clarity`

### 6. Push to Your Fork
```bash
git push origin feature/your-feature-name
```

### 7. Submit a Pull Request
- Go to the original repository on GitHub
- Click "New Pull Request"
- Select your fork and branch
- Describe your changes clearly
- Submit the PR

## ✅ Pull Request Checklist

Before submitting a PR, ensure:
- [ ] Code runs without errors
- [ ] Examples are well-commented
- [ ] Documentation is updated if needed
- [ ] No typos or grammatical errors
- [ ] Code follows existing style
- [ ] Changes are focused and minimal

## 🐛 Reporting Issues

When reporting bugs or suggesting features:

1. **Search First**: Check if the issue already exists
2. **Be Specific**: Provide clear details
3. **Include Examples**: Show code that reproduces the issue
4. **Environment Info**: Mention your Mojo version

### Issue Template
```markdown
**Description**
Clear description of the issue or suggestion

**Steps to Reproduce** (for bugs)
1. Step one
2. Step two
3. Expected vs actual behavior

**Environment**
- Mojo version: X.X.X
- OS: Linux/macOS/Windows
- Additional context
```

## 💡 Ideas for Contributions

### New Examples Needed
- File I/O operations
- Working with JSON/CSV
- Network programming basics
- Regular expressions
- Command-line argument parsing
- Unit testing examples
- Package management
- Interop with C/C++ libraries

### Documentation Improvements
- Video tutorials
- Interactive notebooks
- Cheat sheets
- Common pitfalls guide
- Migration guide from Python
- Performance optimization guide

### Tools and Scripts
- Setup automation script
- Example runner script
- Code formatter configuration
- Testing framework

## 🌟 Recognition

Contributors will be:
- Listed in the project README
- Credited in release notes
- Part of the Mojo learning community

## 📜 Code of Conduct

### Our Standards
- Be respectful and inclusive
- Welcome newcomers warmly
- Accept constructive criticism
- Focus on what's best for the community
- Show empathy towards others

### Unacceptable Behavior
- Harassment or discriminatory language
- Trolling or insulting comments
- Personal or political attacks
- Publishing others' private information

## 📞 Getting Help

If you need help with your contribution:
- Open an issue with the `question` label
- Reach out in discussions
- Check the official Mojo documentation
- Review existing examples

## 🎓 Learning Resources

Before contributing, you might want to:
- Complete all examples in order
- Read the Getting Started guide
- Review the Quick Reference
- Check Mojo's official documentation

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 🙏 Thank You!

Every contribution helps make Mojo more accessible to beginners. Whether you're fixing a typo or adding a complex example, your effort is appreciated!

Happy Contributing! 🔥
