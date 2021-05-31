CREATE DATABASE SiteInd;

USE SiteInd;

CREATE TABLE tbUsuarios (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    NomeUsuario VARCHAR (40),
    SobreNome VARCHAR (45),
    Usuario VARCHAR (50),
    Senha VARCHAR(30),
    Email VARCHAR(50)
) AUTO_INCREMENT = 1;

INSERT INTO tbUsuarios VALUES 
(NULL,"Fabrício","Ajala","Pedalera","651Ajala","fabricio_ajala@hotmail.com"),
(NULL,"Zeca","Silva","ZeBruto","Zebruto1010","zeca_borges@hotmail.com");

select * from tbUsuarios;

CREATE TABLE tbEquipamentos (
	idEquipamento INT PRIMARY KEY AUTO_INCREMENT,
    TipoEquipamento VARCHAR (20),
    CHECK (TipoEquipamento = "Capacete" OR TipoEquipamento = "Camisa" OR TipoEquipamento = "Calça" 
								OR TipoEquipamento = "Shorts" OR TipoEquipamento = "Sapatilha" OR TipoEquipamento = "Agasalho"),
    MarcaEquipamento VARCHAR (30),
    ModeloEquipamento VARCHAR (30),
    Opiniao VARCHAR (100),
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES tbUsuarios(idUsuario)
) AUTO_INCREMENT = 1000;

INSERT INTO tbEquipamentos VALUES 
	(NULL,"Agasalho","RockRider","Ipermeavel","Muito Bom, resistente e durável",1),
    (NULL,"Shorts","Caloi","Manquito","Durabilidade Média, Bom custo-beneficio",2);
    
select * from tbEquipamentos;

CREATE TABLE tbTrajetos (
	idTrajeto INT PRIMARY KEY AUTO_INCREMENT,
    NomeTrajeto VARCHAR (40),
    Distancia DECIMAL (10,2),
    Altimetria DECIMAL (10,2),
    Tempo TIME,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES tbUsuarios(idUsuario)
) AUTO_INCREMENT = 2000;

INSERT INTO tbTrajetos VALUES
	(NULL,"Descida Aldeia",148.940,780.230,"03:22",1),
    (NULL,"Aquecimento Corredor",32.165,780.230,"01:17",2);
    
select * from tbTrajetos;

CREATE TABLE tbBike (
	idBike INT PRIMARY KEY AUTO_INCREMENT,
    MarcaBike VARCHAR (30),
    ModeloBike VARCHAR (30),
    QuadroBike VARCHAR (30),
    Configuraçao VARCHAR (100),
    Ano DATE,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES tbUsuarios(idUsuario)
) AUTO_INCREMENT = 3000;

INSERT INTO tbBike VALUES 
(NULL,"Caloi","Elite 30","MTB","Shimano Deore","2019-01-01",1),
(null,"Caloi","Barra Forte","Casual","Detalhes Cromados","1990-01-01",2);

select * from tbBike;

CREATE TABLE tbGrupos (
	idGrupo INT PRIMARY KEY AUTO_INCREMENT,
    NomeGrupo VARCHAR (60),
    DescriçaoGrupo VARCHAR (100),
    DataCriaçaoGrupo DATETIME,
    NomeFundador VARCHAR (40)
) AUTO_INCREMENT = 4000;

INSERT INTO tbGrupos VALUES 
(NULL,"Alienigenas do Pedal","Para amantes de bike","2021-05-25","Fabrício");
    
select * from tbGrupos;

CREATE TABLE tbInscriçoes (
	idUsuarioInscrito INT,
    FOREIGN KEY (idUsuarioInscrito) REFERENCES tbUsuarios(idUsuario),
    idGrupoCriado INT,
    FOREIGN KEY (idGrupoCriado) REFERENCES tbGrupos(idGrupo)
    ) AUTO_INCREMENT = 5000;
    
INSERT INTO tbInscriçoes VALUES 
(1,4000),
(2,4000);

select * from tbInscriçoes;