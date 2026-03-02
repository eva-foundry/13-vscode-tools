# Quick-Start Practice Guide: Mastering the Top 5 CRITICAL Tools

**Goal**: Hands-on practice with the 5 highest-impact VS Code tools in 30 minutes  
**Date**: 2026-01-25  
**Tools**: read_file, grep_search, create_file, list_code_usages, manage_todo_list

---

## Exercise 1: read_file - Foundation for Analysis (5 minutes)

**Objective**: Read and analyze existing governance documents

**Task**: Find and read the AI governance vision paper

```
Step 1: Ask Copilot to find the vision paper
"Find and read the AI governance vision paper"

Expected: Copilot uses file_search + read_file to locate and display
docs/eva-ai-governance/VISION-PAPER.md

Step 2: Ask for specific section
"Show me the section about AI ethics principles"

Expected: Copilot reads specific line range with ethics content
```

**What You're Learning**:
- read_file retrieves specific line ranges (not entire files)
- Copilot automatically determines relevant sections
- Faster than opening files manually in editor

---

## Exercise 2: grep_search - Pattern Discovery (5 minutes)

**Objective**: Find patterns across your entire workspace

**Task**: Discover all references to "PYTHONIOENCODING" (Windows encoding safety)

```
Step 1: Search for the pattern
"Find all files that mention PYTHONIOENCODING"

Expected: Copilot uses grep_search to scan workspace
Returns: List of files with line numbers

Step 2: Search for a code pattern
"Show me everywhere we use AsyncOpenAI client"

Expected: Copilot finds all instantiations of AsyncOpenAI()
```

**What You're Learning**:
- grep_search is faster than manual "Find in Files"
- Returns context (line numbers + surrounding code)
- Works with regex patterns

---

## Exercise 3: create_file - Generate Documentation (10 minutes)

**Objective**: Generate a governance policy document with proper structure

**Task**: Create a new AI model deployment policy

```
Step 1: Request generation
"Create a new AI governance policy for model deployment approval.
Include: YAML metadata, traceability to existing controls, 
and sections for Purpose, Scope, Approval Process, Evidence Collection"

Expected: Copilot uses:
1. semantic_search (find existing policy templates)
2. grep_search (discover control IDs to reference)
3. create_file (generate the policy document)

Output location: docs/eva-ai-governance/20-controls/model-deployment-approval.md

Step 2: Review the generated file
"Show me the generated policy and explain the traceability links"
```

**What You're Learning**:
- create_file generates complete documents (not placeholders)
- Copilot infers structure from existing files
- Traceability is automatically maintained

---

## Exercise 4: list_code_usages - Impact Analysis (5 minutes)

**Objective**: Understand where a symbol is used before refactoring

**Task**: Find all usages of the "collect_evidence" function

```
Step 1: List all usages
"Find all usages of the collect_evidence function in the Agent Skills project"

Expected: Copilot uses list_code_usages
Returns: All call sites, implementations, references

Step 2: Analyze impact
"If I refactor collect_evidence into AgentSkillBase, which files need updates?"

Expected: Copilot shows affected files and suggests refactoring approach
```

**What You're Learning**:
- list_code_usages finds references/definitions/implementations
- Essential before any refactoring
- Shows complete impact analysis

---

## Exercise 5: manage_todo_list - Multi-Step Planning (5 minutes)

**Objective**: Track a multi-phase task with todo list

**Task**: Plan the governance policy generation workflow

```
Step 1: Create a todo list
"Create a todo list for generating 3 governance policies:
1. Model deployment approval
2. Data privacy controls
3. Bias monitoring"

Expected: Copilot uses manage_todo_list(operation="write")
Creates 3 todos with descriptions

Step 2: Mark one as in-progress
"Mark the model deployment policy todo as in-progress"

Expected: Copilot updates status to "in-progress"

Step 3: Complete it
"Mark model deployment policy as completed"

Expected: Status changes to "completed"

Step 4: Read the list
"Show me my current todo list"

Expected: Copilot displays all todos with status
```

**What You're Learning**:
- manage_todo_list tracks multi-step workflows
- Essential for agent orchestration patterns
- Provides visibility into progress

---

## Exercise 6: Combined Workflow - Real Task (Bonus)

**Objective**: Use all 5 tools together on a real task

**Task**: "Generate a governance policy for AI model versioning, referencing existing controls"

**Expected Tool Chain**:
```
1. manage_todo_list → Create plan:
   - Search for existing version control patterns
   - Identify related controls to reference
   - Generate policy document
   - Validate structure
   - Commit to repo

2. grep_search → Find "version" or "model" in existing policies

3. list_code_usages → Find where model versioning is implemented in EVA-JP

4. create_file → Generate docs/eva-ai-governance/20-controls/model-versioning.md
   with proper YAML metadata and traceability

5. read_file → Validate generated content
```

**Time**: 5-10 minutes  
**Outcome**: Complete governance policy document generated with tool assistance

---

## Practice Results Log

**Date**: _________  
**Time Started**: _________  
**Time Completed**: _________

### Exercise 1: read_file
- [ ] Successfully found and read vision paper
- [ ] Copilot displayed specific section
- Time: _____ minutes

### Exercise 2: grep_search
- [ ] Found PYTHONIOENCODING references
- [ ] Found AsyncOpenAI usages
- Time: _____ minutes

### Exercise 3: create_file
- [ ] Generated complete policy document
- [ ] Included YAML metadata and traceability
- Time: _____ minutes

### Exercise 4: list_code_usages
- [ ] Found all collect_evidence usages
- [ ] Got refactoring impact analysis
- Time: _____ minutes

### Exercise 5: manage_todo_list
- [ ] Created todo list
- [ ] Updated status (in-progress, completed)
- [ ] Read current list
- Time: _____ minutes

### Exercise 6: Combined Workflow (Bonus)
- [ ] Completed full governance policy generation
- [ ] All 5 tools used effectively
- Time: _____ minutes

**Total Time**: _____ minutes  
**Tools Mastered**: _____ / 5  
**Confidence Level**: Low / Medium / High

---

## Next Steps After Practice

1. **Repeat exercises** until all 5 tools feel natural (aim for < 20 minutes total)
2. **Apply to real tasks** - use these tools in your actual daily work
3. **Track time savings** - measure before/after on typical tasks
4. **Move to Tier 2 tools** - add run_in_terminal, get_changed_files, file_search

---

## Troubleshooting

**Problem**: Copilot isn't using the expected tool  
**Solution**: Be more explicit in your request:
- "Use grep_search to find..."
- "Read the file at path..."
- "Create a new file with..."

**Problem**: Tool results are incomplete  
**Solution**: Ask follow-up questions:
- "Show me more results"
- "Include line numbers"
- "Expand the context"

**Problem**: Tool is disabled  
**Solution**: Enable in VS Code Settings → GitHub Copilot → Tool Selection

---

## References

- [Project 13 README](./README.md) - Complete tool inventory and mapping
- [EVA Copilot Instructions](../../.github/copilot-instructions.md) - Coding standards
- [OS-vNext Workflows](../04-OS-vNext/workflows/copilot.md) - Documentation patterns
