p1, p2, p3 = Post.create([
			{title: 'A fantastically helpful website!', link: 'http://google.com', upvotes: 10},
			{title: 'For time wasting and general internet nonsense', link: 'http://reddit.com', upvotes: 17},
			{title: 'From a time before. . .', link: 'http://aol.com'}
		])

Comment.create([
	{body: "Really useful!", post_id: p1.id},
	{body: "Do a search . . . for free pizza.", post_id: p1.id, upvotes: 3},
	{body: "Wow, can't get enough!", post_id: p2.id, upvotes: 7},
	{body: "Best thing since Al Gore invented the internet", post_id: p2.id, upvotes: 20},
	{body: "MOAR", post_id: p2.id, upvotes: 11},
	{body: "So many internet", post_id: p2.id},
	{body: "r/mildlyinteresting", post_id: p2.id, upvotes: 5},
	{body: "How did people live like this?", post_id: p3.id}
])