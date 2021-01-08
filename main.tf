data "databricks_node_type" "smallest" {
  local_disk = true
}

resource "databricks_cluster" "shared_autoscaling" {
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  node_type_id            = data.databricks_node_type.smallest.id
  autotermination_minutes = var.autotermination_minutes

  autoscale {
    min_workers = 1
    max_workers = 4
  }
}