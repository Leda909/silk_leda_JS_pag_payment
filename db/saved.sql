/* CREATE TABLE IF NOT EXISTS  orders  (
    order_id  INT(10) NOT NULL AUTO_INCREMENT,
    user_id  INT(10) NOT NULL,

    order_date timestamp() NOT NULL,

    order_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(order_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id) 
    ) ; */





CREATE TABLE IF NOT EXISTS order_line(
    order_id INT(10) NOT NULL AUTO_INCREMENT,
    product_id INT(10) NOT NULL,
    quantity INT(10) NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(product_id) REFERENCES product(product_id),
    FOREIGN KEY(quantity) REFERENCES cart(quantity)
    );