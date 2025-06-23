-- MySQL Workbench Synchronization
-- Generated: 2025-06-14 15:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Yushawu

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `littlelemondb`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Orders` 
DROP FOREIGN KEY `customer_id_fk`;

ALTER TABLE `littlelemondb`.`Customers` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Orders` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Bookings` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Menus` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Staff` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`OrderDelivery` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `littlelemondb`.`Orders` 
ADD CONSTRAINT `orders_customer_id_fk`
  FOREIGN KEY (`CustomerID`)
  REFERENCES `littlelemondb`.`Customers` (`CustomerID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `littlelemondb`.`Bookings` 
ADD CONSTRAINT `bookings_customer_id_fk`
  FOREIGN KEY (`CustomerID`)
  REFERENCES `littlelemondb`.`Customers` (`CustomerID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `staff_id_fk`
  FOREIGN KEY (`StaffID`)
  REFERENCES `littlelemondb`.`Staff` (`StaffID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `littlelemondb`.`OrderDelivery` 
ADD CONSTRAINT `order_id_fk`
  FOREIGN KEY (`OrderID`)
  REFERENCES `littlelemondb`.`Orders` (`OrderID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
