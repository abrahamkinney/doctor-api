doctors = Doctor.create(
  [
    {
      rating: 5,
      name: "Bob",
      doctor_id: 1,
      created_at: (rand*20).days.ago
    },
    {
      rating: 1,
      name: "Ted",
      doctor_id: 2,
      created_at: (rand*20).days.ago
    },
    {
      rating: 3,
      name: "John",
      doctor_id: 3,
      created_at: (rand*20).days.ago
    },
    {
      rating: 4,
      name: "Bubba",
      doctor_id: 4,
      created_at: (rand*20).days.ago
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
