.PHONY: post

# Make new markdown file for a new post.
post:
	@read -p "Post name (single word, lowercase, no file extension): " name; \
	mkdir raw_posts/$$name; \
	cp -i meta/template.md raw_posts/$$name/post.md; \
	vi raw_posts/$$name/post.md

# Changes to raw_posts don't show up in staging area because it's gitignored.
commit:
	git commit -m "empty recommit" --allow-empty
