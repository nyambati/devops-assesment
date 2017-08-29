resource "aws_instance" "lb" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "load-balancer"
  }
}
