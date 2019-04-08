{{
  config({
    "materialized": "table",
  })
}}

select t.region_id as region_id, r.region_description as region_description, t.territory_id as territory_id, t.territory_description as territory_description
from public.region r
left join public.territories t using (region_id)
