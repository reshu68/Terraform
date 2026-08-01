resource "aws_alb" "myalb" {
  name               = "myalb"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.mysec.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]


}


resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_alb.myalb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.mytg.arn
  }
}

resource "aws_lb_target_group" "mytg" {
  name     = "mytg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.myvpc.id

}
