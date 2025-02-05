
include: "/config/connection_config.lkml"
# include all the views
include: "/config/includes.lkml"

datagroup: poc_alc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_alc_default_datagroup