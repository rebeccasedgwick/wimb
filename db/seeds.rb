# Posts
Post.create!([
  { title: 'First post', text: 'This is the first' },
  { title: 'Second post', text: 'This is the second' }
])

Court.create!([
  {
    name: "1",
    attendants: [ Attendant.new(name: 'Joe Bloggs') ]
  },
  {
    name: "6",
    attendants: [ Attendant.new(name: 'Jane Smith') ]
  },
)
