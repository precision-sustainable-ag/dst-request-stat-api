create or replace function is_datetime(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	stamp TIMESTAMP;
-- variable declaration
begin
	stamp = val::TIMESTAMP;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;

create or replace function is_integer(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	num INT;
-- variable declaration
begin
	num = val::INT;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;

create or replace function is_float(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	num FLOAT;
-- variable declaration
begin
	num = val::FLOAT;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;
