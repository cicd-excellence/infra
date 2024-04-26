# TODO: add synth, so we know there's a change to prod
.PHONY: test.config
test.config:
	echo "TODO"

.PHONY: dev.update
dev.update:
	jq --arg tag "registry.example.com/api:$$TAG" '.api = $$tag' envs/dev.json > .dev.json && mv .dev.json envs/dev.json

