# r-research-template

This repository is a reusable template for reproducible research projects combining:

- an **R package** for reusable modelling and analysis functions
- a **Quarto compendium** for reports, figures, tables, and outputs

---

## 1. Quick start

Load functions:

```r
devtools::load_all('.')
```

Run analysis:

```r
source('reports/scripts/01_prepare_data.R')
source('reports/scripts/02_run_model.R')
source('reports/scripts/03_make_figures.R')
```

Render report:

```bash
cd reports
quarto render Report_template.qmd
```

---

## 2. Project structure

```
r-research-template/
├─ DESCRIPTION
├─ NAMESPACE
├─ R/                     # reusable functions
├─ reports/
│  ├─ Report_template.qmd
│  ├─ scripts/
│  ├─ figures/
│  ├─ tables/
│  └─ output/
├─ data/
│  ├─ raw/
│  └─ processed/
└─ docs/
```

---

## 3. Workflow

1. Put reusable functions in `R/`
2. Use `reports/scripts/` for analysis steps
3. Save outputs to `reports/figures` and `reports/tables`
4. Generate final outputs via Quarto (`reports/`)

---

## 4. Reproducibility

This project uses `{renv}` for reproducibility:

```r
renv::init()
renv::snapshot()
renv::restore()
```

Dependency discovery mode: **implicit**
(scans R scripts and Quarto files)

---

## 5. Design philosophy

This template follows a **research compendium approach**:

- separation of code, data, and outputs
- modular functions as an R package
- analysis scripts separated from reusable code
- dynamic reporting using Quarto

Core principles:

- one project = one repository
- minimal but structured workflow
- reproducibility by default

---

## 6. Data policy

- `data/raw/`: never manually edited
- `data/processed/`: generated from scripts
- large datasets should not be committed

---

## 7. References

- The Turing Way (Research compendium)
  https://the-turing-way.netlify.app/reproducible-research/compendia

- R Packages (Hadley Wickham)
  https://r-pkgs.org/

- Quarto documentation
  https://quarto.org/docs/

---

## 8. Notes for template users

After creating a new project from this template:

- rename the repository
- update `DESCRIPTION`
- update author information
- simplify structure if needed
