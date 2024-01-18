view: native_drived_table {

    derived_table: {
      explore_source: car_data {
        column: car_name {}
        column: model {}
        column: make {}
        column: variant {}
        column: rto {}
        column: fuel_type {}
        column: kms_run {}
        column: body_type {}
        column: car_availability {}
        column: warranty_avail {}
        column: car_rating {}
        column: fitness_certificate {}
        column: original_price {}
        column: sale_price {}
        column: average_original_price {}
      }
    }
    dimension: car_name {
      description: ""
    }
    dimension: model {
      description: ""
    }
    dimension: make {
      description: ""
    }
    dimension: variant {
      description: ""
    }
    dimension: rto {
      description: ""
    }
    dimension: fuel_type {
      description: ""
    }
    dimension: kms_run {
      description: ""
      type: number
    }
    dimension: body_type {
      description: ""
    }
    dimension: car_availability {
      description: ""
    }
    dimension: warranty_avail {
      label: "Car Data Warranty Avail (Yes / No)"
      description: ""
      type: yesno
    }
    dimension: car_rating {
      description: ""
    }
    dimension: fitness_certificate {
      label: "Car Data Fitness Certificate (Yes / No)"
      description: ""
      type: yesno
    }
    dimension: original_price {
      description: ""
      type: number
    }
    dimension: sale_price {
      description: ""
      type: number
    }
    dimension: average_original_price {
      description: ""
      type: number
    }
  }
