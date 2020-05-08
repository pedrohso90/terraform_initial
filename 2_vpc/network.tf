resource "aws_vpc" "main" {
  cidr_block      = "10.0.0.0/16"
  tags            = var.tags
}
resource "aws_subnet" "main" {
  vpc_id          = aws_vpc.main.id
  cidr_block      = "10.0.1.0/24"
  tags            = var.tags
}

resource "aws_internet_gateway" "gw" {
  vpc_id          = aws_vpc.main.id
  tags            = var.tags
}

resource "aws_route_table" "main" {
  vpc_id          = aws_vpc.main.id

  route {
    cidr_block    = "0.0.0.0/0"
    gateway_id    = aws_internet_gateway.gw.id
  }
  
  tags            = var.tags
}

resource "aws_main_route_table_association" "main" {
  vpc_id          = aws_vpc.main.id
  route_table_id  = aws_route_table.main.id
}
