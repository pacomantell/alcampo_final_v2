view: h_ventas {
  sql_table_name: dbo.h_ventas ;;

  dimension: id_categoria {
    type: number
    hidden: no
    sql: ${TABLE}.id_categoria ;;
  }
  dimension: id_fecha {
    type: number
    hidden: yes
    sql: ${TABLE}.id_fecha ;;
  }
  dimension: id_pais {
    type: number
    hidden: yes
    sql: ${TABLE}.id_pais ;;
  }
  dimension: id_tipo_tarjeta {
    type: number
    hidden: yes
    sql: ${TABLE}.id_tipo_tarjeta ;;
  }
  dimension: ventas {
    type: number
    hidden: yes
    sql: ${TABLE}.ventas ;;
  }
  measure: count {
    type: count
  }

  measure: sum_ventas {
    type: sum
    label: "Ventas Totales"
    sql: ${TABLE}.ventas ;;
  }

  measure: min_ventas {
    type: min
    label: "Minimo de Ventas"
    sql: ${TABLE}.ventas ;;
  }
}
