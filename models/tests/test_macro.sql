-- models/example_model.sql
with data as (
  select
    {{ square_number(4) }} as squared_number
)

select * from data
