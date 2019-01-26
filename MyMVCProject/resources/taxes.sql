CREATE Database `taxes' CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `taxes`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `userName` VARCHAR(45) NULL,
  `userIPN` CHAR(10) NULL,
  `userEmail` VARCHAR(20) NULL,
  `userPassword` VARCHAR(20) NULL,
  `userPhone` INT NULL,
  `userLogin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;

CREATE TABLE `taxes`.`reportstates` (
  `idreportstate` INT NOT NULL AUTO_INCREMENT,
  `reportstateDesc` VARCHAR(20) NULL,
  PRIMARY KEY (`idreportstate`))
ENGINE = InnoDB;

CREATE TABLE `taxes`.`inspector` (
  `idinspector` INT NOT NULL AUTO_INCREMENT,
  `inspectorName` VARCHAR(45) NULL,
  `inspectorEmail` VARCHAR(20) NULL,
  `inspectorPassword` VARCHAR(20) NULL,
  `inspectorLogin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idinspector`))
ENGINE = InnoDB;

CREATE TABLE `taxes`.`reports` (
  `idreports` INT NOT NULL AUTO_INCREMENT,
  `reportsUser` INT NOT NULL,
  `reportsInspector` INT NULL,
  `reportsCreateDate` DATETIME NULL,
  `reportsAcceptDate` DATETIME NULL,
  `reportsState` INT NULL,
  `reportsRefuseReason` VARCHAR(60) NULL,
  `reportsContent` BLOB NULL,
  PRIMARY KEY (`idreports`, `reportsUser`),
  CONSTRAINT `reportsUser`
    FOREIGN KEY (`reportsUser`)
    REFERENCES `taxes`.`user` (`iduser`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `reportsInspector`
    FOREIGN KEY (`reportsInspector`)
    REFERENCES `taxes`.`inspector` (`idinspector`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `repotsState`
    FOREIGN KEY (`reportsState`)
    REFERENCES `taxes`.`reportstates` (`idreportstate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `inspector` (`idinspector`, `inspectorName`, `inspectorEmail`, `inspectorPassword`, `inspectorLogin`) 
VALUES (1, 'Карпенко К.К.', 'karp@gmail1.com', '111111', first_inspector),
 (2, 'Карий К.К.', 'kar@gmail1.com', '111112', second_inspector);

INSERT INTO `user` (`iduser`, `userName`, `userIPN`, `userEmail`, `userPassword`, `userPhone`, `userLogin`) 
VALUES (1, 'Петренко О.І.', '1234567890', 'petr@gmail1.com', '111121', 0985346754, first_user),
 (2, 'Степаненко С.С.', '1234567891', 'step@gmail.com', '111122', 0678907654, second_user),
 (3, 'Петров В.В.', '1234567892', 'petr2@gmail1.com', '111123', 0934532398, third_user);
