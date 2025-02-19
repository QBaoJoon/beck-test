view: overture_maps {
  sql_table_name: `joon-sandbox.beck_test.overture_maps` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
  }
  dimension: longitude {
    type: string
    sql: ST_X(${TABLE}.geometry) ;;
  }
  dimension: latitude {
    type: string
    sql: ST_Y(${TABLE}.geometry) ;;
  }
  dimension: coordinate {
    type: location
    sql_latitude:ST_Y(${TABLE}.geometry) ;;
    sql_longitude:ST_X(${TABLE}.geometry) ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: primary {
    type: string
    sql: ${TABLE}.primary ;;
  }
  dimension: today_day_of_week {
    type: string
    sql: TO_CHAR(CURRENT_DATE(), 'Day') ;;
    description: "Shows the day of the week for today."
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
