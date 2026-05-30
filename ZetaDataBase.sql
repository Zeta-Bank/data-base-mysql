DROP DATABASE IF EXISTS ZetaDataBase;
CREATE DATABASE ZetaDataBase;

USE ZetaDataBase;

CREATE TABLE `user_table`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE, 
    `password` VARCHAR(255) NOT NULL,     
    `cpf` CHAR(14) NOT NULL UNIQUE,        
    `money_amount` DECIMAL(15, 2) DEFAULT 0.00, 
    PRIMARY KEY(`id`)
);

CREATE TABLE `pix_key_table`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `id_user` INT NOT NULL,
    `key` VARCHAR(55) NOT NULL UNIQUE,
    PRIMARY KEY(`id`),
    /* constraint? Colocar dps*/
    FOREIGN KEY (`id_user`) REFERENCES `user_table`(`id`)
)