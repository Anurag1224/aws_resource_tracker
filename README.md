# DevOps-Essentials 🚀

A comprehensive repository for learning Linux, Shell Scripting, and DevOps automation with practical AWS integration examples.

## 📌 Quick Overview

This repository is your **one-stop guide** to mastering DevOps fundamentals. Whether you're a beginner exploring Linux commands or an experienced engineer looking for automation scripts, you'll find practical examples and best practices here.

**Perfect for:** DevOps Engineers • Cloud Engineers • System Administrators • Developers transitioning to DevOps

---

## 📁 Repository Structure

```
DevOps-Essentials/
│
├── 📖 DOCUMENTATION/
│   ├── 01-Linux-Basics.md                    (Fundamentals of Linux & Shell)
│   ├── 02-Advanced-Shell-Scripting.md        (Advanced concepts & patterns)
│   └── Linux-Shell-Scripting-Guide.pdf       (Complete reference guide)
│
├── 🛠️ SCRIPTS/
│   ├── aws-resource-tracker.sh               (AWS resource auditing automation)
│   ├── node-health-monitor.sh                (System performance monitoring)
│   └── aws-resource-tracker-README.md        (Script usage guide)
│
└── README.md                                 (This file)
```

---

## 🎯 What's Inside?

### 📚 **Documentation**

#### **01-Linux-Basics.md**
Master the fundamentals:
- Essential Linux commands (pwd, ls, cd, chmod, etc.)
- File operations and directory management
- System performance monitoring tools
- Shell script basics and execution
- User input and script arguments
- Control flow structures (if-else, loops)

#### **02-Advanced-Shell-Scripting.md**
Take your skills to the next level:
- Environment variables and functions
- String manipulation and arrays
- Error handling best practices
- Process management and filtering
- Pipes, grep, awk, sed utilities
- Signal handling with trap
- Production-ready patterns

#### **Linux-Shell-Scripting-Guide.pdf**
Complete reference document with:
- All topics from markdown files
- Professional formatting
- Quick lookup reference

### 🛠️ **Scripts**

#### **aws-resource-tracker.sh**
Automated AWS resource auditing:
```bash
# Lists and tracks:
✓ S3 buckets
✓ EC2 instances
✓ Lambda functions
✓ IAM users

# Features:
✓ Debug mode enabled
✓ Outputs to file for record-keeping
✓ Uses AWS CLI + jq for JSON parsing
```

#### **node-health-monitor.sh**
System performance monitoring:
```bash
# Monitors:
✓ Disk usage
✓ Memory/RAM health
✓ CPU availability
✓ Running processes

# Perfect for:
✓ Health checks
✓ Monitoring scripts
✓ Automation pipelines
```

---

## 🚀 Quick Start

### Prerequisites
```bash
# Required tools
aws --version        # AWS CLI
jq --version        # JSON processor
bash --version      # Bash shell
```

### Setup
```bash
# 1. Clone repository
git clone https://github.com/Anurag1224/DevOps-Essentials.git
cd DevOps-Essentials

# 2. Configure AWS (if using AWS scripts)
aws configure

# 3. Make scripts executable
chmod 744 SCRIPTS/aws-resource-tracker.sh
chmod 744 SCRIPTS/node-health-monitor.sh

# 4. Run scripts
./SCRIPTS/aws-resource-tracker.sh
./SCRIPTS/node-health-monitor.sh
```

---

## 📖 Learning Path

### 🟢 **Beginner**
1. Read: `01-Linux-Basics.md`
2. Learn: Basic commands and navigation
3. Practice: File operations and permissions
4. Run: `node-health-monitor.sh`

### 🟡 **Intermediate**
1. Read: `02-Advanced-Shell-Scripting.md`
2. Learn: Functions, error handling, piping
3. Understand: Data filtering with grep/awk
4. Modify: AWS resource tracker script

---

## 💡 Key Features

✅ **Comprehensive Coverage** - 3000+ lines of documentation
✅ **50+ Code Examples** - Ready to use and modify
✅ **Production Scripts** - AWS automation tools
✅ **Best Practices** - Industry-standard approaches
✅ **Error Handling** - Proper exception management
✅ **Practical Focus** - Real-world use cases

---

## 📊 Topics Covered

### Linux & Shell
- Command line navigation
- File operations and permissions
- Process management
- System monitoring
- Shell script fundamentals

### Advanced Concepts
- Variables and functions
- Control flow structures
- Error handling (set -e, set -o pipefail)
- Signal handling (trap command)
- Data filtering (grep, awk, sed)

### AWS Integration
- AWS CLI commands
- Resource tracking and auditing
- JSON parsing with jq
- Infrastructure monitoring
- Automation patterns

### DevOps Best Practices
- Script metadata and documentation
- Debug mode usage
- Logging and output redirection
- Error handling patterns
- Version control practices

