.PHONY: test switch umount-nas

HOST := limit-nixos
FLAKE := .#$(HOST)
NAS_MOUNTS := /mnt/nas-misc /mnt/nas-ai /mnt/nas-editing

umount-nas:
	@for m in $(NAS_MOUNTS); do sudo umount -l $$m 2>/dev/null || true; done

test: umount-nas
	sudo nixos-rebuild test --flake $(FLAKE)

switch: umount-nas
	sudo nixos-rebuild switch --flake $(FLAKE)
