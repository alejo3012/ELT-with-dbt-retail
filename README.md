
# ELT with dbt – Retail Analytics Project

This project demonstrates a **modern ELT pipeline using dbt** for a simple retail dataset. It follows best practices for data modeling, testing, and documentation, and is designed as a **portfolio project** showcasing core Data Engineering skills.

## 🎯 Objective

Build an end-to-end ELT pipeline with:
- Clear **staging** and **mart** layers
- **Data quality tests** to ensure reliability
- **Documentation** for transparency and maintainability

The goal is to transform raw retail data into analytics-ready models that support business KPIs.

## 🏗 Architecture

```
CSV (source)
   ↓
Staging models
   ↓
Mart models (sales / customers / products)
   ↓
Data tests & documentation
```

## 🧰 Tech Stack

- **dbt Core**
- **PostgreSQL** (local, Docker-based)
- **dbt Seeds** (CSV source data)

## 🚀 How to Run the Project

1. Install dependencies:
   ```bash
   dbt deps
   ```

2. Configure your `profiles.yml` to point to your local PostgreSQL database.

3. Load seed data:
   ```bash
   dbt seed
   ```

4. Run transformations:
   ```bash
   dbt run
   ```

5. Execute data quality tests:
   ```bash
   dbt test
   ```

6. Generate and serve documentation:
   ```bash
   dbt docs generate && dbt docs serve
   ```

## ✅ Results

- Analytics-ready **retail marts**
- Monthly **sales and margin KPIs**
- **10–12 data quality tests**, including:
  - `not_null`
  - `unique`
  - `accepted_values`
- Fully generated **dbt documentation** with lineage

## 📁 Project Structure

```
models/
  staging/
  marts/
  tests/
seeds/
analyses/
dbt_project.yml
packages.yml
```

## 💡 What This Project Shows

- Practical use of **ELT with dbt**
- Clean separation between **raw, staging, and mart layers**
- Strong focus on **data quality and testing**
- Documentation-first mindset for analytics engineering
- A solid foundation for scaling to larger datasets or cloud warehouses