---

## 🎓 Learning Outcomes

After using this repository, you'll be able to:

✅ Navigate Linux filesystem confidently
✅ Write production-ready shell scripts
✅ Monitor system performance
✅ Automate AWS infrastructure tasks
✅ Handle errors and signals properly
✅ Debug scripts effectively
✅ Use pipes and command-line utilities
✅ Integrate with AWS services
✅ Follow DevOps best practices

---

## 📋 Common Commands Reference

```bash
# Linux Navigation
pwd                    # Current directory
ls -ltr               # List with timestamps
cd ..                 # Parent directory

# File Operations
touch filename        # Create file
chmod 744 script.sh  # Set permissions
cat file.txt         # View contents

# System Monitoring
top                  # Real-time monitor
free -g              # Memory in GB
nproc                # CPU count

# AWS CLI
aws s3 ls            # List S3 buckets
aws ec2 describe-instances  # List EC2
aws iam list-users   # List IAM users
```

---

## 🔍 Folder Details

### 📖 DOCUMENTATION Folder
Contains all learning materials:
- **01-Linux-Basics.md** → Start here if new to Linux
- **02-Advanced-Shell-Scripting.md** → Advance your skills
- **Linux-Shell-Scripting-Guide.pdf** → Reference for better understanding

**How to use:** Read sequentially or jump to specific sections

### 🛠️ SCRIPTS Folder
Contains automation tools:
- **aws-resource-tracker.sh** → AWS infrastructure auditing
- **node-health-monitor.sh** → System health monitoring
- **aws-resource-tracker-README.md** → Script documentation

**How to use:** Run directly or modify for your needs

---

## 🎯 Use Cases

1. **Learning DevOps**
   - Complete guide for beginners
   - Structured learning path
   - Practical examples included

2. **Infrastructure Automation**
   - AWS resource tracking
   - System health monitoring
   - Audit logging

3. **Team Reference**
   - Share with team members
   - Standard scripts across organization
   - Training material for new engineers

4. **Interview Preparation**
   - DevOps interview questions
   - Real-world scenarios
   - Best practices showcase

---

## 🛠️ Customization Tips

### Modify AWS Tracker for Your Needs
```bash
# Add more resources
aws rds describe-db-instances >> resourceTracker

# Filter specific resources
aws s3 ls | grep "production"

# Add timestamps
echo "$(date): Audit completed" >> audit.log
```

### Extend Node Health Monitor
```bash
# Add custom thresholds
# Add email notifications
# Integrate with monitoring tools
# Create dashboards
```

---

## 📚 External Resources

- [AWS CLI Documentation](https://docs.aws.amazon.com/cli/)
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Linux man pages](https://man7.org/linux/man-pages/)
- [jq JSON processor](https://stedolan.github.io/jq/)

---

## 🤝 Contributing

Found a bug or have an improvement? Contributions welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

**Areas we'd love help with:**
- Additional scripts
- Improved documentation
- More examples
- Bug fixes
- Performance optimizations

---

<!-- ## 📝 License

This project is open source under the **MIT License**. -->



## 👤 Author

**Anurag**  
Software Developer | Learning DevOps  
[GitHub](https://github.com/Anurag1224) | [LinkedIn](https://linkedin.com/in/anurag1224)

---

## ⭐ Support

If this repository helped you:
- **Star** ⭐ it to show support
- **Share** 📤 with your network
- **Fork** 🔄 to contribute
- **Follow** 👥 for updates

---

## 📌 Getting Started

**First time here?**

→ **Start with:** `DOCUMENTATION/01-Linux-Basics.md`

→ **Then learn:** `DOCUMENTATION/02-Advanced-Shell-Scripting.md`

→ **Finally explore:** `SCRIPTS/` folder for automation

---

## 🚀 Next Steps

1. Clone this repository
2. Read the documentation in order
3. Practice with the examples
4. Run the provided scripts
5. Customize for your needs
6. Share your improvements

---

## 📞 Feedback & Questions

Have questions or suggestions?
- Open an issue in GitHub
- Check existing documentation
- Review the PDF guide

---

**Last Updated:** December 2025  
**Version:** 1.0  
**Status:** Active & Maintained ✅

---

## 🌟 Quick Links

- [Linux Basics Guide](./DOCUMENTATION/01-Linux-Basics.md)
- [Advanced Scripting](./DOCUMENTATION/02-Advanced-Shell-Scripting.md)
- [AWS Tracker Script](./SCRIPTS/aws-resource-tracker.sh)
- [Node Health Monitor](./SCRIPTS/node-health-monitor.sh)
- [AWS Script Guide](./SCRIPTS/aws-resource-tracker-README.md)

---

**Happy Learning! 🎓**

*Your journey to DevOps mastery starts here.*