# IEEE R Backend (ggplot2)

## IEEE theme
```r
theme_ieee <- theme_bw() + theme(
  text = element_text(family = "sans", size = 9),
  panel.grid.minor = element_blank(),
  legend.position = "top"
)
```

## Export
```r
ggsave("figure.pdf", width = 3.5, height = 2.5, device = cairo_pdf, dpi = 300)
```
