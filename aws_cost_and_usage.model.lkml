connection: "athena"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: aws_cost_and_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_cost_and_usage_default_datagroup

explore: cloudtrail_logs {}
