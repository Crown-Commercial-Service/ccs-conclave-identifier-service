Organisation.destroy_all
Organisation.reset_pk_sequence
Organisation.create!([{
    PPON_ID: "AA1111AA",
}])

p "Created #{Organisation.count} Organisations"