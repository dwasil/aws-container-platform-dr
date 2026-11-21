locals {
  # Explicitly pinned regions for modules and providers
  primary_region = var.primary_region
  dr_region      = var.dr_region

  # Short codes for readable resource names and tags
  region_short = {
    "us-east-1" = "use1"
    "us-west-2" = "usw2"
  }

  primary_region_short = local.region_short[local.primary_region]
  dr_region_short      = local.region_short[local.dr_region]

  name_prefix = "${var.project_name}-${var.environment}-${local.primary_region_short}"

  common_tags = {
    Project       = var.project_name
    Environment   = var.environment
    PrimaryRegion = local.primary_region
    DRRegion      = local.dr_region
    ManagedBy     = "Terraform"
  }
}