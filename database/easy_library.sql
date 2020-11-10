-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema easy_library
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `easy_library` ;

-- -----------------------------------------------------
-- Schema easy_library
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `easy_library` DEFAULT CHARACTER SET utf8 ;
USE `easy_library` ;

-- -----------------------------------------------------
-- Table `easy_library`.`responsavel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `easy_library`.`responsavel` (
  `idResponsavel` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idResponsavel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `easy_library`.`livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `easy_library`.`livros` (
  `idLivro` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `autor` VARCHAR(100) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `responsavel_id` INT NULL,
  PRIMARY KEY (`idLivro`),
  INDEX `fk_livros_responsavel_idx` (`responsavel_id` ASC),
  CONSTRAINT `fk_livros_responsavel`
    FOREIGN KEY (`responsavel_id`)
    REFERENCES `easy_library`.`responsavel` (`idResponsavel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `easy_library`.`responsavel`
-- -----------------------------------------------------
START TRANSACTION;
USE `easy_library`;
INSERT INTO `easy_library`.`responsavel` (`idResponsavel`, `cpf`, `nome`) VALUES (DEFAULT, '07363776113', 'Giovana Melo Leal');
INSERT INTO `easy_library`.`responsavel` (`idResponsavel`, `cpf`, `nome`) VALUES (DEFAULT, '05721115173', 'Gabrielly França Rodrigues');
INSERT INTO `easy_library`.`responsavel` (`idResponsavel`, `cpf`, `nome`) VALUES (DEFAULT, '07938736147', 'Gabriela Silva Albuquerque');

COMMIT;


-- -----------------------------------------------------
-- Data for table `easy_library`.`livros`
-- -----------------------------------------------------
START TRANSACTION;
USE `easy_library`;
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Drácula', 'Bram Stoker', 'Terror', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Frankenstein', 'Mary Shelley', 'Terror', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'The Shining', 'Stephen King', 'Terror', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'A seleção', 'Kiera Cas', 'Romance', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Sol da meia-noite', 'Stephenie Meyer', 'Romance', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'A culpa é das estrelas', 'John Green', 'Romance', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Hamlet', 'William Shakespeare', 'Drama', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Fahrenheit 451', 'Ray Bradbury', 'Drama', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'A cidade do sol', 'Khaled Hosseini', 'Drama', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Neuromancer', 'William Gibson', 'Ficção', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Duna', 'Frank Herbert', 'Ficção', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Admirável novo mundo', 'Aldous Huxley', 'Ficção', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'A paciente silenciosa', 'Alex Michaelides', 'Suspense', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Caixa de pássaros', 'Josh Malerman', 'Suspense', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'O homem de Giz', 'C.J Tudor', 'Suspense', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Minha breve história', 'Stephen Hawking', 'Autobiografia', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Minha história', 'Michelle Obama', 'Autobiografia', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Rita Lee - Uma auto biografia', 'Rita Lee', 'Autobiografia', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'História 3 - Passado e presente', 'Gislane Azevedo e Reinaldo Seriacopi', 'Didático', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Sociologia', 'Silvia Maria de Araújo,  Maria Aparecida Brito e Benilde Lenzi Montin', 'Didático', 'Disponível', NULL);
INSERT INTO `easy_library`.`livros` (`idLivro`, `titulo`, `autor`, `genero`, `status`, `responsavel_id`) VALUES (DEFAULT, 'Matemática - Contexto & Aplicações', 'Luiz Roberto Dante', 'Didático', 'Disponível', NULL);

COMMIT;

