# EVA-FEATURE: F13-02
# EVA-STORY: F13-02-001
# EVA-STORY: F13-04-001
# EVA-STORY: F13-04-002
# EVA-STORY: F13-04-003
# EVA-STORY: F13-04-004
# EVA-STORY: F13-04-005
# EVA-STORY: F13-04-006
# EVA-STORY: F13-04-007
# EVA-STORY: F13-04-008
# EVA-STORY: F13-04-009
# EVA-STORY: F13-04-010
# EVA-STORY: F13-04-011
# EVA-STORY: F13-04-012
# EVA-STORY: F13-04-013
# EVA-STORY: F13-05-001
# EVA-STORY: F13-05-002
# EVA-STORY: F13-05-003
# EVA-STORY: F13-05-004
# EVA-STORY: F13-05-005
# EVA-STORY: F13-06-001
# EVA-STORY: F13-06-002
# EVA-STORY: F13-06-003
# EVA-STORY: F13-06-004
# EVA-STORY: F13-07-001
# EVA-STORY: F13-08-001
# EVA-STORY: F13-08-002
# EVA-STORY: F13-08-003
# EVA-STORY: F13-08-004
# EVA-STORY: F13-08-005
# EVA-STORY: F13-09-001
# EVA-STORY: F13-09-002
# EVA-STORY: F13-09-003
# EVA-STORY: F13-10-001
# EVA-STORY: F13-10-002
# EVA-STORY: F13-10-003
# EVA-STORY: F13-10-004
# EVA-STORY: F13-12-001
# EVA-STORY: F13-12-002
# EVA-STORY: F13-12-003
# EVA-STORY: F13-12-004
# Configure VS Code Copilot Tools - Disable Low-Priority Tools
# Project 13: VS Code Tools Strategic Selection
# Date: 2026-01-25

<#
.SYNOPSIS
    Helps identify and document which VS Code Copilot tools to disable for optimal workflow.

.DESCRIPTION
    This script guides you through the process of reviewing and disabling 26 low-priority tools
    identified in Project 13 analysis. Disabling irrelevant tools reduces cognitive load and
    speeds up Copilot tool selection.

.NOTES
    Manual steps required - VS Code doesn't provide CLI for tool selection
    This script documents the process and provides the tool list
#>

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  VS Code Copilot Tools Configuration - Project 13" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[INFO] This script helps you disable 26 low-priority tools" -ForegroundColor Yellow
Write-Host "[INFO] Total tools: 156 -> Target: 130 (26 disabled)" -ForegroundColor Yellow
Write-Host ""

# Define low-priority tools to disable
$toolsToDisable = @{
    "Java Development (6 tools)" = @(
        "activate_java_debugging_control_tools",
        "activate_java_debug_session_management_tools",
        "debug_java_application",
        "evaluate_debug_expression",
        "get_debug_stack_trace",
        "get_debug_threads"
    )
    "DevBox Management (9 tools)" = @(
        "activate_devbox_resource_management_tools",
        "activate_azure_dev_box_configuration_tools",
        "devbox_customization_custom_task_generator",
        "devbox_customization_installed_apps_searcher",
        "mcp_devbox_devbox_action",
        "mcp_devbox_devbox_entra_id_check",
        "mcp_devbox_devbox_think",
        "mcp_devbox_get_operation_status",
        "mcp_devbox_devbox_resource"
    )
    "Specialty Azure Services (4 tools)" = @(
        "mcp_azure_mcp_confidentialledger",
        "mcp_azure_mcp_managedlustre",
        "mcp_azure_mcp_datadog",
        "mcp_azure_mcp_grafana"
    )
    "Notebooks (2 tools)" = @(
        "run_notebook_cell",
        "copilot_getNotebookSummary"
    )
    "Miscellaneous (5 tools)" = @(
        "open_simple_browser",
        "terminal_selection",
        "install_extension",
        "fetch_webpage",
        "web"
    )
}

Write-Host "[STEP 1] Review Tools to Disable" -ForegroundColor Green
Write-Host "-------------------------------------------------------------" -ForegroundColor Gray
Write-Host ""

$totalDisabled = 0
foreach ($category in $toolsToDisable.Keys | Sort-Object) {
    $tools = $toolsToDisable[$category]
    $count = $tools.Count
    $totalDisabled += $count
    
    Write-Host "[CATEGORY] $category" -ForegroundColor Cyan
    foreach ($tool in $tools) {
        Write-Host "  - $tool" -ForegroundColor Gray
    }
    Write-Host ""
}

Write-Host "[TOTAL] $totalDisabled tools to disable" -ForegroundColor Yellow
Write-Host ""

Write-Host "[STEP 2] Open VS Code Settings" -ForegroundColor Green
Write-Host "-------------------------------------------------------------" -ForegroundColor Gray
Write-Host ""
Write-Host "1. Press Ctrl+, (or Cmd+, on Mac) to open Settings" -ForegroundColor White
Write-Host "2. Search for: 'GitHub Copilot: Tool Selection'" -ForegroundColor White
Write-Host "3. Or navigate to: Extensions > GitHub Copilot > Tool Selection" -ForegroundColor White
Write-Host ""

Write-Host "[STEP 3] Disable Tools" -ForegroundColor Green
Write-Host "-------------------------------------------------------------" -ForegroundColor Gray
Write-Host ""
Write-Host "In the Tool Selection interface:" -ForegroundColor White
Write-Host "1. Scroll through the list of 156 tools" -ForegroundColor White
Write-Host "2. UNCHECK each tool listed above (26 total)" -ForegroundColor White
Write-Host "3. VS Code will save changes automatically" -ForegroundColor White
Write-Host ""

