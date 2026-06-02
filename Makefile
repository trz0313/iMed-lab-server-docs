.PHONY: setup serve build clean

setup:
	bash scripts/setup_env.sh

serve:
	bash scripts/serve.sh

build:
	bash scripts/build.sh

clean:
	rm -rf site
