CREATE TABLE eztags_description (
   keyword_id integer not null default 0,
   description_text TEXT,
   locale varchar(255) NOT NULL default '',
   PRIMARY KEY (keyword_id, locale)
);