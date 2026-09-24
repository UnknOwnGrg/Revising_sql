
-- Simply it does that if exist than delete it otherwise move to the next query
DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events(

    -- UUID -> 
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 

    event_name TEXT NOT NULL,

    -- JSONB -> Store json data in the binary format 
    metadata JSONB DEFAULT '{}'::jsonb,

    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events(event_name, metadata)
VALUES ('sign_up','{"browser":"chrome"}'),
('sign_in','{"user":"Ishak"}'); 

SELECT * FROM basics.app_events;

-- Simply to get the values of the metadata
SELECT 
    event_name, 
    metadata ->> 'user' AS user
FROM basics.app_events
WHERE metadata ? 'user'; 