import pandas as pd

main_df= pd.read_csv("ECOMM DATA.xlsx - Orders.csv")
main_df.head()

main_df.info()

main_df["Order Date"]=pd.to_datetime(main_df["Order Date"])
main_df["Ship Date"]=pd.to_datetime(main_df["Ship Date"])

main_df.shape

main_df.info()

main_df= main_df.drop_duplicates()
main_df.shape

Orders_table= main_df[["Order ID","Order Date","Ship Date","Ship Mode","Customer ID","Shipping Cost","Order Priority"]]
Orders_table["Order Month"]=Orders_table["Order Date"].dt.month
Orders_table["Order Year"]=Orders_table["Order Date"].dt.year
Orders_table["Order Weekday"]=Orders_table["Order Date"].dt.weekday

Orders_table["Ship Month"]=Orders_table["Ship Date"].dt.month
Orders_table["Ship Year"]=Orders_table["Ship Date"].dt.year
Orders_table["Ship Weekday"]=Orders_table["Ship Date"].dt.weekday

Orders_table

Customer_table= main_df[["Customer ID","Customer Name","Segment","City","State", "Country", "Postal Code"]]
Customer_table

Products= main_df[["Product ID", "Category","Sub-Category", "Product Name"]]
Products

Order_details = main_df[["Row ID","Order ID","Product ID","Sales","Quantity","Discount","Profit"]]
Order_details

Orders_table.to_csv('orders.csv', index=False)
Customer_table.to_csv("customers.csv", index=False)
Products.to_csv("products.csv", index=False)
Order_details.to_csv("order_details.csv", index=False)
