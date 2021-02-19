puts 'Creating restaurants...'
Restaurant.create!({
  name: "Dishoom",
  address: " 7 Boundary St, Shoreditch, London E2 7JE"
})
Restaurant.create!({
  name: "Hoppers",
  address: "77 Wigmore St, Marylebone, London W1U 1QE"
})
puts 'Finished!'
