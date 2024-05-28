const { Order } = cds.entities('sales')

module.exports = srv => {
    srv.on('READ', 'Order', async (req, next) => {
        const items = await next()
        return items//.filter(item => item.ID == 2) //Erase the comment of filter to get a specific order by ID
    })


        const newOrder = {
                ID: 123,
                customerID_ID: 2,
                orderDate: new Date(),
                
            }

  cds.run(INSERT.into(Order).entries(newOrder))
  

}
//function calculateTotalDiscount(order, p2) {
   // let order = sales.NewOrder.totalAmount
 //}

 //function calculateTotalDiscount(NewOrder, discountRate) {

  //  let discountRate = 0.2;
    

 //}

 // function checkDayAvailable(parameter1: String) returns Boolean;


  
