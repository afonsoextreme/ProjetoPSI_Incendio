-- Tabela para armazenar os anos
CREATE TABLE IF NOT EXISTS Ano (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ano INTEGER NOT NULL
);

-- Tabela para armazenar os tipos de área ardida
CREATE TABLE IF NOT EXISTS TipoAreaArdida (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL -- Povoamentos, Matos, Agrícola, Total
);

-- Tabela para armazenar informações de área ardida por ano
CREATE TABLE IF NOT EXISTS AreaArdidaPorAno (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ano_id INTEGER NOT NULL,
    tipo_area_id INTEGER NOT NULL,
    hectares DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ano_id) REFERENCES Ano(id),
    FOREIGN KEY (tipo_area_id) REFERENCES TipoAreaArdida(id)
);

-- Tabela para armazenar os distritos
CREATE TABLE IF NOT EXISTS Distrito (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela para armazenar área ardida por distrito
CREATE TABLE IF NOT EXISTS AreaArdidaPorDistrito (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    distrito_id INTEGER NOT NULL,
    tipo_area_id INTEGER NOT NULL,
    hectares DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (distrito_id) REFERENCES Distrito(id),
    FOREIGN KEY (tipo_area_id) REFERENCES TipoAreaArdida(id)
);

-- Inserção de anos
INSERT INTO Ano (ano) VALUES 
(2024), (2023), (2022), (2021), (2020);

-- Inserção de tipos de área ardida
INSERT INTO TipoAreaArdida (tipo) VALUES ('Povoamentos'), ('Matos'), ('Agrícola'), ('Total');

-- Inserção de distritos
INSERT INTO Distrito (nome) 
VALUES 
('Aveiro'), ('Beja'), ('Braga'), ('Bragança'), ('Castelo Branco'), 
('Coimbra'), ('Évora'), ('Faro'), ('Guarda'), ('Leiria'), ('Lisboa'), 
('Portalegre'), ('Porto'), ('Santarém'), ('Setúbal'), 
('Viana do Castelo'), ('Vila Real'), ('Viseu'), ('Madeira'), ('Açores');

-- Inserção de áreas ardidas por ano para 2024
INSERT INTO AreaArdidaPorAno (ano_id, tipo_area_id, hectares)
VALUES
(1, 1, 6199),  -- Povoamentos
(1, 2, 8845),  -- Matos
(1, 3, 1853),  -- Agrícola
(1, 4, 16897); -- Total

-- Inserção de áreas ardidas por ano para 2023
INSERT INTO AreaArdidaPorAno (ano_id, tipo_area_id, hectares)
VALUES
(2, 1, 18975),  -- Povoamentos
(2, 2, 11846),  -- Matos
(2, 3, 2090),   -- Agrícola
(2, 4, 32911);  -- Total

-- Inserção de áreas ardidas por distrito para múltiplos distritos em 2024
INSERT INTO AreaArdidaPorDistrito (distrito_id, tipo_area_id, hectares)
VALUES
(4, 1, 1331),  -- Bragança Povoamentos
(4, 2, 1884),  -- Bragança Matos
(4, 3, 458),   -- Bragança Agrícola
(4, 4, 3673),  -- Bragança Total
(3, 1, 320),  -- Braga Povoamentos
(3, 2, 1121),  -- Braga Matos
(3, 3, 17),   -- Braga Agrícola
(3, 4, 1458),  -- Braga Total
(11, 1, 18),   -- Lisboa Povoamentos
(11, 2, 97),   -- Lisboa Matos
(11, 3, 23),   -- Lisboa Agrícola
(11, 4, 138);  -- Lisboa Total

-- Inserção de áreas ardidas por ano para 2020, 2021, 2022, 2023 e 2024
INSERT INTO AreaArdidaPorAno (ano_id, tipo_area_id, hectares)
VALUES
-- Ano 2020
(5, 1, 31566),  -- Povoamentos
(5, 2, 26964),  -- Matos
(5, 3, 6189),   -- Agrícola
(5, 4, 64719),  -- Total

-- Ano 2021
(4, 1, 8048),  -- Povoamentos
(4, 2, 15424), -- Matos
(4, 3, 2866),  -- Agrícola
(4, 4, 26338); -- Total

-- Inserção de áreas ardidas por distrito para múltiplos anos (2020 a 2024)
INSERT INTO AreaArdidaPorDistrito (distrito_id, tipo_area_id, hectares)
VALUES
-- Dados para Aveiro
(1, 1, 3119),  -- Povoamentos
(1, 2, 113),   -- Matos
(1, 3, 193),   -- Agrícola
(1, 4, 3425),  -- Total
-- Dados para Beja
(2, 1, 247),   -- Povoamentos
(2, 2, 6),     -- Matos
(2, 3, 339),   -- Agrícola
(2, 4, 592);   -- Total