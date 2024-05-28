using sales from '../db/schema';

service OrderService {
    entity Customer as projection on sales.Customer;
    entity Product as projection on sales.Product;
    entity OrderItem as projection on sales.OrderItem;
    entity Order as projection on sales.Order;
    entity NewOrder as projection on sales.NewOrder;
    function calculateTotalDiscount() returns Integer;
}
