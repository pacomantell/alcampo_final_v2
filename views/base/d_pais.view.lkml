view: d_pais {
  sql_table_name: dbo.d_pais ;;

  dimension: desc_pais {
    type: string
    label: "Desc"
    group_label: "País"
    sql: ${TABLE}.desc_pais ;;
  }
  dimension: id_pais {
    type: number
    label: "ID"
    group_label: "País"
    sql: ${TABLE}.id_pais ;;
  }
  measure: count {
    type: count
  }
}