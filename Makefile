proxmox_storage_pool = 
PACKER = /usr/bin/packer
.PHONY: centos7 centos8 rocky8 rocky9 ubuntu2004 ubuntu2204

centos7:
	$(PACKER) init centos7/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl centos7/packer.pkr.hcl

centos8:
	$(PACKER) init centos8/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl centos8/packer.pkr.hcl

rocky8:
	$(PACKER) init rocky8/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl rocky8/packer.pkr.hcl

rocky9:
	$(PACKER) init rocky9/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl rocky9/packer.pkr.hcl

ubuntu2004:
	$(PACKER) init ubuntu2004/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl ubuntu2004/packer.pkr.hcl

ubuntu2204:
	$(PACKER) init ubuntu2204/packer.pkr.hcl
	$(PACKER) build -var-file variables.pkrvars.hcl ubuntu2204/packer.pkr.hcl
