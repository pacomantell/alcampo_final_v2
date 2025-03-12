view: d_fecha {
  sql_table_name: dbo.d_fecha ;;

  dimension: anyo {
    type: number
    sql: ${TABLE}.anyo ;;
  }
  dimension: anyomes {
    type: number
    sql: ${TABLE}.anyomes ;;
  }
  dimension: desc_mes {
    type: string
    sql: ${TABLE}.desc_mes ;;
  }
  dimension: dia {
    type: number
    sql: ${TABLE}.dia ;;
  }
  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_fecha {
    type: number
    sql: ${TABLE}.id_fecha ;;
  }
  dimension: mes {
    type: number
    sql: ${TABLE}.mes ;;
  }
  measure: count {
    type: count
  }
}