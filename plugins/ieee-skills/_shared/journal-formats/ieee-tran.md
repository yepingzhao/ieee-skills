# IEEE Transactions Formatting Reference

Shared reference for ieee-polishing and ieee-writing. IEEEtran LaTeX class conventions.

## Template
`\documentclass{IEEEtran}` for transactions. Official: https://www.ieee.org/conferences/publishing/templates.html

## Section conventions
- **Abstract**: 150-250 words, no citations, self-contained
- **Keywords**: 3-6 IEEE taxonomy keywords
- **Introduction**: Problem, motivation, gap, contribution, organization
- **Related Work**: Separate section or part of Introduction
- **Methodology**: Technical description
- **Experiments**: Setup, datasets, baselines, metrics, results
- **Discussion**: Interpretation, limitations (may merge with Results)
- **Conclusion**: Summary, no new information

## Formatting rules
- Double column, 10pt font
- Margins: 0.75in left/right, 1in top/bottom
- Column width: 3.5in, gap: 0.25in
- Figures: Vector (.pdf, .eps preferred), 300 dpi minimum raster
- Tables: `\usepackage{booktabs}`, no vertical rules
- References: `\bibliographystyle{IEEEtran}`, numbered in order

## Common LaTeX issues
1. **Float placement**: Use `[t]`, `[b]`, `[p]`, `[h]`, `[!]`
2. **Overfull hbox**: Reword the offending sentence
3. **Widow/orphan**: Adjust with `\looseness=-1` or `\enlargethispage`
4. **Figure too wide**: Scale with `\includegraphics[width=\columnwidth]{...}`
5. **Equation too long**: Break with `\IEEEeqnarray` or `\begin{multline}`
