## InfraCost Demo

Infracost enables a shift-left approach for cloud costs by providing cost estimates for Terraform before deployment. Additionally, it can check for FinOps best practices in accordance with the Well-Architected Frameworks of cloud vendors, and your company's required tag keys/values. This not only saves your team money but also streamlines discussions about costs within the engineering workflow rather than it being a post-deployment consideration.

## Cost form CLI
```bash
$ infracost breakdown --path .
Evaluating Terraform directory at .
  ✔ Downloading Terraform modules 
  ✔ Evaluating Terraform directory 
  ✔ Retrieving cloud prices to calculate costs 

Project: enekui/infracost

 Name                                                                                                                    Monthly Qty  Unit                    Monthly Cost 
                                                                                                                                                                           
 module.terraform-seqera-module.module.access_logs_s3_bucket.aws_s3_bucket.this[0]                                                                                         
 └─ Standard                                                                                                                                                               
    ├─ Storage                                                                                                     Monthly cost depends on usage: $0.023 per GB            
    ├─ PUT, COPY, POST, LIST requests                                                                              Monthly cost depends on usage: $0.005 per 1k requests   
    ├─ GET, SELECT, and all other requests                                                                         Monthly cost depends on usage: $0.0004 per 1k requests  
    ├─ Select data scanned                                                                                         Monthly cost depends on usage: $0.002 per GB            
    └─ Select data returned                                                                                        Monthly cost depends on usage: $0.0007 per GB           
                                                                                                                                                                           
 module.terraform-seqera-module.module.db[0].module.db_instance.aws_db_instance.this[0]                                                                                    
 ├─ Database instance (on-demand, Single-AZ, db.r5.xlarge)                                                                       730  hours                        $350.40 
 └─ Storage (general purpose SSD, gp2)                                                                                            10  GB                             $1.15 
                                                                                                                                                                           
 module.terraform-seqera-module.module.eks.aws_cloudwatch_log_group.this[0]                                                                                                
 ├─ Data ingested                                                                                                  Monthly cost depends on usage: $0.50 per GB             
 ├─ Archival Storage                                                                                               Monthly cost depends on usage: $0.03 per GB             
 └─ Insights queries data scanned                                                                                  Monthly cost depends on usage: $0.005 per GB            
                                                                                                                                                                           
 module.terraform-seqera-module.module.eks.aws_eks_cluster.this[0]                                                                                                         
 └─ EKS cluster                                                                                                                  730  hours                         $73.00 
                                                                                                                                                                           
 module.terraform-seqera-module.module.eks.module.eks_managed_node_group["seqera"].aws_eks_node_group.this[0]                                                              
 └─ module.terraform-seqera-module.module.eks.module.eks_managed_node_group["seqera"].aws_launch_template.this[0]                                                          
    ├─ Instance usage (Linux/UNIX, on-demand, m5a.2xlarge)                                                                     1,460  hours                        $502.24 
    └─ EC2 detailed monitoring                                                                                                    14  metrics                        $4.20 
                                                                                                                                                                           
 module.terraform-seqera-module.module.eks.module.kms.aws_kms_key.this[0]                                                                                                  
 ├─ Customer master key                                                                                                            1  months                         $1.00 
 ├─ Requests                                                                                                       Monthly cost depends on usage: $0.03 per 10k requests   
 ├─ ECC GenerateDataKeyPair requests                                                                               Monthly cost depends on usage: $0.10 per 10k requests   
 └─ RSA GenerateDataKeyPair requests                                                                               Monthly cost depends on usage: $0.10 per 10k requests   
                                                                                                                                                                           
 module.terraform-seqera-module.module.redis[0].aws_elasticache_replication_group.default[0]                                                                               
 ├─ ElastiCache (on-demand, cache.t2.small)                                                                                      730  hours                         $24.82 
 └─ Backup storage                                                                                                 Monthly cost depends on usage: $0.085 per GB            
                                                                                                                                                                           
 module.terraform-seqera-module.module.vpc.aws_nat_gateway.this[0]                                                                                                         
 ├─ NAT gateway                                                                                                                  730  hours                         $32.85 
 └─ Data processed                                                                                                 Monthly cost depends on usage: $0.045 per GB            
                                                                                                                                                                           
 module.terraform-seqera-module.module.vpc.aws_nat_gateway.this[1]                                                                                                         
 ├─ NAT gateway                                                                                                                  730  hours                         $32.85 
 └─ Data processed                                                                                                 Monthly cost depends on usage: $0.045 per GB            
                                                                                                                                                                           
 OVERALL TOTAL                                                                                                                                                   $1,022.51 
──────────────────────────────────
99 cloud resources were detected:
∙ 9 were estimated, 7 of which include usage-based costs, see https://infracost.io/usage-file
∙ 90 were free, rerun with --show-skipped to see details

┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━┓
┃ Project                                            ┃ Monthly cost ┃
┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━┫
┃ enekui/infracost                                   ┃ $1,023       ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━┛
```

## This is `Markdown` code embedded in the PR
[![infracost](https://img.shields.io/endpoint?url=https://dashboard.api.infracost.io/shields/json/2d6e5cc4-4a51-44eb-ba7f-911d1bb3d776/repos/f5b65317-c9cd-471e-aed7-971a0cf76c5c/branch/b034558f-ba0c-4253-b66c-ac23dc651630)](https://dashboard.infracost.io/org/adianny/repos/f5b65317-c9cd-471e-aed7-971a0cf76c5c?tab=settings)