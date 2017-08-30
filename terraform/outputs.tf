output "lp-ip" {
  value = "${ aws_instance.lb.public_ip }"
}

output "master-db" {
  value = "${ aws_instance.master.public_ip }"
}

output "slaves-db-1" {
  value = "${ aws_instance.slaves.0.public_ip }"
}

output "slaves-db-2" {
  value = "${ aws_instance.slaves.1.public_ip }"
}

output "app-1" {
  value = "${ aws_instance.app.0.public_ip }"
}

output "app-2" {
  value = "${ aws_instance.app.1.public_ip }"
}

output "ansible_inventory" {
  value = "${data.template_file.hosts.rendered}"
}
