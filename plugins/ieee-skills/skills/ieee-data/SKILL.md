---
name: ieee-data
description: >-
  Prepare and audit data availability statements, reproducibility checklists, and dataset citations for IEEE journal and conference submissions. Use when user asks about data availability, reproducibility, dataset citation, or IEEE data policy. Trigger on "data availability", "reproducibility", "dataset citation", "data statement", "FAIR data", and Chinese phrasings like 数据可用性、数据声明、可复现性、数据集引用.
version: 1.0.0
author: Community contribution
---

# IEEE Data Availability & Reproducibility — Router

## Routing protocol

### 1. Load the manifest and core
Read [manifest.yaml](manifest.yaml) and all `always_load` files.

### 2. Identify the task
- **Data Availability Statement**: Draft a statement for IEEE submission
- **Reproducibility Checklist**: Audit against IEEE criteria
- **Dataset Citation**: Format dataset references

### 3. Apply the relevant rules
Use loaded core material to draft, audit, or format.

### 4. Reach for references when needed
Open on-demand per manifest.
