#!/usr/bin/env bash

./terraform-provider-oci -command=export \
                         -compartment_id=ocid1.compartment.oc1..aaaaaaaa7gna34n3semxsi7ejf72jqpjnip6mqw2764hegwp7y2sl5rctdqa \
                         -output_path=tf-export \
                         -services=bds \
                         -generate_state
