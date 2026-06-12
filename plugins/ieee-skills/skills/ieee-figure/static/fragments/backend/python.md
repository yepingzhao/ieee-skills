# IEEE Python Backend (matplotlib)

## Mandatory rcParams (always first)
```python
plt.rcParams['font.family'] = 'sans-serif'
plt.rcParams['font.sans-serif'] = ['Arial', 'DejaVu Sans', 'Helvetica']
plt.rcParams['pdf.fonttype'] = 42   # editable text in PDF
plt.rcParams['ps.fonttype'] = 42
```

## IEEE color scheme
Use colorblind-safe, grayscale-distinguishable palette.

## Export
```python
fig.savefig('figure.pdf', format='pdf', dpi=300, bbox_inches='tight')
fig.savefig('figure.png', format='png', dpi=300, bbox_inches='tight')
```

## Dimensions
- Single column: `figsize=(3.5, 2.5)`
- Double column: `figsize=(7.16, 3.5)`
