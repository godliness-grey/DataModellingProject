Overview:
Fufu Republic is a popular restaurant chain in Nigeria with multiple outlets nationwide. While the
core menu is standardized, some items vary by location (e.g., the Agege branch may sell
Chinese Rice, while the Lekki branch might not). Customers can order online through the
website or visit outlets for dine-in or take-out.
Payment Methods:
The restaurant accepts:
● Cash
● Debit card payments via Nomba POS terminals at outlets
● Online payments processed through gateways like Nomba Web Checkout, Paystack,
Interswitch etc.
Challenges:
1. Inventory Management:
Variations in customer demand and menu items across branches make it challenging to
maintain optimal stock levels.
2. Customer Experience:
The restaurant aims to improve the customer experience by offering personalized
promotions based on purchasing behavior.
Objective:
Fufu Republic wants to leverage data to:
● Understand sales trends across locations, payment methods, and dining options
(dine-in, take-out, online).
● Manage stock levels efficiently, reducing waste and ensuring availability.
● Enhance customer experience by analyzing purchasing habits and tailoring promotions
accordingly.

As a recently hired data engineer at Fufu Republic, you have been tasked with developing a
dimensional model to address the business's needs for data-driven decision-making.
1. Map out the necessary entities ,relationships and constraints: This should be a
model (Any degree of abstraction is okay)
2. Create a dimensional model:
○ Identify a business process of your choice
○ List the business question under the business process you selected
○ Identify the grain, dimensions and fact.

Solution:

1. Answer to the first problem is found on the .png file named Fufu republic where we have various entities and also stated how the attributes are relative.
From the .png file, we can see that:
i.   Branch to Orders: One-to-Many (One branch can have many orders)
ii.  Orders to Order_Item: One-to-Many (One order can have many order items)
iii. Menu_Item to Order_Item: One-to-Many (One menu item can appear in many order items)
iv.  Orders to Customer: Many-to-One (Many orders can be placed by one customer)
v.   Orders to Payment_Method: Many-to-One (Many orders can be paid using one payment method)
vi.  Branch to Inventory: One-to-Many (One branch can have many inventory records)

2. Number two solution 
The solution to the second problem can be found in the .docs named Fufu republic business model where the business process, follow up questions, dimensional models stating the Grains, Facts and Dimensions.

> The second assignemt deals with dbt seeding of the data and the code used to generate this is the python file in the same folder, here the seeding is done, connection to database and creation of the replica tables on database and then populated using another command in python.
> dbt project fufu_dbt was initialized also as part of the steps to create the models.
> The questions to the followup assignment is found in the dbtAssignment2 file.pdf
