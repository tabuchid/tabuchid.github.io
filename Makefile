pr:
	if [ "$(BRANCH)" == "master" ]; then echo "In master, not PRing"; else git push origin "$(BRANCH)"; \
                open "https://github.com/percolate/ios/compare/$(BRANCH)?expand=1"; fi

push:
	if [ "$(BRANCH)" == "master" ]; then echo "In master, not pushing"; else git push -u origin $(BRANCH); fi

new_post:
	read -p "Enter post name:" post; \
		posts_dir=./_posts; \
		touch $$posts_dir/$$(date +%Y-%m-%d)-$$post.md
