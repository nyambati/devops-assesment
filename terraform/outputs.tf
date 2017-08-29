output "lp-ip" {
  value = "${ aws_instance.lb.public_ip }"
}

output "master-db" {
  value = "${ aws_instance.master.public_ip }"
}

output "slaves-db" {
  value = "${ aws_instance.slaves.*.public_ip }"
}

output "apps" {
  value = "${ aws_instance.app.*.public_ip }"
}
