-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema master_p
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema master_p
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `master_p` DEFAULT CHARACTER SET utf8 ;
USE `master_p` ;

-- -----------------------------------------------------
-- Table `master_p`.`PROFIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `master_p`.`PROFIL` (
  `id_profil` INT NOT NULL AUTO_INCREMENT,
  `nom_profil` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_profil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `master_p`.`UTILISATEUR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `master_p`.`UTILISATEUR` (
  `id_utilisateur` INT NOT NULL,
  `numtel` INT NOT NULL,
  `PROFIL_id_profil` INT NULL,
  PRIMARY KEY (`id_utilisateur`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `master_p`.`SUJET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `master_p`.`SUJET` (
  `id_sujet` INT NOT NULL AUTO_INCREMENT,
  `nom_sujet` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_sujet`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `master_p`.`ACTIVITE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `master_p`.`ACTIVITE` (
  `id_activite` INT NOT NULL AUTO_INCREMENT,
  `time_start` DATETIME NOT NULL,
  `time_end` DATETIME NOT NULL,
  PRIMARY KEY (`id_activite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `master_p`.`SMS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `master_p`.`SMS` (
  `id_sms` INT NOT NULL,
  `datetime` DATETIME NULL,
  `message` BLOB NOT NULL,
  `UTILISATEUR_id_utilisateur` INT NOT NULL,
  `SUJET_id_sujet` INT NULL,
  `ACTIVITE_id_activite` INT NULL,
  PRIMARY KEY (`id_sms`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET FOREIGN_KEY_CHECKS=0;
