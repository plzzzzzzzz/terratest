resource "aws_placement_group" "jskim_place" {
  name = "jskim-place"
  strategy = "cluster"
}