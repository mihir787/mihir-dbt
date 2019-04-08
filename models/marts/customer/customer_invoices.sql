{{
  config({
    "materialized": "table",
  })
}}

with
employees as (
  select * from {{ ref('employees') }}
),

region_territories as (
  select * from {{ ref('region_territories') }}
),

employee_territories as (
  select * from public.employee_territories
)

select c.customer_id as id, c.company_name as name, c.contact_name as contact_name, c.phone as phone, o.order_date as order_date, o.shipped_date as shipped_date, o.freight as freight_weight, o.employee_id as employee_id, employees.first_name as employee_first_name, employees.last_name as employee_last_name, region_territories.region_description as region_description, array_agg(region_territories.territory_description) as territory_description
from public.customers c
left join public.orders o using (customer_id)
left join employees on o.employee_id = employees.employee_id
left join employee_territories on employees.employee_id = employee_territories.employee_id
left join region_territories on employee_territories.territory_id = region_territories.territory_id
group by c.customer_id, c.company_name, c.contact_name, c.phone, o.order_date, o.shipped_date, o.freight, o.employee_id, employees.first_name, employees.last_name, region_territories.region_description
