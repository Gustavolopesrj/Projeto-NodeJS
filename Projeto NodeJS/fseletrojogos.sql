CREATE SCHEMA `fullstack` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
use fullstack;

CREATE TABLE `fullstack`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NULL,
  `produto` VARCHAR(45) NULL,
  `descricao` VARCHAR(200) NULL,
  `preco` DECIMAL(8,2) NULL,
  `precoAnterior` DECIMAL(8,2) NULL,
  `nomeImagem` VARCHAR(70) NULL,
  PRIMARY KEY (`idprodutos`))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


CREATE TABLE `fullstack`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` DECIMAL(11) NULL,
  PRIMARY KEY (`idusuario`))ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `fullstack`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `idusuario` INT NULL,
  `idprodutos` INT NULL,
  `quantidade` INT NULL,
  `nome` VARCHAR(60) NULL,
  `email` VARCHAR(50) NULL,
  `telefone` DECIMAL(11) NULL,
  PRIMARY KEY (`idpedido`))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
  
ALTER TABLE `fullstack`.`pedido` 
ADD INDEX `idprodutos_idx` (`idprodutos` ASC) VISIBLE;
;
ALTER TABLE `fullstack`.`pedido` 
ADD CONSTRAINT `idprodutos`
  FOREIGN KEY (`idprodutos`)
  REFERENCES `fullstack`.`produtos` (`idprodutos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Ação', 'jogos','Horizon Zero Dawn - Complete Edition', '90','150', '/imagens/horizon.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Ação', 'jogos','God Of War', '150', '200','/imagens/gow.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Ação', 'jogos','Tomb Raider - Definitive Edition', '80', '130','/imagens/tombraider.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Corrida', 'jogos','Need For Speed - Heat', '70', '100','/imagens/nfsheat.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Corrida', 'jogos','Gran Turismo Sport', '90', '150','/imagens/granturismo.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Corrida', 'jogos','Sonic Team Racing', '60','90', '/imagens/sonicracing.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Luta', 'jogos','Injustice 2 - Legendary Edition', '100', '140','/imagens/injustice2.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Luta', 'jogos','Mortal Kombat 11 - Aftermath', '130','200', '/imagens/mkaftermath.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Luta', 'jogos','Samurai Shodown', '150','200', '/imagens/samurai.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Tiro', 'jogos','Wolfenstein 2 - The New Colossus', '50','100', '/imagens/wolfenstein.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Tiro', 'jogos','Battlefield 5', '120', '150','/imagens/battlefieldv.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('Tiro', 'jogos','Call of Duty - Modern Warfare', '120', '180','/imagens/codmw.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('RPG', 'jogos','The Witcher 3 - Wild Hunt', '150', '200','/imagens/thewitcher3.jpeg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('RPG', 'jogos','Final Fantasy VII - Remake', '100', '180','/imagens/ffviii.jpg');
INSERT INTO `fullstack`.`produtos` (`categoria`, `produto`,`descricao`, `preco`, `precoAnterior`,`nomeImagem`) VALUES ('RPG', 'jogos','Persona 5', '80', '120','/imagens/persona5.jpg');
