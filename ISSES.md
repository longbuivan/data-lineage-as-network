# Issue at 14 Aug, 2022 - Blocking during destroying security group

## Problem

- Can not destroy default security group because dependency with ENI linked with vpc_endpoint
- Blocking security group during Network Interface
  ![Security Cannot be deleted](./asset/figure/SG-cannot-be-deleted.png)

## Resolution

- Manually delete ENI on console, then Subnets was deconstruction
- Delete ENI in EC2
  ![After Delete dependecy](./asset/figure/SG-after-manual-delete.png)
