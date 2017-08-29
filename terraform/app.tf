resource "aws_instance" "app" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.key.key_name}"
  count         = 2

  tags {
    Name = "app-${count.index + 1}"
  }
}
