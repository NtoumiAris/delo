module.exports = srv => {
    srv.on('READ', 'Order', async (req, next) => {
        const items = await next()
        return items.filter(item => item.ID = 2) //Erase the comment of filter to get a specific order by ID
    })
}
