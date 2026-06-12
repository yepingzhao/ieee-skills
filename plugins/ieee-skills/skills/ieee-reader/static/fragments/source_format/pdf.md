# PDF Extraction (IEEE Double-Column)

## Strategy
1. Extract text with PDF tool (preserve column order)
2. Handle IEEEtran double-column: left column first, then right
3. Detect and extract figures with captions
4. Preserve math notation
5. Reconstruct tables as markdown
