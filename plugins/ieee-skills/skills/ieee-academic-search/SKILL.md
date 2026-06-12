---
name: ieee-academic-search
description: >-
  Multi-source academic search for IEEE papers across IEEE Xplore, dblp, ACM Digital Library, and Google Scholar. Search by topic, DOI, or author; deduplicate and export in BibTeX, RIS, or NBIB. Use when user asks to find IEEE papers, search literature, or verify references. Trigger on "search papers", "IEEE Xplore", "find articles", "academic search", "literature search", "dblp search", and Chinese phrasings like 搜论文、文献搜索、找文章、学术搜索.
version: 1.0.0
author: Community contribution
---

# IEEE Academic Search — Router

## Routing protocol

### 1. Load the manifest and core
Read [manifest.yaml](manifest.yaml) and all `always_load` files.

### 2. Determine search workflow
- **Topic search**: Keywords → multi-source query → deduplicate → return
- **DOI/ID lookup**: Resolve DOI/PMID/arXiv ID → fetch metadata → format
- **Author search**: Author name + venue filter → publications list

### 3. Route to sources
- IEEE Xplore (primary for IEEE venues)
- dblp (CS bibliography)
- ACM Digital Library (computing)
- Google Scholar (fallback)

### 4. Deduplicate and format
Merge by DOI/title. Export in requested format.

### 5. Reach for references when needed
Open on-demand references per manifest.
