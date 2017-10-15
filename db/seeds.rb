doctors = Doctor.create(
  [
    {
      doctor_id: 1,
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.176538,
      lng: -118.355979
    },
      doctor_id: 2,
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.170112,
      lng: -118.341288
    },
    {
      doctor_id: 3,
      name: "Ted",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.175169,
      lng: -118.348842
    },
    {
      doctor_id: 4,
      name: "John",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.173394,
      lng: -118.35485
    },
    {
      doctor_id: 5,
      name: "Bubba",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.178594,
      lng: -118.338588
    },
    {
      doctor_id: 6,
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.165829,
      lng: -118.35267
    },
    {
      doctor_id: 7,
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 34.183655,
      lng: -118.323329
    },
    {
      doctor_id: 8,
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 34.172288,
      lng: -118.353138
    },
    {
      doctor_id: 9,
      name: "Bubba",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 34.175998,
      lng: -118.349276
    },
    {
      doctor_id: 10,
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 34.172838,
      lng: -118.360326
    },
    {
      doctor_id: 11,
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 34.175626,
      lng: -118.364489
    },
    {
      doctor_id: 12,
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 33.983846,
      lng: -118.291855
    },
    {
      doctor_id: 13,
      name: "Bubba",
      address: 4,
      created_at: (rand*20).days.ago,
      lat: 33.974949,
      lng: -118.245850
    },
    {
      doctor_id: 14,
      name: "Bob",
      address: 5,
      created_at: (rand*20).days.ago,
      lat: 33.964983,
      lng: -118.185425
    },
    {
      doctor_id: 15,
      name: "Ted",
      address: 1,
      created_at: (rand*20).days.ago,
      lat: 33.960356,
      lng: -118.160105
    },
    {
      doctor_id: 16,
      name: "John",
      address: 3,
      created_at: (rand*20).days.ago,
      lat: 34.194038,
      lng: -118.135986
    }
  ])


  comments = Specialty.create(
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


comments = Comment.create(
  [
    {
      rating: 5,
      comment_body: "Liked him",
      doctor_id: 1,
      author_id: 1,
      created_at: (rand*10).days.ago
    },
    {
      rating: 1,
      comment_body: "Didn't like him",
      doctor_id: 2,
      author_id: 3,
      created_at: (rand*10).days.ago
    },
    {
      rating: 3,
      comment_body: "Took care of me",
      doctor_id: 3,
      author_id: 1,
      created_at: (rand*10).days.ago
    },
    {
      rating: 4,
      comment_body: "Yay",
      doctor_id: 4,
      author_id: 1,
      created_at: (rand*10).days.ago
    }
  ])
