# Output Format — IEEE Polishing

## Standard output

Return polished text as plain markdown. Structure:

```
## Polished version

[polished text]

## Changes summary
- [change 1]: [reason]
- [change 2]: [reason]

## Flagged issues (if any)
- [issue]: [suggestion for author input]
```

## For Chinese → English (zh-to-en)

```
## English translation

[translated text]

## Translation notes
- [note about key terminology choices]
- [note about structural changes from Chinese original]
```

## LaTeX-aware output

If the input contains LaTeX:
- Preserve all `\cite{}`, `\ref{}`, `\label{}` commands
- Preserve math mode `$...$` and `\begin{equation}...\end{equation}`
- Preserve `\usepackage{}` and preamble commands
- Fix only the prose, not the LaTeX markup
