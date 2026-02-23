.PHONY: validate lint validate-compose

DOCKER_VERSION := 27.5.1
YAMLLINT_VERSION := 0.31.3

validate: lint validate-compose

lint:
	docker run --rm -v $(PWD):/data pipelinecomponents/yamllint:$(YAMLLINT_VERSION) yamllint --strict .

validate-compose:
	@for f in $$(find . -name "*.yml" -o -name "*.yaml" | grep -v ".git" | grep -v "provisioning" | grep -v "prometheus/prometheus.yml"); do \
		echo "Validating: $$f"; \
		docker compose -f "$$f" config --quiet 2>&1 | grep -v -e "env file.*not found" || true; \
	done
