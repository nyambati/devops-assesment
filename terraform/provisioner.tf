data "template_file" "hosts" {
  template = "${file("templates/hosts.tpl")}"

  vars {
    load_balancer_ip = "${ aws_instance.lb.public_ip }"
    web1             = "${aws_instance.app.0.public_ip}"
    web2             = "${aws_instance.app.1.public_ip}"
    master_db_ip     = "${ aws_instance.master.public_ip }"
    slave1           = "${ aws_instance.slaves.0.public_ip }"
    slave2           = "${ aws_instance.slaves.1.public_ip }"
  }
}
