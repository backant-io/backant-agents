# Backant Agents Collection

A curated collection of specialized Claude Code agents designed to enhance your development workflow with intelligent task management, code review, API development, and technical guidance.

## 🚀 Quick Start

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/backant-io/backant-agents.git
   cd backant-agents
   ```

2. **Run the installer:**
   ```bash
   ./install.sh
   ```

The installer will copy all agent files to your `~/.claude/agents` directory and handle updates automatically.

### Manual Installation

If you prefer manual installation:
```bash
mkdir -p ~/.claude/agents
cp *.md ~/.claude/agents/
```

## 🤖 Available Agents

### 1. Task Dispatch Director
**Ultra-intelligent task coordination with anti-recursion protection**

The Task Dispatch Director is your go-to agent for complex project coordination. It breaks down large tasks, delegates to specialists, and ensures nothing falls through the cracks.

**Key Features:**
- Intelligent task breakdown and delegation
- Anti-recursion protection (never calls itself)
- Context-aware task prioritization
- Progress tracking and reporting

### 2. QA Engineer
**Advanced quality assurance and testing specialist**

Comprehensive quality assurance with systematic testing, bug analysis, and preventive measures.

**Key Features:**
- Root cause analysis and debugging
- Test strategy development
- Quality metrics and reporting
- Collaborative problem-solving

### 3. Code Review Expert
**Comprehensive code analysis and security auditing**

Professional code review focusing on quality, security, and performance optimization.

**Key Features:**
- Security vulnerability detection
- Performance analysis
- Code quality assessment
- Best practices recommendations

### 4. Technical Solution Architect
**High-level technical design and architecture planning**

Strategic technical planning and architecture design for complex systems.

**Key Features:**
- System architecture design
- Technology selection guidance
- Scalability planning
- Implementation roadmaps

### 5. Technical Researcher
**In-depth technology research and analysis**

Comprehensive technology research and market analysis for informed decision-making.

**Key Features:**
- Technology trend analysis
- Feasibility studies
- Competitive analysis
- Research reports and recommendations

### 6. Flask API Developer
**Specialized Flask API development following backant-api patterns**

Expert Flask development with focus on RESTful APIs, security, and scalability.

**Key Features:**
- RESTful API design and implementation
- SQLAlchemy integration
- JWT authentication
- Repository pattern implementation

## 📋 Usage Instructions

### Basic Agent Usage

To use any agent in Claude Code, include the agent instruction in your prompt:

```
Use the [agent-name] agent to [specific task]
```

### Task Dispatch Director Examples

The Task Dispatch Director is particularly powerful for complex, multi-step projects:

#### Example 1: Full-Stack Feature Development
```
Use the task-dispatch-director agent to help me implement a complete user authentication system for my web app. I need user registration, login, password reset, and profile management features.
```

#### Example 2: Code Quality Improvement
```
Use the task-dispatch-director agent to audit and improve the code quality of my entire project. I want to address technical debt, improve performance, and ensure security best practices.
```

#### Example 3: API Development Project
```
Use the task-dispatch-director agent to help me design and implement a RESTful API for my e-commerce platform. I need endpoints for products, orders, users, and inventory management.
```

### Individual Agent Examples

#### QA Engineer
```
Use the qa-engineer agent to analyze the test coverage in my project and create a comprehensive testing strategy for my React application.
```

#### Code Review Expert
```
Use the code-review-expert agent to perform a security audit of my authentication middleware and identify potential vulnerabilities.
```

#### Technical Solution Architect
```
Use the technical-solution-architect agent to design a scalable microservices architecture for my social media application.
```

#### Technical Researcher
```
Use the technical-researcher agent to research the best database solutions for handling real-time chat functionality in my messaging app.
```

#### Flask API Developer
```
Use the flask-api-developer agent to implement a complete user management API with JWT authentication and role-based access control.
```

## 🎯 When to Use Each Agent

### Task Dispatch Director
- **Complex multi-step projects**
- **Cross-functional requirements**
- **When you need coordination between different aspects (frontend, backend, testing, deployment)**
- **Large refactoring projects**

### QA Engineer
- **Testing strategy development**
- **Bug investigation and resolution**
- **Quality metrics and reporting**
- **Test automation setup**

### Code Review Expert
- **Security audits**
- **Performance optimization**
- **Code quality assessment**
- **Before major releases**

### Technical Solution Architect
- **System design decisions**
- **Technology stack selection**
- **Architecture planning**
- **Scalability considerations**

### Technical Researcher
- **Technology evaluation**
- **Market research**
- **Feasibility studies**
- **Tool comparison**

### Flask API Developer
- **Python/Flask API development**
- **Database integration**
- **Authentication systems**
- **RESTful API design**

## 💡 Best Practices

### 1. Be Specific with Context
Provide clear context about your project, technology stack, and requirements:
```
Use the task-dispatch-director agent to help me migrate my PHP monolith to a Node.js microservices architecture. The current system handles 10k daily users and includes user management, payment processing, and content delivery.
```

### 2. Combine Agents for Complex Tasks
The Task Dispatch Director can coordinate other agents:
```
Use the task-dispatch-director agent to coordinate a complete code review and optimization of my project. I want security analysis, performance improvements, and test coverage enhancement.
```

### 3. Provide Relevant Files and Structure
When possible, mention key files or project structure:
```
Use the flask-api-developer agent to refactor my API in app.py. I want to implement the repository pattern and separate concerns into models, services, and controllers.
```

## 🔧 Troubleshooting

### Agent Not Found
If Claude Code reports an agent is not found:
1. Verify installation: `ls ~/.claude/agents`
2. Re-run the installer: `./install.sh`
3. Check file permissions: `chmod 644 ~/.claude/agents/*.md`

### Agent Not Responding as Expected
- Be more specific in your prompt
- Provide additional context about your project
- Try rephrasing your request

## 🤝 Contributing

Found a bug or want to improve an agent? Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with Claude Code
5. Submit a pull request

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

## 🔗 Links

- **Repository:** https://github.com/backant-io/backant-agents
- **Claude Code Documentation:** https://docs.anthropic.com/en/docs/claude-code
- **Issues & Support:** https://github.com/backant-io/backant-agents/issues

---

**Made with ❤️ by the Backant team for the Claude Code community**