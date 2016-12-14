# Sportido-Billing


On a retail website, the following discounts apply:
1. If the user is an employee of the store, he gets a 30% discount
2. If the user is an affiliate of the store, he gets a 10% discount
3. If the user has been a customer for over 2 years, he gets a 5% discount.
4. For every $100 on the bill, there would be a $ 5 discount (e.g. for $ 990, you get $ 45 as a discount).
5. The percentage based discounts do not apply on groceries. 6. A user can get only one of the percentage based discounts on a bill.
 
Write a program with test cases such that given a bill, it finds the net payable amount. Please note the stress is on object oriented approach and test coverage.
 
You will be evaluated based on following parameters
 
1. Design principles like SOLID, DRY
2. Maintainability ( or Flexibility / Test-ability)
3. Performance and reliability
4. Scalability

Solution:

First create a database name as sportido and then import the sql file. and place the src folder in your server root folder to access the file. 

All credentials and setting will be done in config file.

I have declare an object in Order class. Just pass the cart id and user id in the constructor and get the desire resukt.

case1:  cart_id = 1 and user_id = 1 where it found the user as employee and allocate the 30% discount on non grocies product.

case 2: cart_id = 2 and user_id = 2 where it found the user as affiliated suer and allocate the 10% discount on non grocies product.

case 3: cart_id = 3 and user_id = 3 
 
 Here 2 cases occur. if an entry exists into order table of 3 years ago then it will allocate 5% discount else it will allocate 0. You can change the order date and can see the difference.
 
