resource "aws_instance" "master" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.database.id}"]

  tags {
    Name = "master-database"
  }
}

resource "aws_instance" "slaves" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.database.id}"]
  count                  = 2

  tags {
    Name = "slave-database-${count.index + 1}"
  }
}
