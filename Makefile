.PHONY: post

# Make new markdown file for a new post.
post:
	@read -p "Post name (single word, lowercase, no file extension): " name; \
	mkdir posts/$$name; \
	cp -i meta/template.md posts/$$name/post.md; \
	vi posts/$$name/post.md
