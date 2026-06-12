# Text/LaTeX Extraction

## Strategy
1. Parse LaTeX section structure
2. Extract `\section{}`, `\subsection{}` hierarchy
3. Preserve `\cite{}`, `\ref{}`, `\label{}`
4. Handle `\begin{figure}...\end{figure}` blocks
