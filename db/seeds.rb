ideas = Comment.create(
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
      doctor_id: 1,
      author_id: 1,
      created_at: (rand*10).days.ago
    },
    {
      rating: 3,
      comment_body: "Took care of me",
      doctor_id: 1,
      author_id: 1,
      created_at: (rand*10).days.ago
    },
    {
      rating: 4,
      comment_body: "Yay",
      doctor_id: 1,
      author_id: 1,
      created_at: (rand*10).days.ago
    }
  ])
