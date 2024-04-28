.PHONY: dev.update
dev.update:
	jq --arg tag "$$TAG" '.api.tag = $$tag' envs/dev.json > .dev.json && mv .dev.json envs/dev.json


.PHONY: test
test:
	@echo "Pretending running tests"
