# Citation Script Usage

## ieee_citation.py
```
python scripts/ieee_citation.py --text "claim text" --format bibtex
python scripts/ieee_citation.py --claims claims.json --format ris
python scripts/ieee_citation.py --doi 10.XXXX/... --format enw
```

## Supported formats
- `bibtex` — BibTeX with IEEEtran-compatible entry types
- `ris` — RIS format for EndNote/Zotero
- `enw` — EndNote tagged format
