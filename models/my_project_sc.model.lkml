# Define the database connection to be used for this model.
connection: "sagar2000"

# include all the views
include: "/views/**/*.view.lkml"


include: "/views/drived_table.view.lkml"
include: "/dash.dashboard.lookml"


include: "/dash.dashboard.lookml"




# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: my_project_sc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: my_project_sc_default_datagroup

datagroup: drived_table {
  sql_trigger: select max(id) from drived_table  ;;
  max_cache_age: "1 hour"
}

persist_with: drived_table

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "My Project Sc"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: car_data {
  # join: country_data {
  #   view_label: "SAGAR"
  #   type: left_outer
  #   relationship: many_to_many
  #   sql_on: ${car_data.city}=${country_data.count} ;;

 # }

  # view_name: car_data {
  #   derived_table: {
  #     materialized_view: yes
  #     explore_source: car_data {
  #       column: source {}
  #       column: make {}
  #       column: kms_run {}
  #     }
  #   }
  #   dimension: source {}
  #   dimension: make {}
  #   dimension: kms_run {
  #     type: string
  #   }
  # }

}
explore: native_drived_table {}
explore: sql_drived{}
explore: employee {}
explore: train_data {}
explore: house_rent_data {}
explore: indian_vehicle_details {}
explore: employee2 {}
explore: old_car_data {}
explore: country_data {}
explore: students {}
explore: drived_table {}
explore: proptech_ {}
