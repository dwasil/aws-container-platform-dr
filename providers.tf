provider "aws" {
  region = local.primary_region

  default_tags {
    tags = local.common_tags
  }
}

provider "aws" {
  alias  = "dr"
  region = local.dr_region

  default_tags {
    tags = merge(local.common_tags, {
      Role = "DR"
    })
  }
}