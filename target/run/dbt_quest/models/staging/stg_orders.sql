
  create view `my_dbt_db`.`stg_orders__dbt_tmp`
  
  
  as
    with source as (
    select * from `my_dbt_db`.`raw_orders`
),
renamed as (
    select
        id as orders_id,
        customer as orders_customer,
        ordered_at as orders_ordered_at,
        store_id as orders_store_id
    from source
)
select * from renamed