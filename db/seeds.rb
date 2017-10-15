doctors = Doctor.create(
  [
    {
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.176538,
      lng: -118.355979
    },
    {
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.170112,
      lng: -118.341288
    },
    {
      name: "Ted",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.175169,
      lng: -118.348842
    },
    {
      name: "John",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.173394,
      lng: -118.35485
    },
    {
      name: "Bubba",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.178594,
      lng: -118.338588
    },
    {
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.165829,
      lng: -118.35267
    },
    {
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 34.183655,
      lng: -118.323329
    },
    {
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 34.172288,
      lng: -118.353138
    },
    {
      name: "Bubba",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.175998,
      lng: -118.349276
    },
    {
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.172838,
      lng: -118.360326
    },
    {
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 34.175626,
      lng: -118.364489
    },
    {
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 33.983846,
      lng: -118.291855
    },
    {
      name: "Bubba",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 33.974949,
      lng: -118.245850
    },
    {
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 33.964983,
      lng: -118.185425
    },
    {
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 33.960356,
      lng: -118.160105
    },
    {
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 34.194038,
      lng: -118.135986
    }
  ])


  specialties = Specialty.create(
    [
      {
        name: "Dermatology",
      },
      {
        name: "Pediatrics",
      },
      {
        name: "General Care",
      },
      {
        name: "Vascular",
      },
      {
        name: "Surgical Oncology",
      },
      {
        name: "Trauma",
      },
      {
        name: "Radiology",
      },
      {
        name: "Neurosurgery",
      },
      {
        name: "Psychiatry",
      },
      {
        name: "Podiatry",
      }
    ])


    DoctorSpecialty.create(doctor_id: 1, specialty_id:1)


# Doctor.each do |c|
#   Comment.create(
#     rating: (rand*5),
#     comment_body: "Comment",
#     doctor_id: (rand*16),
#     author_id: (rand*50),
#     created_at: (rand*10).days.ago
#   )
# end

60.times do
  Comment.create!(
    rating: (rand*5),
    comment_body: "Comment",
    doctor_id: (rand*16),
    author_id: (rand*50),
    created_at: (rand*10).days.ago
  )
end


#
# comments = Comment.create(
#   [
#     {
#       rating: 5,
#       comment_body: "Liked him",
#       doctor_id: 1,
#       author_id: 1,
#       created_at: (rand*10).days.ago
#     },
#     {
#       rating: 1,
#       comment_body: "Didn't like him",
#       doctor_id: 2,
#       author_id: 3,
#       created_at: (rand*10).days.ago
#     },
#     {
#       rating: 3,
#       comment_body: "Took care of me",
#       doctor_id: 3,
#       author_id: 1,
#       created_at: (rand*10).days.ago
#     },
#     {
#       rating: 4,
#       comment_body: "Yay",
#       doctor_id: 4,
#       author_id: 1,
#       created_at: (rand*10).days.ago
#     }
#   ])
