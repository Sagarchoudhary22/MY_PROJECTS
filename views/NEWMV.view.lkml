view: newmv {
    derived_table: {
      materialized_view: yes
      explore_source: car_data {
        column: source {}
        column: make {}
        column: kms_run {}
      }
    }
    dimension: source {}
    dimension: make {}
    dimension: kms_run {
      type: string
    }
  }
