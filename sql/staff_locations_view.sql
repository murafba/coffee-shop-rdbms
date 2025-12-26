CREATE OR REPLACE VIEW public.staff_locations_view
 AS
SELECT 	staff.staff_id,
		staff.first_name,
		staff.last_name,
		staff.location
FROM staff
WHERE
"position" NOT IN ('CEO', 'CFO');

ALTER TABLE public.staff_locations_view
    OWNER TO postgres;