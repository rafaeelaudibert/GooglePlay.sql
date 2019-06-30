CREATE FUNCTION trg_insert_categorization()
RETURNS trigger AS
$func$
BEGIN
	IF (SELECT type FROM item WHERE id = NEW.item_id) != NEW.category_item_type THEN
		RAISE EXCEPTION 'A category with type % cannot be added to this item', NEW.category_item_type;
	END IF;
	RETURN NEW;
END
$func$ LANGUAGE plpgsql;

CREATE TRIGGER insert_categorization
BEFORE INSERT OR UPDATE ON categorization
FOR EACH ROW EXECUTE PROCEDURE trg_insert_categorization();

-- Example for testing the trigger
-- There exists a category named Arte e Design with category_type app
-- "786f5057-d2b3-4785-8b12-28f8db97c4a1" its an app
-- "aa268ae6-b8c8-49cc-aa90-f59a07822e0e" it is not an app
INSERT INTO categorization VALUES ('786f5057-d2b3-4785-8b12-28f8db97c4a1', 'Arte e Design', 'app');	-- OK
INSERT INTO categorization VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 'Arte e Design', 'app');	-- Error // A category with type app cannot be added to this item