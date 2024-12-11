USE topmodelsql;


DROP TABLE IF EXISTS models_locations;
DROP TABLE IF EXISTS models_events;
DROP TABLE IF EXISTS models_categories;
DROP TABLE IF EXISTS models_agents;
DROP TABLE IF EXISTS models_brands;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS scheduled_events;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS agents;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS prices;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS updated_models;

CREATE TABLE updated_models (
	model_id		INT NOT NULL PRIMARY KEY,
	model_name		VARCHAR(40) NOT NULL,
	model_trait		VARCHAR(40) NOT NULL,
	model_revenue	INT NOT NULL,
	model_rating	INT NOT NULL CHECK (model_rating >= 0 AND model_rating <= 10),
	model_price		INT NOT NULL);

CREATE TABLE scheduled_events (
	event_id		INT IDENTITY(1,1) PRIMARY KEY,
	event_date		DATE NOT NULL);

CREATE TABLE models_events (
	model_id INT NOT NULL,
	event_id INT NOT NULL
	CONSTRAINT PK_ModelsEvents PRIMARY KEY
	(
		model_id,
		event_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (event_id) REFERENCES scheduled_events (event_id) ON DELETE CASCADE,		
);

CREATE TABLE categories (
	category_id		INT IDENTITY(1,1) PRIMARY KEY,
	category_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_categories (
	model_id		INT NOT NULL,
	category_id		INT NOT NULL
	CONSTRAINT PK_ModelsCategories PRIMARY KEY
	(
		model_id,
		category_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE,		
);

CREATE TABLE agents (
	agent_id	INT IDENTITY(1,1) PRIMARY KEY,
	agent_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_agents (
	model_id		INT NOT NULL,
	agent_id		INT NOT NULL
	CONSTRAINT PK_ModelsAgents PRIMARY KEY
	(
		model_id,
		agent_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (agent_id) REFERENCES agents (agent_id) ON DELETE CASCADE,		
);

CREATE TABLE brands (
	brand_id	INT IDENTITY(1,1) PRIMARY KEY,
	brand_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_brands (
	model_id		INT NOT NULL,
	brand_id		INT NOT NULL
	CONSTRAINT PK_ModelsBrands PRIMARY KEY
	(
		model_id,
		brand_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE,		
);

CREATE TABLE locations (
	location_id	INT IDENTITY(1,1) PRIMARY KEY,
	location_name	VARCHAR(40) NOT NULL);

CREATE TABLE models_locations (
	model_id		INT NOT NULL,
	location_id		INT NOT NULL
	CONSTRAINT PK_ModelsLocations PRIMARY KEY
	(
		model_id,
		location_id
	),
	FOREIGN KEY (model_id) REFERENCES updated_models (model_id) ON DELETE CASCADE,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE,		
);