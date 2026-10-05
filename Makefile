.PHONY: test switch

HOST := limit-nixos
FLAKE := .#$(HOST)

test:
	sudo nixos-rebuild test --flake $(FLAKE)

switch:
	sudo nixos-rebuild switch --flake $(FLAKE)
