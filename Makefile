all: help ## Abre a documentação mostrando os comandos disponíveis

test_run: ## Roda o pytest
	uv run pytest -v

run_main: ## Roda arquivo main e salva logs
	nohup python -u  main.py  > reports/logs/main_$(shell date +%Y-%m-%d_%H-%M-%S).txt &

zip_files: ## Zipa os arquivos definidos no script
	cd scripts && ./zip_exclude.sh

help: ## Mostra os comandos. Você precisa sempre comentar o que a função faz, se não ela não será exibida nesse help
	@echo "\nEscolha um comando. As opções são:\n"
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[0;36m%-12s\033[m %s\n", $$1, $$2}'
	@echo ""
