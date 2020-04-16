# _terraform-module-aws-vpc-route-table-association_
_Terraform module for AWS Route Table association between a route table and a subnet or a route table and an internet gateway or virtual private gateway._


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>

---
<!--END STABILITY BANNER-->

## _General_

_This module can be used to deploy a_ **_VPC Routing Table_** _on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **_Terraform 0.12.23_** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- **_Route Table Association_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

- **_Sample Code:_**

```tf
module "route_table_association" {
  source = "git::https://github.com/nitinda/terraform-module-aws-route-table-association.git?ref=master"
  
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}

```

```tf
module "route_table_association" {
  source = "git::https://github.com/nitinda/terraform-module-aws-route-table-association.git?ref=master"
  
  gateway_id     = var.gateway_id  
  route_table_id = var.route_table_id
}

```


---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_subnet\_id_** | _The subnet ID to create an association_ | _string_ | **_Optional_** | **_[]_** |
| **_gateway\_id_** | _The gateway ID to create an association_ | _string_ | **_Optional_** | **_null_** |
| **_route\_table\_id_** | _The ID of the routing table to associate with_ | _string_ | **_Required_** |  |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
