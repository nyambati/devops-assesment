resource "aws_instance" "lb" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.lb.id}"]

  tags {
    Name = "load-balancer"
  }
}
