connection: "ds_snowflake"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: f_depositor_tranche_balance_daily {
  label: "Depositor Trance Balance Daily"
  join: d_calendar_date {
    type: left_outer
    relationship: many_to_one
    sql_on: ${d_calendar_date.dates_date} = ${f_depositor_tranche_balance_daily.wh_created_date} ;;
  }
}
