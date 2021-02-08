connection: "bigquery_bel_demo"

# include all the views
include: "/views/**/*.view"

datagroup: bel_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bel_demo_default_datagroup

explore: testtable {}
