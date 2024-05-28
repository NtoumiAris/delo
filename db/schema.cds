namespace sales;

entity Customer {
    key ID      : Integer;
        name    : String;
        email   : String;
        address : String;
}

annotate Customer with {

    email @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

}

entity Product {
    key ID          : Integer;
        name        : String;
        description : String;
        price       : Integer;
}

entity OrderItem {
    key ID        : Integer;
        orderID   : Integer;
        productID : Association to Product;
        quantity  : Integer;
        lineTotal : Integer @calculated = quantity * productID.price; //****

}

entity Order {
    key ID         : Integer;
        customerID : Association to Customer;
        orderDate  : Date default current_date; //***** I must replace this with the current date by default
//totalAmount: Integer @calculated = sum(OrderItem.lineTotal) { where OrderItem.orderID = $self.ID }  ;
}

entity NewOrder as
    select
        key 
            
           
            sum(
                b.lineTotal
            ) as totalAmount : Integer
    from Order as a
    left join OrderItem as b
        on b.orderID = a.ID;