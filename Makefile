plan:
	cd terraform && terraform plan
apply:
	cd terraform  && terraform apply
output:
	cd terraform  && terraform output
inventory: apply
	cd terraform && terraform output ansible_inventory > hosts.ini
destroy:
	cd terraform  && terraform destroy
