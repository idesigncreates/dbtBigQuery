
{{ config(materialized='table') }}

with source_data as (
SELECT * FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801` LIMIT 1000
)

select *
from source_data