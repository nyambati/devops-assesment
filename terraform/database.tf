resource "aws_instance" "master" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.key.key_name}"

  tags {
    Name = "master-database"
  }
}

resource "aws_instance" "slaves" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.key.key_name}"
  count         = 2

  tags {
    Name = "slave-database-${count.index + 1}"
  }
}
