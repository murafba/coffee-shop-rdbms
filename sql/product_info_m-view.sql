CREATE MATERIALIZED VIEW public."product_info_m-view"
AS
SELECT 	p.product_name,
		p.description,
		pc.category
FROM product AS p
JOIN product_type AS pt
		ON p.product_type_id = pt.product_type_id
JOIN product_category AS pc
		ON pt.product_category_id = pc.product_category_id
WITH NO DATA;

ALTER TABLE IF EXISTS public."product_info_m-view"
    OWNER TO postgres;

-- To refresh the materialized view when source data changes:
-- REFRESH MATERIALIZED VIEW "product_info_m-view";