# OCI Big Data Service Terraform discovery

An example of Terraform discovery of the OCI Big Data Service resource.
It's a supporting repository accompanying the article
[Terraforming of OCI Big Data Service](//medium.com/@sw_samuraj/terraforming-of-oci-big-data-service-1e293328499).

## How to

### Provide necessary variables

Copy/rename the `env-var.example` file to `env-vars` and fill
your corresponding authentication values:

```
cp env-vars.example env-vars
```

Source the variables, so they are available for Terraform:

```
. env-vars
```

### Initialize Terraform

```
terraform init
```

This will download the _Terraform OCI Provider_.

### Create a soft link for the provider

```
ln -s .terraform/plugins/linux_amd64/terraform-provider-oci_v3.72.0_x4 terraform-provider-oci
```

### Discover BDS resources

Edit the `tf-export.sh` script, so that is contains your existing compartment. Run the script:

```
./tf-export.sh
```

### Examine the discovered resources

Once the discovery successfuly finishes, generated Terraform files are located
in the `tf-export` directory:

```
$ tree tf-export
tf-export
├── bds.tf
├── terraform.tfstate
├── terraform.tfstate.tmp.backup
└── vars.tf

0 directories, 4 files
```
