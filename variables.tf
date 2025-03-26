variable "project_name"{

}

variable "environment"{

}

variable "sg_final_name"{

}

variable "sg_description"{
  
}


variable "vpc_id"{

}

#optional
variable "common_tags"{
    type = map
    default = {}
}

variable "sg_tags"{
    default = {}
}