Write-Host "[STEP 4] Verify Configuration" -ForegroundColor Green
Write-Host "-------------------------------------------------------------" -ForegroundColor Gray
Write-Host ""
Write-Host "After disabling tools:" -ForegroundColor White
Write-Host "1. Check that '130 tools are enabled' appears at the top" -ForegroundColor White
Write-Host "2. Restart VS Code (optional but recommended)" -ForegroundColor White
Write-Host "3. Test Copilot response time - should feel faster" -ForegroundColor White
Write-Host ""

# Generate a checklist file
$checklistPath = Join-Path $PSScriptRoot "tool-configuration-checklist.md"

$checklistContent = @"
# Tool Configuration Checklist - Project 13

**Date**: $(Get-Date -Format "yyyy-MM-dd")  
**Target**: Disable 26 low-priority tools (156 → 130)

---

## Tools to Disable (26 total)

### Java Development (6 tools)

- [ ] activate_java_debugging_control_tools
- [ ] activate_java_debug_session_management_tools
- [ ] debug_java_application
- [ ] evaluate_debug_expression
- [ ] get_debug_stack_trace
- [ ] get_debug_threads

### DevBox Management (9 tools)

- [ ] activate_devbox_resource_management_tools
- [ ] activate_azure_dev_box_configuration_tools
- [ ] devbox_customization_custom_task_generator
- [ ] devbox_customization_installed_apps_searcher
- [ ] mcp_devbox_devbox_action
- [ ] mcp_devbox_devbox_entra_id_check
- [ ] mcp_devbox_devbox_think
- [ ] mcp_devbox_get_operation_status
- [ ] mcp_devbox_devbox_resource

### Specialty Azure Services (4 tools)

- [ ] mcp_azure_mcp_confidentialledger
- [ ] mcp_azure_mcp_managedlustre
- [ ] mcp_azure_mcp_datadog
- [ ] mcp_azure_mcp_grafana

### Notebooks (2 tools)

- [ ] run_notebook_cell
- [ ] copilot_getNotebookSummary

### Miscellaneous (5 tools)

- [ ] open_simple_browser
- [ ] terminal_selection
- [ ] install_extension
- [ ] fetch_webpage
- [ ] web

---

## Configuration Steps

1. [ ] Opened VS Code Settings (Ctrl+,)
2. [ ] Searched for "GitHub Copilot: Tool Selection"
3. [ ] Disabled all 26 tools listed above
4. [ ] Verified "130 tools are enabled" appears
5. [ ] Restarted VS Code
6. [ ] Tested Copilot response time

---

## Verification

**Before Configuration**:
- Total tools enabled: 156
- Copilot tool selection speed: _____

**After Configuration**:
- Total tools enabled: 130 (target)
- Copilot tool selection speed: _____ (should be faster)
- Perceived improvement: [ ] Yes [ ] No

**Date Completed**: _____________  
**Completed By**: Marco Presta

---

## Notes

Record any observations or issues during configuration:

```
(Add notes here)
```

---

## Next Steps

After disabling tools:

1. [ ] Complete Quick-Start Practice Guide (QUICK-START-PRACTICE.md)
2. [ ] Master 5 Tier 1 CRITICAL tools
3. [ ] Capture baseline metrics for typical tasks
4. [ ] Begin Week 1 practice plan (README.md)

---

## Rollback (If Needed)

If you need to re-enable any tools:
1. Open Settings > GitHub Copilot > Tool Selection
2. Check the boxes for tools you want to re-enable
3. Changes apply immediately (no restart needed)
"@

$checklistContent | Out-File -FilePath $checklistPath -Encoding UTF8
Write-Host "[GENERATED] Tool configuration checklist saved to:" -ForegroundColor Green
Write-Host "  $checklistPath" -ForegroundColor White
Write-Host ""

Write-Host "[INFO] Open the checklist file to track your progress" -ForegroundColor Yellow
Write-Host ""

# Provide summary
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  Configuration Summary" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Total Tools:          156" -ForegroundColor White
Write-Host "Tools to Disable:     26" -ForegroundColor Yellow
Write-Host "Target Configuration: 130 tools" -ForegroundColor Green
Write-Host ""
Write-Host "Expected Benefits:" -ForegroundColor Cyan
Write-Host "  - Reduced cognitive load" -ForegroundColor Gray
Write-Host "  - Faster tool selection by Copilot" -ForegroundColor Gray
Write-Host "  - More focused tool recommendations" -ForegroundColor Gray
Write-Host ""

# Prompt user
Write-Host "[ACTION REQUIRED] Please open VS Code Settings now and disable the tools" -ForegroundColor Yellow
Write-Host "[REFERENCE] Use the checklist file to track your progress" -ForegroundColor Yellow
Write-Host ""

$continue = Read-Host "Press Enter when you've completed the configuration (or type 'skip' to continue)"

if ($continue -ne "skip") {
    Write-Host ""
    Write-Host "[SUCCESS] Tool configuration complete!" -ForegroundColor Green
    Write-Host "[NEXT] Run the Quick-Start Practice Guide to master the top 5 tools" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "  See: QUICK-START-PRACTICE.md" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "[INFO] Configuration skipped - you can complete it later" -ForegroundColor Yellow
    Write-Host ""
}

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  Script Complete" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
