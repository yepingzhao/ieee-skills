# IEEE LaTeX Backend (tikz/pgfplots)

## Preamble
```latex
\usepackage{pgfplots}
\pgfplotsset{compat=1.18}
\usetikzlibrary{plotmarks}
```

## IEEE style
```latex
\begin{tikzpicture}
\begin{axis}[
  width=\columnwidth,
  height=6cm,
  grid=major,
  xlabel={X Label},
  ylabel={Y Label},
  legend style={font=\footnotesize}
]
\end{axis}
\end{tikzpicture}
```

## Export
Standalone `.tex` file compilable to PDF. Or embed in IEEEtran document.
