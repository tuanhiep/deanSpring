-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DeanSpring
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DeanSpring` ;

-- -----------------------------------------------------
-- Schema DeanSpring
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DeanSpring` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `DeanSpring` ;

-- -----------------------------------------------------
-- Table `DeanSpring`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DeanSpring`.`User` ;

CREATE TABLE IF NOT EXISTS `DeanSpring`.`User` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DeanSpring`.`Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DeanSpring`.`Department` ;

CREATE TABLE IF NOT EXISTS `DeanSpring`.`Department` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DeanSpring`.`Request`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DeanSpring`.`Request` ;

CREATE TABLE IF NOT EXISTS `DeanSpring`.`Request` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `course` VARCHAR(45) NOT NULL,
  `section` VARCHAR(45) NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `de` INT NULL,
  `instructor` VARCHAR(45) NOT NULL,
  `amount` VARCHAR(45) NOT NULL,
  `motivation` TINYTEXT NULL,
  `commitment` TINYTEXT NULL,
  `note` TEXT NULL,
  `priority` VARCHAR(45) NULL,
  `date_created` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `date_revision` TIMESTAMP NULL,
  `Department_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Request_Department1_idx` (`Department_id` ASC) VISIBLE,
  CONSTRAINT `fk_Request_Department1`
    FOREIGN KEY (`Department_id`)
    REFERENCES `DeanSpring`.`Department` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DeanSpring`.`User_has_Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DeanSpring`.`User_has_Department` ;

CREATE TABLE IF NOT EXISTS `DeanSpring`.`User_has_Department` (
  `User_id` INT UNSIGNED NOT NULL,
  `Department_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`User_id`, `Department_id`),
  INDEX `fk_User_has_Department_Department1_idx` (`Department_id` ASC) VISIBLE,
  INDEX `fk_User_has_Department_User1_idx` (`User_id` ASC) VISIBLE,
  CONSTRAINT `fk_User_has_Department_User1`
    FOREIGN KEY (`User_id`)
    REFERENCES `DeanSpring`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Department_Department1`
    FOREIGN KEY (`Department_id`)
    REFERENCES `DeanSpring`.`Department` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
