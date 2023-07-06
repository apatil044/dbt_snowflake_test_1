
{{ config(materialized='table') }}
with test_table1 as(
select * from COMMEX_DB.DIGITAL_SHELF_DBT.TBL_KENVUE_CRITEO_AD__DAYREPORT_PRODUCT where retailer_id >= 500
union select * from COMMEX_DB.DIGITAL_SHELF_DBT.TBL_KENVUE_CRITEO_AD__DAYREPORT_ITEM
order by retailer_id
)
select * from test_table1