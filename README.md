# terraform-aws-vpc

This Terraform configuration uses the [AWS VPC Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) to provision a VPC in [AWS](https://aws.amazon.com/).

## Variables to Set

Set the following Terraform variables in your workspace:

* `default_tags`

```
default_tags = { environment = "demo" owner = "me@hashi.io" build_with_terraform = "true" }
```

* `owner`

```
owner = "me"
```

* `allowed_inbound_ports`
```
["22","9001"]
```
* `allowed_inbound_ips`
```
["xxx.xxx.xxx.xxx/32","yyy.yyy.yyy.yyy/32"]
```
* `region`
```
us-east-1
```
* `prefix`
```
my_aws_foundation
```



Also set AWS credentials as environment variables, either in your workspace or in the environment where your Terraform Agent will execute the Terraform run.

For example:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`

---
