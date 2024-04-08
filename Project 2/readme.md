# E-Commerce Data Analysis Project

This project involves analyzing E-Commerce data using Python and MySQL, followed by creating a Power BI dashboard for visualization.

## Project Overview

The dataset used for this project contains the following columns:

- Row ID
- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- City
- State
- Country
- Postal Code
- Market
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit
- Shipping Cost
- Order Priority

## Data Transformation

The initial steps in the project involved loading the data into a Pandas DataFrame and performing data transformations. Key transformations included:

- Converting "Order Date" and "Ship Date" columns to datetime format.
- Removing duplicate rows from the dataset.
- Creating separate tables for orders, customers, products, and order details.

## MySQL Database Setup

The transformed data was then exported into CSV files and imported into MySQL Workbench to create a database. The tables created in MySQL include:

- Orders
- Customers
- Products
- Order Details

## Analytical Queries

After setting up the database, various analytical queries were written in MySQL to gain insights into the E-Commerce data. Examples of queries include:

- Total sales by month and year.
- Profit analysis by product category.
- Customer segmentation analysis.

## Dashboard Creation

Using the data from MySQL, a dashboard was created using visualization tool MS Power BI. The dashboard includes:

- Measures such as total sales, profit, and shipping costs.
- Graphs and charts for visual representation of data trends.
- Interactive buttons for filtering and exploring data subsets.

## Repository Structure

- `data/`: Contains the original dataset and exported CSV files.
- `scripts/`: Includes the Python script for data transformation.
- `queries/`: Contains SQL queries used for data analysis.
- `dashboard/`: Includes the pbix file for the dashboard.

## How to Run

1. Clone the repository to your local machine.
2. Set up a MySQL database using the provided CSV files.
3. Run the Python script for data transformation (`scripts/transform_data.py`).
4. Execute the SQL queries in MySQL Workbench (`queries/`).
5. Run the dashboard code (`dashboard/app.py`) to launch the dashboard.

## Dependencies

- Python 3.x
- Pandas
- MySQL Workbench
- MS Power BI

