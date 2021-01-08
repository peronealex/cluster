variable "cluster_name" {
    default = "Shared Autoscaling"
    description = "name of cluster"
}

variable "spark_version" {
    default = "6.6.x-scala2.11"
    description = "version in spark"
}

variable "autotermination_minutes" {
    default = "20"
    description = "termination in minutes"
}
