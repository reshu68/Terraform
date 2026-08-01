resource "aws_autoscaling_group" "myasg" {
  name             = "myasg"
  min_size         = 1
  max_size         = 2
  desired_capacity = 1

  vpc_zone_identifier = [
    aws_subnet.subnet1.id,
    aws_subnet.subnet2.id
  ]

  target_group_arns = [
    aws_lb_target_group.mytg.arn
  ]

  launch_template {
    id      = aws_launch_template.mylt.id
    version = "$Latest"
  }

}
