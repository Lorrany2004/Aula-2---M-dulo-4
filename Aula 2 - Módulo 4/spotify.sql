CREATE TABLE Musica 
( 
 codmusica INT PRIMARY KEY AUTO_INCREMENT,  
 codhistorico INT NOT NULL,  
 codalbum INT NOT NULL,  
 codgenero INT NOT NULL,  
 codplaylist INT NOT NULL,  
); 

CREATE TABLE Usuario 
( 
 codusuario INT PRIMARY KEY AUTO_INCREMENT,  
 Nome VARCHAR(n) NOT NULL DEFAULT '50',  
 datanascimento DATE NOT NULL DEFAULT '15',  
 nacionalidade INT NOT NULL,  
); 

CREATE TABLE artista 
( 
 codartista INT PRIMARY KEY AUTO_INCREMENT,  
 nome INT NOT NULL DEFAULT '30',  
 codgenero INT NOT NULL,  
); 

CREATE TABLE playlist 
( 
 codplaylist INT PRIMARY KEY AUTO_INCREMENT,  
 codusuario INT NOT NULL,  
); 

CREATE TABLE album 
( 
 codalbum INT PRIMARY KEY AUTO_INCREMENT,  
 qtd INT NOT NULL,  
 codartista INT NOT NULL,  
); 

CREATE TABLE genero 
( 
 codgenero INT PRIMARY KEY AUTO_INCREMENT,  
); 

CREATE TABLE historico 
( 
 codhistorico INT PRIMARY KEY AUTO_INCREMENT,  
 producao INT NOT NULL,  
 codusuario INT NOT NULL,  
); 

ALTER TABLE Musica ADD FOREIGN KEY(codhistorico) REFERENCES historico (codhistorico)
ALTER TABLE Musica ADD FOREIGN KEY(codalbum) REFERENCES album (codalbum)
ALTER TABLE Musica ADD FOREIGN KEY(codgenero) REFERENCES genero (codgenero)
ALTER TABLE Musica ADD FOREIGN KEY(codplaylist) REFERENCES playlist (codplaylist)
ALTER TABLE artista ADD FOREIGN KEY(codgenero) REFERENCES genero (codgenero)
ALTER TABLE playlist ADD FOREIGN KEY(codusuario) REFERENCES Usuario (codusuario)
ALTER TABLE album ADD FOREIGN KEY(codartista) REFERENCES artista (codartista)
ALTER TABLE historico ADD FOREIGN KEY(codusuario) REFERENCES Usuario (codusuario)
