USE topmodelsql;

INSERT INTO updated_models
SELECT DISTINCT model_id, model_name, trait, revenue * 100, rating, price_per_event * 100 FROM models;

INSERT INTO scheduled_events
SELECT DISTINCT next_event_date FROM models;

INSERT INTO locations
SELECT DISTINCT area FROM models;

INSERT INTO brands
SELECT DISTINCT brand FROM models;

INSERT INTO categories
SELECT DISTINCT category FROM models;

INSERT INTO agents
SELECT DISTINCT agent FROM models;

INSERT INTO models_agents
SELECT m.model_id, a.agent_id
FROM models AS m
JOIN agents AS a
ON a.agent_name = m.agent;

INSERT INTO models_brands
SELECT m.model_id, b.brand_id
FROM models AS m
JOIN brands AS b
ON b.brand_name = m.brand;

INSERT INTO models_categories
SELECT m.model_id, c.category_id
FROM models AS m
JOIN categories AS c
ON c.category_name = m.category;

INSERT INTO models_events
SELECT m.model_id, se.event_id
FROM models AS m
JOIN scheduled_events AS se
ON se.event_date = m.next_event_date

INSERT INTO models_locations
SELECT m.model_id, l.location_id
FROM models AS m
JOIN locations AS l
ON l.location_name = m.area;

--Test query for models_agents
SELECT um.model_id, model_name, a.agent_id, agent_name
FROM updated_models AS um
JOIN models_agents AS ma ON um.model_id = ma.model_id
JOIN agents AS a ON ma.agent_id = a.agent_id;

--Test query for models_brands
SELECT um.model_id, model_name, b.brand_id, brand_name
FROM updated_models AS um
JOIN models_brands AS mb ON um.model_id = mb.model_id
JOIN brands AS b ON mb.brand_id = b.brand_id;

--Test query for models_categories
SELECT um.model_id, model_name, c.category_id, category_name
FROM updated_models AS um
JOIN models_categories AS mc ON um.model_id = mc.model_id
JOIN categories AS c ON mc.category_id = c.category_id

--Test query for models_events
SELECT um.model_id, model_name, se.event_id, se.event_date
FROM updated_models AS um
JOIN models_events AS me ON um.model_id = me.model_id
JOIN scheduled_events AS se ON se.event_id = me.event_id;

--Test query for models_locations
SELECT um.model_id, model_name, l.location_id, l.location_name
FROM updated_models AS um
JOIN models_locations AS ml ON um.model_id = ml.model_id
JOIN locations l ON l.location_id = ml.location_id;