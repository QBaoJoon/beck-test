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
    sql:  CASE
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 1 THEN 'Sunday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 2 THEN 'Monday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 3 THEN 'Tuesday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 4 THEN 'Wednesday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 5 THEN 'Thursday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 6 THEN 'Friday'
            WHEN EXTRACT(DAYOFWEEK FROM CURRENT_DATE) = 7 THEN 'Saturday'
            ELSE 'Unknown'
          END;;
    description: "Shows the day of the week for today."
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
