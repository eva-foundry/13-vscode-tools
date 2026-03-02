# Tool Configuration Checklist - Project 13

**Date**: 2026-01-25  
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

`
(Add notes here)
`

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
