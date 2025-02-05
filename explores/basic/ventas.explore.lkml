include: "/views/**/*.view.lkml"

explore: Ventas {
  from: h_ventas
  join: fecha {
    from: d_fecha
    type: inner
    relationship: many_to_one
    sql_on: ${Ventas.id_fecha}=${fecha.id_fecha} ;;
  }
  join: Categoria {
    from: d_categoria
    type: inner
    relationship: many_to_one
    sql_on: ${Ventas.id_categoria}=${Categoria.id_categoria} ;;
  }
  join: Pais {
    from: d_pais
    type: inner
    relationship: many_to_one
    sql_on: ${Ventas.id_pais}=${Pais.id_pais} ;;
  }
  join: Tarjeta {
    from: d_tipo_tarjeta
    type: inner
    relationship: many_to_one
    sql_on: ${Ventas.id_tipo_tarjeta}=${Tarjeta.id_tipo_tarjeta} ;;
  }
}