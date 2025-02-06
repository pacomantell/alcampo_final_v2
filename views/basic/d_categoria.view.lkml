view: d_categoria {
  sql_table_name: dbo.d_categoria ;;

  dimension: desc_categoria {
    type: string
    label: "Desc"
    group_label: "Categoria"
    sql: ${TABLE}.desc_categoria ;;
  }
  dimension: id_categoria {
    type: number
    label: "ID"
    group_label: "Categoria"
    sql: ${TABLE}.id_categoria ;;
  }
  measure: count {
    type: count
  }
}