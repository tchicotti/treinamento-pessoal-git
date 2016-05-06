# Atalhos úteis
Segue abaixo uma lista de comando úteis ao git

```
	#Status de forma simplificada
    git config --global alias.st "status -s"

	#Log de forma simplificado, pois por padrão é bem verboso
    git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

	#Adiciona todos os arquivos para a stage area
    git config --global alias.aa "add ."

	#Para saber o número de commits de cada um no projeto
    git config --global alias.who "shortlog -sn"

	#Para voltar de forma rápida para o estado do último commit
    git config --global alias.undo "reset --hard HEAD"

	#Transforma seu repositório em um servidor git
    git config --global alias.serve "\!git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git"
```

Essa lista foi baseado no site [1][Atalhos para o git - Loop Infinito]

[1][http://loopinfinito.com.br/2012/12/13/atalhos-do-git/]

